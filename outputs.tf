output "postgresql_version" {
  sensitive  = false
  value      = var.postgresql_version
  depends_on = [
    helm_release.postgresql
  ]
}

output "username" {
  sensitive  = false
  value      = var.postgresql_username
  depends_on = [
    helm_release.postgresql
  ]
}

output "password" {
  sensitive  = true
  value      = var.postgresql_password
  depends_on = [
    helm_release.postgresql
  ]
}