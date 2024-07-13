provider "google" {
  # credentials = jsondecode(var.google_credentials)
  project = "analog-foundry-418510"
  region  = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  count = 2
  name     = "my-infrasity-bucket-1189"
  location = "US"
}

output "bucket_name" {
  value = google_storage_bucket.my_bucket.name
}
