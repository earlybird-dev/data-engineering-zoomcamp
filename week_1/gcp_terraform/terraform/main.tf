terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "de-zoomcamp-2024-412509"
  region  = "australia-southeast2"
}

resource "google_storage_bucket" "ny-taxi" {
  name          = "ny-taxi-bucket-de-zoomcamp-2024-412509"
  location      = "ASIA"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}