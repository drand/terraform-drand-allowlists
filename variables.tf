variable "username" {
  type        = string
  description = "The username to access the allowlists site"
}

variable "password" {
  type        = string
  description = "The password to access the allowlists site"
}

variable "env" {
  type        = string
  description = "The drand environment to obtain the allowlist for (i.e. \"testnet\")"
}
