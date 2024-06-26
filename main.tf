terraform {
  backend "gcs" {
    bucket = "tfstate8118"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/mrgitmail/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}