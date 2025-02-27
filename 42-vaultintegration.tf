provider "vault" {
  address = "http://127.0.0.1:8200"
}

data "vault_generic_secret" "apppassword" {
  path = "secret/apppassword" 
}

output "vault_data" {
  value = data.vault_generic_secret.apppassword.data_json
  sensitive = true
}
