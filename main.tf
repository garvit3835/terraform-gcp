provider "google" {
  project     = "analog-foundry-418510"
  region      = "us-central1"
  credentials = file("C:/Users/Garvit/Downloads/analog-foundry-418510-6c099625a9d3.json")
}

  # provider "google" {
  #   project     = "your-gcp-project-id"
  #   region      = "us-central1"
  #   credentials = file("path/to/your/service-account-file.json")
  # }

  # resource "google_storage_bucket" "my_bucket" {
  # name     = "your-bucket-name"
  # location = "your-bucket-location"
  # }


resource "google_storage_bucket" "my_bucket" {
  name     = "my-infrasity-bucket-1189"
  location = "US"
}

output "bucket_name" {
  value = google_storage_bucket.my_bucket.name
}
