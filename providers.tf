terraform {  
    required_providers {  
        harness = {  
            source = "harness/harness"  
            version = "0.24.2"  
        }  
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=4.1.0"
        }
    }  
    backend "azurerm" {
      resource_group_name  = "Testvm_group"
      storage_account_name = "testvmgroupb7e2"
      container_name       = "tfstate"
      key                  = "dev.tfstate"
  }
}

provider "harness" {  
    endpoint   = "https://app.harness.io/gateway"  
    account_id = "g-vh4hT8T4KUr9_mnKTaJg"  
    # platform_api_key    = "pat.g-vh4hT8T4KUr9_mnKTaJg.682211c42f55cc44191242a6.o46uBZv1HGsy2hDF6waE"
    platform_api_key    = "sat.g-vh4hT8T4KUr9_mnKTaJg.681b4024bbb1cc0cedfec365.U3yd9VGr19l7bDwVwyhq" 

}

provider "azurerm" {
  use_oidc        = true
  client_id       = "084f318f-40aa-4d40-93ea-5ed3472b66bc"
# client_secret   = "UxS8Q~xZ6gqVHJlJlDbvM~-3BpEWwMmFpetXaaLD"
  tenant_id       = "abec7981-3822-4685-98b0-533aca20c2ed"
#  subscription_id = "ee902f6d-01a9-4a32-8c5f-af9403e6c766"
#    features {}
}
