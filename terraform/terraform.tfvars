
project_name = "project"

rundeck_url = "http://rundeck:4440/"

rundeck_api_version = "38"

rundeck_token = "admin"

aws_region = "us-east-1"

jobs = {
  cpu = {
    name        = "CPU Utilization"
    description = "Kill the most CPU intensive container"
    script      = "cpu.sh"
  }
}

keys = {
  rundeck = {
    path         = "rundeck"
    key_material = "/home/ronaldo/.ssh/NCSA/rundeck"
  }
}
