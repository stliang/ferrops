variable "stage_shortname" {
  description = "Short name for developmemnt stage"
}
variable "parent_folder_id" {}
variable "billing_account_id" {}
variable "host_project_id" {}
variable "org_id" {
  default = ""
}
variable "project_id" {
  default = ""
}

variable "lables" {
  type = "map"
  default = {}
}

variable "service_list" {
  type = "list"
  description = "List of services to apply to all projects"
  default = [
    "cloudasset.googleapis.com",
    "cloudbilling.googleapis.com",
    "compute.googleapis.com",
    "deploymentmanager.googleapis.com",
    "iam.googleapis.com",
    "iamcredentials.googleapis.com",
    "iap.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "osconfig.googleapis.com",
    "oslogin.googleapis.com",
    "resourceviews.googleapis.com",
    "stagedriver.googleapis.com",
    "storage-api.googleapis.com",
    "servicenetworking.googleapis.com",
  ]
}

variable "service_list_addons" {
  type = "list"
  default = []
  description = "Additional services add on to default service list for all projects"
}

variable "services_list_k8s" {
  type = "list"
  description = "List of services to apply to all K8S projects"
  default = [
    "cloudfunctions.googleapis.com",
    "cloudkms.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudscheduler.googleapis.com",
    "cloudtasks.googleapis.com",
    "cloudtrace.googleapis.com",
    "container.googleapis.com",
    "containeranalysis.googleapis.com",
    "containerregistry.googleapis.com",
    "containerscanning.googleapis.com",
  ]
}

variable "services_list_frontend" {
  type = "list"
  description = "List of services to apply to all frontend projects"
  default = [
    "dns.googleapis.com",
  ]
}
