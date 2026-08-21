variable "subscription_id" {
  description = "Azure subscription ID supplied by the lab."
  type        = string
}

variable "prefix" {
  description = "Short lowercase prefix used in resource names."
  type        = string
  default     = "pypycodes"
}

variable "location" {
  description = "Azure region permitted by the lab."
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Linux VM administrator username."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to an existing SSH public key."
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH. Replace with your public IP/32."
  type        = string
  default     = "0.0.0.0/0"
}

variable "vm_size" {
  description = "VM size available in the lab subscription."
  type        = string
  default     = "Standard_B1s"
}

variable "tags" {
  description = "Common resource tags."
  type        = map(string)
  default = {
    environment = "lab"
    owner       = "pypycodes"
    managed-by  = "terraform"
  }
}
