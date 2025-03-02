variable "gcp_region" {
  description = "Region for GCP project"
  type = string
}

variable "gcp_project_id" {
  description = "Project ID"
  type = string
}

variable "gcp_svc_key" {
  description = "service key for project authentication"
  type = string
}



variable "website_bucket" {
    description = "Bucket for website content"
    type = string
}