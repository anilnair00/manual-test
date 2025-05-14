terraform {  
    required_providers {  
        harness = {  
            source = "harness/harness"  
            version = "0.24.2"  
        }  
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~>3.0"
        }
    }  
    backend "azurerm" {
      resource_group_name  = "Testvm_group"
      storage_account_name = "testvmgroupb7e2"
      container_name       = "tfstate"
      key                  = "test.tfstate"
      use_oidc         = true
      use_azuread_auth = true
  }
}

provider "harness" {  
    endpoint   = "https://app.harness.io/gateway"  
    account_id = "g-vh4hT8T4KUr9_mnKTaJg"  
    # platform_api_key    = "pat.g-vh4hT8T4KUr9_mnKTaJg.682211c42f55cc44191242a6.o46uBZv1HGsy2hDF6waE"
    platform_api_key    = "sat.g-vh4hT8T4KUr9_mnKTaJg.681b4024bbb1cc0cedfec365.U3yd9VGr19l7bDwVwyhq" 

}

provider "azurerm" {
  features {}
  use_oidc = true
}
