provider "aws" {
region = "ap-south-1"
profile = "default"
}

resource "aws_instance" "wordpressins" {
  ami = "ami-00bf4ae5a7909786c"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  availability_zone = "ap-south-1a"
 vpc_security_group_ids = ["sg-057c082f893d35374"]
  key_name = "terraform_rds"
  tags = {
    Name = "wordpress"
  }
  
}

resource "aws_db_instance" "wordpressdb" {
  instance_class = "db.t2.micro"
  allocated_storage = 10
  availability_zone = "ap-south-1a"
  engine = "mysql"
  engine_version = "5.7"
  name = "mydb"
  username = "aarati"
  password = "wordpress"
  skip_final_snapshot = true
  port = 3306
  vpc_security_group_ids = ["sg-057c082f893d35374"]
}

resource "null_resource" "null_local1" {
  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("C:/Users/AS/Desktop/Terraform LW/terraform_rds.pem")
    host     = aws_instance.wordpressins.public_ip
  }
  provisioner "remote-exec" {
    inline = [
	  "sudo yum install mysql -y",
	  "sudo amazon-linux-extras install php7.2 -y",
	  "sudo yum install httpd -y",
	  "wget https://wordpress.org/latest.tar.gz",
	  "sudo tar -xzf latest.tar.gz",
      "sudo cp -rf /home/ec2-user/wordpress /var/www/html/",
	  "cd /var/www/html/wordpress/",
	  "sudo cp wp-config-sample.php wp-config.php",	
	  "sudo rm -rf wp-config-sample.php",
      "sudo systemctl restart httpd"
    ]
  }
}	
