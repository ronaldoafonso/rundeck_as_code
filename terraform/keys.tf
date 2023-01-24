
resource "rundeck_private_key" "keys" {
  for_each     = var.keys
  path         = "${rundeck_project.project.ssh_key_storage_path}/${each.value.path}"
  key_material = file("${each.value.key_material}")
}
