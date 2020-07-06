output "cidrs" {
  description = "A list of IPv4 CIDRs as specified in the allowlist"
  value       = split(",", chomp(data.http.allowlist_csv.body))
}

output "cidrs6" {
  description = "A list of IPv6 CIDRs as specified in the allowlist"
  value       = split(",", chomp(data.http.allowlist_ip6_csv.body))
}
