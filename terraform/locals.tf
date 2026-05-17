locals {
  env = terraform.workspace

  config = {
    dev = {
      sku = "F1"
    }
    staging = {
      sku = "F1"
    }
    prod = {
      sku = "F1"
    }
  }
}