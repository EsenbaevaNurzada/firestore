variable "location_id" {
  description = "(Required) The location to serve the app from."
}

variable "project_id" {
  description = "(Required) The project ID to create the application under."
}

variable "database_type" {
  description = "the type of the Cloud Firestore or Cloud Datastore database associated with this application. Can be CLOUD_FIRESTORE or CLOUD_DATASTORE_COMPATIBILITY for new instances."
}

variable "collection" {
  description = "(Required) The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages."
}

variable "document_id" {
  description = "(Required) The client-assigned document ID to use for this document during creation."
}

variable "fields" {
  description = " The document's fields formated as a json string."
}

