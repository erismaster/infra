terraform {
  cloud {
    organization = "erismaster"

    workspaces {
      name = "infra"
    }
  }
}


terraform {
  required_providers {
    kind = {
      source = "tehcyx/kind"
      version = "0.5.1"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}