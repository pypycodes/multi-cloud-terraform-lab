output "vm_external_ip" { value = google_compute_instance.this.network_interface[0].access_config[0].nat_ip }
output "ssh_command" { value = "ssh ${var.ssh_username}@${google_compute_instance.this.network_interface[0].access_config[0].nat_ip}" }
output "bucket_name" { value = google_storage_bucket.this.name }
output "service_account_email" { value = google_service_account.vm.email }
output "secret_id" { value = google_secret_manager_secret.this.secret_id }
