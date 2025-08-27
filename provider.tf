terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  subscription_id = "ca5c57dd-3aab-4628-a78c-978830d03bbd"
  features {}
}

provider "helm" {
  kubernetes = {
   host                   = azurerm_kubernetes_cluster.k8s.kube_config.0.host
   cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate)
   client_certificate     = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate)
   client_key             = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_key)
  }
}
