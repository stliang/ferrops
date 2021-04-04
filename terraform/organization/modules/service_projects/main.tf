/* Service Projects
 1. Create service projects
 2. Assign service list to service projects
 3. Enable shared VPC in the service projects */

locals {
  services_list = concat(var.service_list, var.service_list_addons)
  services_list_frontend = concat(var.service_list, var.service_list_addons, var.services_list_frontend)
  services_list_k8s = concat(var.service_list, var.service_list_addons, var.services_list_k8s)
}

module "project_frontend" {
  source = "../project"
  parent_folder_id = var.parent_folder_id
  billing_account_id = var.billing_account_id
  stage_name = var.stage_shortname
  org_id = var.org_id
  project_name = "${var.stage_shortname}_frontend"
  project_id = "${var.stage_shortname}_frontend"
  services_list = [
    compact(local.services_list_frontend)]
  auto_create_network = false
}

module "project_k8s" {
  source = "../project"
  parent_folder_id = "${var.parent_folder_id}"
  billing_account_id = "${var.billing_account_id}"
  stage_name = "${var.stage_shortname}"
  org_id = "${var.org_id}"
  project_name = "${var.stage_shortname}_k8s
  project_id = "${var.stage_shortname}_k8s
  services_list = [
    compact(local.services_list_k8s)]
  auto_create_network = false
}
