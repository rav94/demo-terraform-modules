variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "Name of the Cloud Storage bucket"
  type        = string
}

variable "location" {
  description = "Location of the bucket"
  type        = string
  default     = "US"
}

variable "versioning" {
  description = "Enable versioning"
  type        = bool
  default     = false
}

variable "labels" {
  description = "Labels for the Cloud Storage bucket"
  type        = map(string)
  default     = {}
}
