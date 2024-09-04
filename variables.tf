variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "subnet_count" {
  description = "The number of subnets to create."
  default     = 2
}

variable "availability_zones" {
  description = "The availability zones for the subnets."
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  default     = "my-eks-cluster"
}

variable "node_group_desired_size" {
  description = "The desired number of worker nodes in the node group."
  default     = 2
}

variable "node_group_max_size" {
  description = "The maximum number of worker nodes in the node group."
  default     = 3
}

variable "node_group_min_size" {
  description = "The minimum number of worker nodes in the node group."
  default     = 1
}

variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for EC2 instances."
  default     = "eks-keypair"  # Replace with the name of your key pair
}
