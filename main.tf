# A Terraform module to create a subset of cloud components
# Copyright (C) 2022 Skaylink GmbH

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# For questions and contributions please contact info@iq3cloud.com

locals {
  name = "${var.usecase}-${var.environment}-"
}

resource "azurerm_public_ip" "bastion_ip" {
  name                = "${local.name}ip"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
  domain_name_label   = lower(replace(local.name, "/[[:^alnum:]]/", ""))
}

resource "azurerm_bastion_host" "bastion_host" {
  name                = "${local.name}bas"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name

  ip_configuration {
    name                 = "${local.name}cfg"
    public_ip_address_id = azurerm_public_ip.bastion_ip.id
    subnet_id            = var.subnet_id != null ? var.subnet_id : data.azurerm_subnet.bastion_snt[0].id
  }
}
