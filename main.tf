resource "aws_lightsail_instance" "server1" {
  name              = "dev-server"
  availability_zone = "us-east-2"
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "medium_1_0"
  user_data         = "sudo apt-get update sudo apt-get install -y apache2  sudo systemctl start apache2  sudo systemctl enable apache2  echo '<h1>Deployed by Stephane Yeni </h1>' | sudo tee /var/www/html/index.html"
}

resource "aws_iam_user" "ansible" {
  name = "ansible"
}

resource "aws_iam_group" "ansiblegroup" {
  name = "ansiblegroup"
  path = "/users/"
}