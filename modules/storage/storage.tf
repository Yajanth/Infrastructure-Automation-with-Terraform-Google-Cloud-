resource "google_storage_bucket" "storage-bucket" {
 name          = var.bucket
 location      = "US"
 force_destroy = true
 uniform_bucket_level_access = true
}