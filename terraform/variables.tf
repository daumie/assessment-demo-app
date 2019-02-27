variable "gcloud_service_key" {
  type    = "string"
  default = "/Users/dominic/workspace/alpha_packer/packer_scripts/assessment-demo-andela.json"
}


variable "application_zone" {
  type    = "string"
  default = "us-west1-b"
}

variable "application_base_image" {
  type    = "string"
  default = "githeri"
}

variable "application_project_id" {
  type    = "string"
  default = "assessment-demo-andela"
}


variable "application_ip_cidr_range" {
  type    = "string"
  default = "10.0.0.0/24"
}

variable "application_service_account_email" {
  type    = "string"
  default = "assessment-demo-andela@assessment-demo-andela.iam.gserviceaccount.com"
}

variable "application_machine_type" {
  type    = "string"
  default = "g1-small"
}

variable "application_region" {
  type = "string"
  default = "europe-west2"
}
