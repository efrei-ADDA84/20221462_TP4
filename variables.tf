variable "location" {
  description = "location"
  type        = string
  default     = "france central"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "765266c6-9a23-4638-af32-dd1e32613047"
}

variable "resource_group" {
  description = "Azure resource group"
  type        = string
  default     = "ADDA84-CTP"
}

variable "network" {
  description = "Network"
  type        = string
  default     = "network-tp4"
}

variable "subnet" {
  description = "Subnet"
  type        = string
  default     = "internal"
}

variable "interface" {
  description = "network interface"
  type        = string
  default     = "my_network_interface"
}

variable "virtual_machine_name" {
  description = "Azure virtual machine name"
  type        = string
  default     = "devops-20221462"
}

variable "virtual_machine_size" {
  description = "virtual machine size"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "user" {
  description = "user administrateur virtual machine"
  type        = string
  default     = "devops"
}

variable "os" {
  description = "OS"
  type        = string
  default     = "16.04-LTS"
}