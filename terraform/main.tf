
resource "rundeck_project" "project" {
  name                 = var.project_name
  description          = "Project Description"
  ssh_key_storage_path = "project/${var.project_name}"

  resource_model_source {
    type = "file"
    config = {
      format                    = "resourceyaml"
      file                      = "/etc/rundeck/resources.yaml"
      writable                  = "true"
      generateFileAutomatically = "true"
    }
  }

  extra_config = {
    "project/label" = "${var.project_name}"
  }
}
