variable "auto_create_network" {
  default = true
}

variable "billing_account_id" {}

variable "labels" {
  type = "map"
  default = {}
}

variable "org_id" {
  default = ""
}

variable "parent_folder_id" {
  default = ""
}

variable "project_id" {
  default = ""
}

variable "project_name" {}

variable "services_list" {
  type = "list"
  description = "List of services to enable for the project"
}

variable "stage_name" {}
