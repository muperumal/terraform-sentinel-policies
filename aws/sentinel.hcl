mock "tfconfig" {
  module {
    source = "./mocks/mock-tfconfig.sentinel"
  }
}

mock "tfconfig/v1" {
  module {
    source = "./mocks/mock-tfconfig.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "./mocks/mock-tfconfig-v2.sentinel"
  }
}

mock "tfplan" {
  module {
    source = "./mocks/mock-tfplan.sentinel"
  }
}

mock "tfplan/v1" {
  module {
    source = "./mocks/mock-tfplan.sentinel"
  }
}

mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-v2.sentinel"
  }
}

mock "tfstate" {
  module {
    source = "./mocks/mock-tfstate.sentinel"
  }
}

mock "tfstate/v1" {
  module {
    source = "./mocks/mock-tfstate.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "./mocks/mock-tfstate-v2.sentinel"
  }
}

mock "tfrun" {
  module {
    source = "./mocks/mock-tfrun.sentinel"
  }
} 


module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "enforce-mandatory-tags" {
  source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}

policy "require-private-acl-and-kms-for-s3-buckets" {
  source = "./require-private-acl-and-kms-for-s3-buckets.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-s3-bucket-policies" {
  source = "./restrict-s3-bucket-policies.sentinel"
  enforcement_level = "advisory"
}

policy "validate-providers-from-desired-regions" {
  source = "./validate-providers-from-desired-regions.sentinel"
  enforcement_level = "advisory"
}
