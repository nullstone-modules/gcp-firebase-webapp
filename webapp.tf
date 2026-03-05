resource "google_firebase_web_app" "this" {
  provider        = google-beta
  display_name    = local.resource_name
  api_key_id      = google_apikeys_key.web.uid
  deletion_policy = "DELETE"
}

resource "google_apikeys_key" "web" {
  provider     = google-beta
  name         = local.resource_name
  display_name = "API Key for Firebase Web App ${local.block_ref}"

  restrictions {
    browser_key_restrictions {
      allowed_referrers = ["*"]
    }
  }

  depends_on = [google_project_service.apikeys]
}
