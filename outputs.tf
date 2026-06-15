output "web_app_id" {
  value       = google_firebase_web_app.this.app_id
  description = "The globally unique, Firebase-assigned identifier of the App. This identifier should be treated as an opaque token, as the data format is not specified."
}

output "web_app_name" {
  value       = google_firebase_web_app.this.name
  description = "The fully qualified resource name of the App. Format: projects/{{project}}/webApps/{{appId}}"
}

output "api_key_id" {
  value       = google_apikeys_key.web.key_string
  description = "string ||| The Firebase Web API Key used to embed in client-side code that identify the project."
}
