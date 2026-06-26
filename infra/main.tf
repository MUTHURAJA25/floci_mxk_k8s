resource "aws_eks_cluster" "eks" {

  name     = var.cluster_name
  role_arn = "arn:aws:iam::000000000000:role/eks-role"

  vpc_config {
    subnet_ids = [
      "subnet-11111111",
      "subnet-22222222"
    ]
  }
}
