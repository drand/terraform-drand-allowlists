output "cidrs" {
  description = "A list of CIDRs as specified in the allowlist"
  value       = split(",", chomp(data.http.allowlist_csv.body))
}
