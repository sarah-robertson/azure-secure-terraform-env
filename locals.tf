locals {
  key_vault_name = substr(
    replace(lower("${var.project_name}${var.environment}"), "-", ""),
    0,
    24
  )
}
