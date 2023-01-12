provider "google" {
  project     = var.project_id
}

resource "google_app_engine_application" "app" {
  project       = var.project_id
  location_id   = var.location_id
  database_type = var.database_type
  depends_on = [
    google_project_service.resourcemanager,
    google_project_service.app_engine,
    google_project_service.firestore
  ]
}

resource "google_firestore_document" "mydoc" {
  project     = var.project_id
  collection  = var.collection
  document_id = var.document_id
  fields      = var.fields
  depends_on = [
    google_app_engine_application.app
  ]
}
