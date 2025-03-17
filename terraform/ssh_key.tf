# ПУБЛИЧНЫЙ КЛЮЧ
resource "serverspace_ssh" "terraform" {
  name = "terraform-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBgPA0NTFEb54dBQz0sERV8mkbzSgpRpKfpJ1lh2tGezdcR/Pp+p+UWwcRBzxq4CQ5hH1dKcU7/eIBwRM2LGWM1wJJlU43O1ozJ7jgFYCb80RJ9A5jAJYtK8O25eB6q2hfb758O6GWNyEgb+Oi1ztoCv2/iGx8SDEilYD3cGdANHzUjKgsD5vTbbsPMGAt7hnQYyidTXRUx4mx+dXZa2XbdLJvRK2V94n8qYxsdvQFZWovqzREGDk9/Gdg+itJTRIMWkmFAvLmAqMcQDDKEYRGbOop3Owr9pQ7jIuIKtnNtaFX8s6y+hvIzD4/3yYX6ZqpA/HrOkniSHDZEfuBjPj5wPOQX09EDjJsqCZNQ4pnqohCXoHuCIsv8PM/RnS1hCIXQGeYGI4UflrrSpKmyRJqHsN8JXEWXzDLJNY6m7sZj1UwQ6U/T7ByEEcxsUOMqesCLkpBRmf7wDJdD6SWxy2AT1gK6oS60L2uemYuuxcTrFCLGO6sMY3UYYa/TIjQbuc= andreyshabunov@MacBook-Pro-Andrej.local"
}

# ПРИВАТНЫЙ КЛЮЧ
variable "pvt_key" {
  type = string
  default = "~/.ssh/id_rsa"
}