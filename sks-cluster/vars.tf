variable "exo_secret" {
  type      = string
  sensitive = true
  default = "your_secret"
}

variable "exo_key" {
  type      = string
  sensitive = true
}