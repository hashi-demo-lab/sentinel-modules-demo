param "organization" {ß
}

param "token" {
}

module "tfconfig-functions" {
  source = "git::https://github.com/hashicorp/terraform-sentinel-policies.git//common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-fail-invalid-version-constraint.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
