terraform {
 required_version = ">= 0.12.26"
 }
  
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "my-context"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "production"
  }
}
