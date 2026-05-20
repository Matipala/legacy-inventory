variable "app_port" {
  description = "Puerto de la aplicacion legacy-inventory"
  type        = number
  default     = 5000
}

variable "iam_profile" {
  description = "Perfil IAM del Learner Lab"
  type        = string
  default     = "voclabs" 
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI de Amazon Linux 2023 en us-east-1"
  type        = string
  default     = "ami-0ebfd941bbafe70c6" # AMI de AL2023
}