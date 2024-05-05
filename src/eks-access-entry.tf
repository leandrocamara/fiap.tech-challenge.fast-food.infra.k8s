resource "aws_eks_access_entry" "access_entry" {
  cluster_name      = aws_eks_cluster.eks_cluster.name
  principal_arn     = data.aws_iam_role.principalArn.arn
  kubernetes_groups = ["fiap"]
  type              = "STANDARD"
}