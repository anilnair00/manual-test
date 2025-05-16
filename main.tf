#resource "harness_platform_project" "project" {  
#    name      = "Terraform Test Project"  
#    identifier = "terraform_test_project"  
#    org_id    = "default"  
#}
resource "harness_platform_connector_azure_cloud_provider" "inherit_from_delegate_user_assigned_managed_identity" {
  identifier  = "terraform_test_project"
  name        = "AzureConnector"
  description = "Connector with UMI"
  tags        = ["foo:bar"]

  credentials {
    type = "InheritFromDelegate"
    azure_inherit_from_delegate_details {
      auth {
        azure_msi_auth_ua {
          client_id = "69f9d7ce-718e-42c7-adef-8321321f81cf"
        }
        type = "UserAssignedManagedIdentity"
      }
    }
  }
  azure_environment_type = "AZURE"
  delegate_selectors     = ["harness-delegate"]
}
