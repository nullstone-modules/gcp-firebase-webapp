resource "google_firebase_web_app" "this" {
  provider        = google-beta
  display_name    = local.resource_name
  deletion_policy = "DELETE"
}
