# -------------------------
# AWS REGION
# -------------------------
variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

# -------------------------
# CLUSTER NAME
# -------------------------
variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "my-eks-cluster"
}

# -------------------------
# VPC SETTINGS
# -------------------------
variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

# -------------------------
# SUBNET SETTINGS
# -------------------------
variable "public_subnet_count" {
  default = 2
}

variable "private_subnet_count" {
  default = 2
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

# -------------------------
# NODE GROUP SETTINGS
# -------------------------
variable "instance_type" {
  default = "t3.medium"
}

variable "desired_size" {
  default = 2
}

variable "max_size" {
  default = 3
}

variable "min_size" {
  default = 1
}