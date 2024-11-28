resource "aws_ecs_cluster" "main" {
  name = var.cluster_name
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
  # configuration {
  #   execute_command_configuration {
  #     logging = "OVERRIDE"
  #     log_configuration {
  #       cloud_watch_log_group_name = var.cloud_watch_log_group_name
  #     }
  #   }
  # }
  tags = {
    Name = var.cluster_name
  }
}