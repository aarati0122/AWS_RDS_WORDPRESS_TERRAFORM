# Set Up RDS and Wordpress using Terraform in AWS

## Task Decription

1. Create an AWS EC2 instance.

2. Configure the instance with Apache Webserver. Download PHP application name ""WordPress"". As Wordpress stores data at the backend in MySQL Database server. Therefore, you need   to setup a my SQL server using AWS RDS service using Free Tier.
 
3. Provide the endpoint/connection string to the WordPress application to make it work

## Step-1 use the following command to connect the cloud

> terraform init

![init](https://user-images.githubusercontent.com/60148173/127774285-383a8884-efe2-4aa0-8a5f-0db30512b2d9.PNG)

## Step-2 then check error occur or not use following command

> terraform plan

![plan](https://user-images.githubusercontent.com/60148173/127774527-2e04a5dc-2e3f-4e8c-8366-a36874a06bca.PNG)

## if error not occur then apply following command

>terraform apply

## launched EC2 instance

![instance](https://user-images.githubusercontent.com/60148173/127774633-92a7249c-4d0d-4e78-8b52-c4d7a3c63a28.PNG)

## Check created RDS

![rds_create](https://user-images.githubusercontent.com/60148173/127774638-5b4d131a-5b38-41a1-a1cb-3d207cd8eac7.PNG)

## Check the wp-config.php file information

![chane_info](https://user-images.githubusercontent.com/60148173/127774625-caaea31d-93f2-49fd-b1c0-4ba80449c4a3.PNG)

## Check apache server

![check_apache_server](https://user-images.githubusercontent.com/60148173/127774627-69874791-4834-4fdd-9cd5-e94bc7254a80.PNG)

## Install wordpress

![wordpress_install page](https://user-images.githubusercontent.com/60148173/127774640-4aba42fa-0099-4032-9ddc-9f3c8e85abe0.PNG)

## Login page of wordpress

![loginpage](https://user-images.githubusercontent.com/60148173/127774636-5d3ab5f3-33e4-40d6-810b-1355d7325a7a.PNG)

## Dashboard of Wordpress

![dashboard_wordpress](https://user-images.githubusercontent.com/60148173/127774628-440ca7d8-0791-47ed-8ae1-13b759008265.PNG)

## After performing the above task then destroy that created services

> terraform destroy

![destroy_command](https://user-images.githubusercontent.com/60148173/127774630-7dbfa674-ec61-4454-aadc-b06ac17e3271.PNG)

![destroy](https://user-images.githubusercontent.com/60148173/127774629-5f3851a5-b7df-4a34-b966-e1597fb97a76.PNG)





https://user-images.githubusercontent.com/60148173/127779834-c587ac74-3bee-47fb-8f11-93bfbc28b311.mp4




