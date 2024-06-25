param "organization" {
  value = "hc-emea-sentinel-demo"
}

param "token" {
  value = ""
}

module "tfconfig-functions" {
  source = "git::https://github.com/hashicorp/terraform-sentinel-policies.git//common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-pass-no-pmr-modules.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
