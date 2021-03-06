data "http" "allowlist_csv" {
  url = "https://allowlists.drand.sh/${var.env}/allowlist.json"
  request_headers = {
    Authorization = "Basic ${base64encode(join(":", [var.username, var.password]))}"
  }
}

data "http" "allowlist_ip6_csv" {
  url = "https://allowlists.drand.sh/${var.env}/allowlist_ip6.json"
  request_headers = {
    Authorization = "Basic ${base64encode(join(":", [var.username, var.password]))}"
  }
}
