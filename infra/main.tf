resource "aws_eks_cluster" "eks" {

  name = var.cluster_name

  role_arn = "arn:aws:iam::000000000000:role/eks-role"

  vpc_config {

    subnet_ids = [
      "subnet-11111111",
      "subnet-22222222"
    ]

  }

}

resource "aws_eks_node_group" "node" {

  cluster_name = aws_eks_cluster.eks.name

  node_group_name = var.node_group_name

  node_role_arn = "arn:aws:iam::000000000000:role/node-role"

  subnet_ids = [
    "subnet-11111111",
    "subnet-22222222"
  ]

  scaling_config {

    desired_size = var.desired_size

    min_size = var.min_size

    max_size = var.max_size

  }

  instance_types = [
    var.instance_type
  ]

}