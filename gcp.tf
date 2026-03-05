provider "google-beta" {}

resource "google_project_service" "apikeys" {
  service                    = "apikeys.googleapis.com"
  disable_dependent_services = false
  disable_on_destroy         = false
}
