#Create ECR repos
resource "aws_ecr_repository" "ecr_repo" {
  image_tag_mutability  = "MUTABLE"
  for_each              = var.repo_name
  name                  = each.value
  encryption_configuration {
    encryption_type     = "AES256"
  }
}

#Apply AWS scanning configuration on ECR images
resource "aws_ecr_registry_scanning_configuration" "ecr_repo-configuration" {
  scan_type = "ENHANCED"

  rule {
    scan_frequency = "SCAN_ON_PUSH"
    repository_filter {
      filter       = "*"
      filter_type  = "WILDCARD"
    }
  }
}