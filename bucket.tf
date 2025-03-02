# GCP Storage Bucket
resource "google_storage_bucket" "xyz-website" {
  name     = var.website_bucket
  location = "US"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

# Public Access to View Bucket Objects
resource "google_storage_bucket_iam_member" "public_access" {
  bucket = google_storage_bucket.xyz-website.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

# Upload File to Bucket - index.html
resource "google_storage_bucket_object" "home_page" {
  bucket = google_storage_bucket.xyz-website.name
  name   = "index.html"
  source = "./website/index.html"
}

#Upload FIle to Bucket - 404.html
resource "google_storage_bucket_object" "error_page" {
  bucket = google_storage_bucket.xyz-website.name
  name   = "404.html"
  source = "./website/404.html"
}