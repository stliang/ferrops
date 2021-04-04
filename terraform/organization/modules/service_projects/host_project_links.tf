resource "google_compute_shared_vpc_service_project" "service_project_frontend" {
  host_project    = "${var.host_project_id}"
  service_project = "${module.project_frontend.project_id}"
}

resource "google_compute_shared_vpc_service_project" "service_project_k8s" {
  host_project    = "${var.host_project_id}"
  service_project = "${module.project_k8s.project_id}"
}
