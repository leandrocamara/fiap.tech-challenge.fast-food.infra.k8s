variable "regionDefault" {
  default = "us-east-1"
}

variable "projectName" {
  default = "fast-food"
}

variable "labRole" {
  default = "arn:aws:iam::138221710930:role/LabRole"
}

variable "subnetA" {
  default = "subnet-05ca5f057bca6ce05"
}

variable "subnetB" {
  default = "subnet-0d90d5b210a3b8a98"
}

variable "subnetC" {
  default = "subnet-07167581f332800f3"
}

variable "vpcId" {
  default = "vpc-0ba45daf9046f27bc"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "instanceType" {
  default = "t3.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::138221710930:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}