output "web_app_id" {
  value       = google_firebase_web_app.this.app_id
  description = "The globally unique, Firebase-assigned identifier of the App. This identifier should be treated as an opaque token, as the data format is not specified."
}

output "web_app_name" {
  value       = google_firebase_web_app.this.name
  description = "The fully qualified resource name of the App. Format: projects/{{project}}/webApps/{{appId}}"
}

output "api_key_id" {
  value       = google_firebase_web_app.this.api_key_id
  description = "string ||| The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the Web App."
}
