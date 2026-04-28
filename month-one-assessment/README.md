<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/5163ec5b-413c-44ce-b407-c476760a513a" />README.MD

# TechCorp Terraform Deployment - Project Overview
This terraform project creates a complete terraform configuration that provisions a VPC, public and private subnets, 
Internet and NAT gateways, security groups, 3 EC2 instances (Bastion, web and DB) and an application load balancer.

#Tools 
The tools used for the project include:
. Terraform 
. Oracle Linux
. AWS CLI 


#Requirements
Before using this file, you need:
. Terraform installed
. AWS CLI configured 
. AWS account with appropriate permissions  

#Project Structure

![project tree image](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/tree.png?raw=true)

## Deployment Steps
1. Clone Repo
2. Initialize terraform - terraform init
3. Review Execution Plan - terraform plan
4. Apply -  terraform apply

![terraform-init](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/terraform-plan.png?raw=true)
![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/terraform-plan-complete.png?raw=true)
![terraform-apply](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/terraformApplyCompletion.png?raw=true)

##SSH Access via Bastion 
ssh -i key.pem ec2-user@bastion_ip

![ssh-access](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/ssh-bastion.png?raw=true)


##Connect to Web Servers 
ssh -i key.pem ec2-user@p<private-web-ip>
![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/ssh-web1%20and%20web2.png?raw=true)

##Connect to DB Server
ssh -i key.pem ec2-user@p<private-db-ip>
--after connecting to the DB server 
sudo -i -u postgres 
![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/ssh-db-postgres-connection.png?raw=true)

## Destroy
To destroy all resources 
terraform destroy

![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/terraform%20destroy.png?raw=true)

The resources created include 
Ec2 instances (1 Bastion, 2 Web servers and 1 DB server)
![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/EC2-instances.jpg?raw=true)

VPC
![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/vpc.jpg?raw=true)

![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/vpc-resource-map.jpg?raw=true)

Subnets

![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/subnets.jpg?raw=true)

Internet Gateways
![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/internet-gateways.jpg?raw=true)

NAT Gateways
![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/NAT-gateways.jpg?raw=true)

Load Balancer
![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/alb.jpg?raw=true)

![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/alb-resource-map.jpg?raw=true)

Web access to the Web servers via the ALB

![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/web-access-via-alb-url-web1.jpg?raw=true)

![](https://github.com/lolabol/month-one-assessment/blob/main/month-one-assessment/evidence/web-access-via-alb-url-web2.jpg?raw=true)
