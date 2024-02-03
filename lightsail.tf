resource "aws_lightsail_instance" "custom" {
  name              ="week00"
  availability_zone = "us-east-2
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>this is my first terraform project i really having fun i can't wait to work</h1>' | sudo tee /var/www/html/index.html"
}

resource "aws_iam_user" "lb" {
  name = "u5b2050"
  

   
    
  }

resource "aws_iam_group" "developers" {
  name = "cloudteam"
  path = "/users/"
}

