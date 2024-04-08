provider "google" {
  project     = var.project_id
  region      = var.region
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.location

  versioning {
    enabled = true
  }

  labels = var.labels
}

resource "google_storage_bucket_iam_member" "public_access" {
    bucket = google_storage_bucket.bucket.name
    role   = "roles/storage.objectViewer"
    member = "allUsers"
}