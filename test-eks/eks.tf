resource aws_eks_cluster "example" {
  name     = "insecure"
  role_arn = "${aws_iam_role.iam_for_eks.arn}"
  enabled_cluster_log_types = ["authenticator", "audit", "scheduler", "controllerManager"]

  encryption_config {
    resources = [ "secrets" ]
    provider {
      key_arn = var.kms_arn
    }
  }

  vpc_config {
    endpoint_public_access = false
    endpoint_private_access = true
    subnet_ids              = ["${aws_subnet.eks_subnet1.id}", "${aws_subnet.eks_subnet2.id}"]
  }

  depends_on = [
    aws_iam_role_policy_attachment.policy_attachment-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.policy_attachment-AmazonEKSServicePolicy,
  ]

  tags = {
    team = "SRE"
  }
}
