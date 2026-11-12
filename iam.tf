resource "aws_iam_role" "eks_admin_role1" {
  name = "eks-admin-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}
resource "aws_iam_role_policy_attachment" "admin1" {
  role       = aws_iam_role.eks_admin_roleq.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
resource "aws_iam_instance_profile" "eks_admin_profile1" {
  name = "eks-admin-profile1"
  role = aws_iam_role.eks_admin_role1.name
}