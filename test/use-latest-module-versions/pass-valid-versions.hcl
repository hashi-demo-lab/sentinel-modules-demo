param "organization" {
  value = "hc-emea-sentinel-demo"
}

param "token" {
  value = ""
}

module "tfconfig-functions" {
  source = "git::https://github.com/hashicorp/terraform-guides.git//governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
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
