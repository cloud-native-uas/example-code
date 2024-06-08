terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
      version = "0.59.1"
    }
  }
  backend "s3" {
    bucket                      = "my-new-terraform-storage-bucket-adfdsds"
    region                      = "at-vie-2"
    key                         = "terraform.tfstate"
    endpoint                    = "https://sos-at-vie-2.exo.io"
    skip_credentials_validation = true
    skip_region_validation      = true
  }
}

provider "exoscale" {
  key    = var.exo_key
  secret = var.exo_secret
}
