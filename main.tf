terraform {
  required_version = ">= 1.6.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# A simple resource that deploys with no cloud credentials required.
resource "random_pet" "example" {
  length    = 2
  separator = "-"
}

output "pet_name" {
  value = random_pet.example.id
}
