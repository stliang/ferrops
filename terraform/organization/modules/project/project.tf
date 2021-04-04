resource "random_id" "sequence" {
  byte_length = 4
}

locals {
  project_id = "${length(var.project_id) == 0? format("%s-%s",var.stage_name,random_id.sequence.dec) : var.project_id}"
  default_labels = {
    stage = var.stage_name
  }
}

resource "google_project" "project" {
  name = "${var.project_name}"
  project_id = "${local.project_id}"
  folder_id = var.parent_folder_id
  auto_create_network = var.auto_create_network
  billing_account = var.billing_account_id
  org_id = var.org_id
  labels = "${merge(local.default_labels,var.labels)}"
}

resource "google_project_services" "services" {
  count = length(var.services_list)
  project = google_project.project.project_id
  services = var.services_list[count.index]
}
