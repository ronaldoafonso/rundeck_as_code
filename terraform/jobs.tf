
resource "rundeck_job" "jobs" {
  for_each     = var.jobs
  name         = each.value.name
  project_name = rundeck_project.project.name
  description  = each.value.description

  command {
    inline_script = file("${path.module}/scripts/${each.value.script}")
  }
}
