variable "gcp_credentials" {
    type = string
    description = "location of service account"  
}

variable "gcp_project_id" {
    type = string
    description = "gcp project id"  
}

variable "gcp_region" {
    type = string
    description = "gcp region"  
}

variable "gke_cluster_name" {
    type = string
    description = "gke cluster name"  
}
variable "gke_zones" {
    type = list(string)
    description = "list of zones fro the gke cluster"  
}
variable "gke_network" {
    type = string
    description = " VPN network name"  
}
variable "gke_subnetwork" {
    type = string
    description = " VPN subnetwork name"  
}
variable "gke_default_nodepool_name" {
    type = string
    description = " gkedefault node poolname"  
}
variable "gke_service_account" {
    type = string
    description = "gkes ervice account_name"  
}