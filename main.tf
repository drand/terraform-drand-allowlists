data "http" "allowlist_csv" {
  url = "https://allowlists.drand.sh/${var.env}/allowlist.csv"
  request_headers = {
    Authorization = "Basic ${base64encode(join(":", [var.username, var.password]))}"
  }
}
