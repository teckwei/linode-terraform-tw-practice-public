terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.29.1"
    }
  }
}

provider "linode" {
  config_profile = "tw-terraform-training"
}

module "dev" {
  source = "./modules/dev"

# Variables Specific to this Deployment
  root_pass = var.root_pass

  # Variables Specific to Servers
  webserver_label = "client1-web"
  dbserver_label = "client1-db"

  engine_id = var.engine_id
  region = var.region
  type = var.type
  image = var.image
}

module "staging" {
  source = "./modules/staging"

# Variables Specific to this Deployment
  root_pass = var.root_pass

  # Variables Specific to Servers
  webserver_label = "client2-web"
  dbserver_label = "client2-db"

  engine_id = var.engine_id
  region = var.region
  type = var.type
  image = var.image
}