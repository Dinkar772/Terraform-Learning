resource "aws_ecr_repository" "main" {
  count                = length(var.repo_names)
  name                 = element(var.repo_names, count.index)
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  tags = {
    Name = element(var.repo_names, count.index)
  }
}

resource "aws_ecr_lifecycle_policy" "policy" {
  count      = length(var.repo_names)
  repository = aws_ecr_repository.main[count.index].name
  policy     = var.policy
}