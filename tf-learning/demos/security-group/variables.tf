variable "create_security_group" {
  description = "Determines whether to create a security group"
  type        = bool
  default     = true
}

variable "security_group_name" {
  description = "Name to use on security group created"
  type        = string
  default     = null
}

variable "security_group_description" {
  description = "Description for the security group created"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "ID of the VPC where the security group/nodes will be provisioned"
  type        = string
  default     = null
}

variable "security_group_rules" {
  description = "List of security group rules to add to the security group created"
  type        = any
  default     = {}
}