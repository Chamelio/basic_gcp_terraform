terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "flemingfridays2-0"
  region = "southamerica-east1"
  zone = "southamerica-east1-b"
  credentials = "flemingfridays2-0-506b436f53f0.json"
}

resource "google_storage_bucket" "static-site" {
  name          = "caliente_spice"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  
}