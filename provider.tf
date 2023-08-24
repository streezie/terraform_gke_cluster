provider "google" {
    credentials = file()
    project = "cluster-2-307816"
    region = "us-west1"  
}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}

terraform {
  backend "gcs" {
    bucket = "autopilot-tf-state"
    prefix = "terraform/state"
    
  }

  required_providers {
     google = {
      source = "hashicorp/google"
      version = "4.51.0"
  }
}
}