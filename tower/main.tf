terraform {
  cloud {
    organization = "erismaster"

    workspaces {
      name = "infra"
    }
  }
}
