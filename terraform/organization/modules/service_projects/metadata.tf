resource "google_compute_project_metadata" "frontend" {
  project = module.project_frontend.project_id
  metadata = {
    enable-guest-attributes: "TRUE"
    enable-oslogin: "TRUE"
    enable-osconfig: "TRUE"
  }
}

resource "google_compute_project_metadata" "k8s" {
  project = module.project-k8s.project_id
  metadata = {
    enable-guest-attributes: "TRUE"
    enable-osconfig: "TRUE"
    enable-oslogin: "TRUE"
  }
}
