variable "project_id" {
  description = "GCP project ID supplied by the lab."
  type        = string
}

variable "prefix" {
  description = "Short lowercase prefix used in resource names."
  type        = string
  default     = "pypycodes"
}

variable "region" {
  description = "GCP region permitted by the lab."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone permitted by the lab."
  type        = string
  default     = "us-central1-a"
}

variable "ssh_username" {
  description = "Linux SSH username."
  type        = string
  default     = "clouduser"
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

variable "machine_type" {
  description = "Compute Engine machine type allowed by the lab."
  type        = string
  default     = "e2-micro"
}

variable "labels" {
  description = "Common labels."
  type        = map(string)
  default = {
    environment = "lab"
    owner       = "pypycodes"
    managed_by  = "terraform"
  }
}
