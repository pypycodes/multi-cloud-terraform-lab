resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

locals {
  base_name = "${var.prefix}-${random_string.suffix.result}"
}

resource "google_project_service" "apis" {
  for_each = toset([
    "compute.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "secretmanager.googleapis.com",
    "storage.googleapis.com"
  ])

  project            = var.project_id
  service            = each.value
  disable_on_destroy = false
}

resource "google_compute_network" "this" {
  name                    = "vpc-${local.base_name}"
  auto_create_subnetworks = false
  depends_on              = [google_project_service.apis]
}

resource "google_compute_subnetwork" "this" {
  name          = "subnet-${local.base_name}"
  ip_cidr_range = "10.30.1.0/24"
  region        = var.region
  network       = google_compute_network.this.id
  private_ip_google_access = true
}

resource "google_compute_firewall" "ssh" {
  name    = "allow-ssh-${local.base_name}"
  network = google_compute_network.this.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = [var.allowed_ssh_cidr]
  target_tags   = ["ssh"]
}

resource "google_service_account" "vm" {
  account_id   = "vm-${random_string.suffix.result}"
  display_name = "Terraform lab VM service account"
  depends_on   = [google_project_service.apis]
}

resource "google_compute_instance" "this" {
  name         = "vm-${local.base_name}"
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["ssh"]
  labels       = var.labels

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 10
      type  = "pd-balanced"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.this.id
    access_config {}
  }

  metadata = {
    ssh-keys = "${var.ssh_username}:${file(pathexpand(var.ssh_public_key_path))}"
  }

  service_account {
    email  = google_service_account.vm.email
    scopes = ["cloud-platform"]
  }

  shielded_instance_config {
    enable_secure_boot          = true
    enable_vtpm                 = true
    enable_integrity_monitoring = true
  }

  depends_on = [google_project_service.apis]
}

resource "google_storage_bucket" "this" {
  name                        = "${local.base_name}-lab"
  location                    = var.region
  uniform_bucket_level_access = true
  force_destroy               = true
  labels                      = var.labels

  public_access_prevention = "enforced"

  versioning {
    enabled = true
  }

  depends_on = [google_project_service.apis]
}

resource "google_secret_manager_secret" "this" {
  secret_id = "lab-secret-${random_string.suffix.result}"
  labels    = var.labels

  replication {
    auto {}
  }

  depends_on = [google_project_service.apis]
}
