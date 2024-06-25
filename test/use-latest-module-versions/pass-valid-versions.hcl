param "organization" {
}

param "token" {
}

module "tfconfig-functions" {
  source = "git::https://github.com/hashicorp/terraform-sentinel-policies.git//common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-pass-valid-versions.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
