resource "aws_eks_access_policy_association" "eks_policy" {
  cluster_name  = aws_eks_cluster.eks_cluster.name
  policy_arn    = var.policyArn
  principal_arn = replace(data.aws_iam_role.labRole.arn, "LabRole", "voclabs")

  access_scope {
    type = "cluster"
  }
}