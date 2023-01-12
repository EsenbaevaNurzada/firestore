resource "google_project_service" "resourcemanager" {
  project                    = var.project_id
  service                    = "cloudresourcemanager.googleapis.com"
  disable_dependent_services = true
}
resource "google_project_service" "firestore" {
  project                    = var.project_id
  service                    = "firestore.googleapis.com"
  disable_dependent_services = true
}

resource "google_project_service" "app_engine" {
  project = var.project_id
  service = "appengine.googleapis.com"
}
