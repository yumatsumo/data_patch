resource "google_storage_bucket" "data_patch_example" {
  name          = "data_patch_example"
  force_destroy = "true"
  location      = "asia-northeast1"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_acl" "remote-acl" {
  bucket         = "${google_storage_bucket.data_patch_example.name}"
  predefined_acl = "private"
}
