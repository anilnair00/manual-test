resource "harness_platform_project" "project" {  
    name      = "Terraform Test Project"  
    identifier = "terraform_test_project"  
    org_id    = "default"  
}
resource "harness_platform_connector_azure_cloud_provider" "inherit_from_delegate_user_assigned_managed_identity" {
  identifier  = "identifier"
  name        = "name"
  description = "example"
  tags        = ["foo:bar"]

  credentials {
    type = "InheritFromDelegate"
    azure_inherit_from_delegate_details {
      auth {
        azure_msi_auth_ua {
          client_id = "client_id"
        }
        type = "UserAssignedManagedIdentity"
      }
    }
  }
