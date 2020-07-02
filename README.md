# terraform-drand-allowlists

This is a Terraform module to retrieve drand allowlists. It can be used by
members of the drand-networks to better automate their infrastructure by
easily fetching `drand.sh`-maintained allowlists with their credentials.

## Usage

To call the module you will need to provide your `allowlists.drand.sh`
username and password, as well as the network (`env`), for example `testnet`.

```terraform
module "allowlists" {
  source  = "drand/allowlists/drand"
  version = "0.0.2"
  username = "yourusername"
  password = "yourpassword"
  env = "yourenv"
}

# You can then use the module "cidrs" output somewhere else
resource "type" "name" {
  allowlist = module.allowlist.cidrs
}
```

## License

This software is dual-licensed under Apache 2.0 and MIT terms:

- Apache License, Version 2.0, ([LICENSE-APACHE](https://github.com/drand/drand/blob/master/LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENSE-MIT](https://github.com/drand/drand/blob/master/LICENSE-MIT) or http://opensource.org/licenses/MIT)
