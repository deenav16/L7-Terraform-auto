# terraform/variables.tf

# BLOCK: Azure Authentication Variables
variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

# BLOCK: Resource Group Variables
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "don-prod-vms-rg"
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

# BLOCK: VM Configuration Variables
variable "vm_count" {
  description = "Number of identical VMs to deploy"
  type        = number
  default     = 3
}

variable "vm_size" {
  description = "Size of the virtual machines"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the virtual machines"
  type        = string
  default     = "adminuser"
}

# BLOCK: Network Configuration Variables
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "prod-vnet"
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
  default     = "prod-subnet"
}

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
  default     = "prod-nsg"
}

variable "public_ip_prefix" {
  description = "Prefix for public IP names"
  type        = string
  default     = "pip"
}

# BLOCK: SSH Configuration
variable "ssh_public_key" {
  description = "SSH public key for VM access"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
