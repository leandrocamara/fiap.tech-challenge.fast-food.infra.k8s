resource "aws_eks_cluster" "eks_cluster" {
  name     = "EKS-${var.projectName}"
  role_arn = data.aws_iam_role.labRole.arn

  vpc_config {
    subnet_ids         = data.aws_subnets.default.ids
    security_group_ids = [aws_security_group.sg.id]
  }

  access_config {
    authentication_mode = var.accessConfig
  }

  depends_on = [aws_security_group.sg]
}