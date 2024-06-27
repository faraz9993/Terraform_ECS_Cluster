variable "cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "environment" {
  description = "The environment name (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24"]  # Example subnet
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a"]  # Example availability zone
}

variable "public_subnets" {
  description = "List of public subnets"
  default     = ["10.0.3.0/24"]  # Example subnet
}


variable "name" {
  description = "The name to be used for resources"
  type        = string
  default     = "faraz"
}



variable "container_port" {
  description = "The port on which the container listens"
  type        = number
  default     = 80
}

variable "container_image" {
  description = "The container image to use"
  type        = string
  default     = "Faraz_Image"
}

variable "ecs_service_security_groups" {
  description = "The security groups for the ECS service"
  type        = list(string)
  default     = ["sg-00981b6e84fe930ef"]
}

variable "subnets" {
  description = "The subnets to be used by resources"
  type        = list(string)
  default     = ["subnet-0b9018dcae380a1c2"]
}

variable "aws_alb_target_group_arn" {
  description = "The ARN of the AWS ALB target group"
  type        = string
  default     = ""
}
variable "container_environment" {
  description = "The environment variables for the container"
  type = list(object({
    name  = string
    value = string
  }))
  default = [
    {
      name  = "ENVIRONMENT"
      value = "Dev"
    }
  ]
}