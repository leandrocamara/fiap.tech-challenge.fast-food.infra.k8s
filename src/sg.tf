resource "aws_security_group" "sg" {
  name        = "SG-${var.projectName}"
  description = "This group is used AWS EKS"
  vpc_id      = var.vpcId

  ingress {
    description = "All"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  /*ingress {
    description = "VPC"
    from_port   = 31000
    to_port     = 31000
    protocol    = "tcp"
    # Continuar em 01:57:27
    cidr_blocks = [aws_eks_cluster.eks_cluster.endpoint]
    # || aws_eks_cluster.eks_cluster.vpc_config[0].endpoint_public_access || "172.31.0.0/16"
  }*/

  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}