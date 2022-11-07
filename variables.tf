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

variable "usecase" {
  type        = string
  description = "Use case for the Bastion host"
  nullable    = false
}

variable "environment" {
  type        = string
  description = "Environment you're deploying into"
  default     = "dev"
  nullable    = false
}

variable "resource_group_name" {
  type        = string
  description = "The resource group you wish to deploy the Bastion host in"
}

variable "vnet_name" {
  type    = string
  default = null
}

variable "subnet_name" {
  type    = string
  default = null
}

variable "vnet_resource_group" {
  type    = string
  default = null
}

variable "subnet_id" {
  type    = string
  default = null
}
