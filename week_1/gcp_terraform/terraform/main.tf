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
  credentials = file(var.creds)
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "ny-taxi" {
  name          = "ny-taxi-bucket-de-zoomcamp-2024-412509"
  location      = var.region
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

resource "google_bigquery_dataset" "ny_taxi_data" {
  dataset_id    = "ny_taxi_data"
  friendly_name = "ny_taxi_data_friendly_name"
  description   = "This is a test description"
  location      = var.region
}
