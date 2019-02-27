provider "google" {
  credentials = "${file("${var.gcloud_service_key}")}"
  project     = "assessment-demo-andela"
  region      = "europe-west2"
}
