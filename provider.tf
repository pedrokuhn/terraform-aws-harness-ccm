terraform {
  required_providers {
    harness = {
      source  = "harness/harness"
      version = "~> 0.30.0"
    }
  }
}

provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = "YpUfe9mVQECwIhopss9sVw"
  platform_api_key = "sat.YpUfe9mVQECwIhopss9sVw.6622922718d1a0476837f097.GbVFu739deB2j42Eed98"
}
