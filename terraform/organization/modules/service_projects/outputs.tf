output "services_list_frontend" {
  value = local.services_list_frontend
}

output "services_list_k8s" {
  value = local.services_list_k8s
}

output "combined_output" {
  value = {
    frontend_project_id = module.project_frontend.project_id,
    frontend_project_number = module.project_frontend.project_number,
    k8s_project_id = module.project_k8s.project_id,
    k8s_project_number = module.project_k8s.project_number,
  }
}
