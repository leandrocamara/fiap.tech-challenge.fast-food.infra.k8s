resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "NG-${var.projectName}"
  node_role_arn   = data.aws_iam_role.labRole.arn
  subnet_ids      = aws_eks_cluster.eks_cluster.vpc_config[0].subnet_ids
  disk_size       = 50
  instance_types  = ["${var.instanceType}"]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}