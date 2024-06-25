param "organization" {ß
}

param "token" {
}

module "tfconfig-functions" {
  source = "git::https://github.com/hashicorp/terraform-sentinel-policies.git//common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-fail-invalid-version-number.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
