terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

# Create the file
resource "local_file" "webapp_file" {
  filename = "${path.module}/webapp/src/index.js"
  content  = <<EOF
console.log("Hello from Terraform-created Node.js app!");
EOF
}

# Output the created file path
output "webapp_file_path" {
  value = local_file.webapp_file.filename
}

