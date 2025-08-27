data "azurerm_resource_group" "myrg" {
  name = "rg-BDardelet2024_cours-projet"
}

resource "azurerm_kubernetes_cluster" "k8s" {
  location            = data.azurerm_resource_group.myrg.location
  resource_group_name = data.azurerm_resource_group.myrg.name
  name                = "k8s-benoit"
  dns_prefix          = "k8s-benoit-noeud"
  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name      = "benoitpool"
    vm_size    = "Standard_D2as_v6"
    node_count = var.node_count
    upgrade_settings {
      drain_timeout_in_minutes      = 0
      max_surge                     = "10%"
      node_soak_duration_in_minutes = 0
    }
  }
  network_profile {
    network_plugin = "kubenet"
    network_policy = "calico"
  }
  tags = {
    user = "BDardelet2024"
    name = "Devops-cours-azure-kubernetes"
  }

}
