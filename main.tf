terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.49.0"
    }
    time = {
      source = "hashicorp/time"
      version = "0.13.0"
    }
  }
}

provider "time" {
  # Configuration options
}

# Configure the IBM Cloud Provider
provider "ibm" {
  region           = var.region
  ibmcloud_api_key = var.api_key
}

# Create a new VPC
resource "ibm_is_vpc" "my_vpc" {
  name = "my-vpc"
}

resource "time_sleep" "ram_resource_propagation" {
  create_duration = "900s"
}
