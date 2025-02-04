# Terraform AWS Infrastructure

## Overview
This project provisions a **highly available web infrastructure** on AWS using **Terraform**. The architecture consists of **proxy servers (Nginx) in public subnets** and **Apache web servers in private subnets**, ensuring secure and scalable traffic management.


![Untitled Diagram drawio](https://github.com/mohamedfayez-7/Terraform-Final-Project/blob/a8eb2feb73bb3fa6cdcbafeeab9b5933002060a4/Screenshots/terraform-infra-diagram.PNG)




## Architecture
The infrastructure is deployed across two **Availability Zones** within a **VPC**, and it includes:
- **VPC (10.0.0.0/16)** with public and private subnets.
- **Public Subnets (10.0.0.0/24, 10.0.2.0/24)** hosting EC2 instances running **Nginx** as proxy servers.
- **Private Subnets (10.0.1.0/24, 10.0.3.0/24)** hosting EC2 instances running **Apache** as web servers.
- **Internet Gateway** allowing external traffic to reach the proxy servers.
- **Load Balancer** distributing traffic between the Apache servers.
- **S3 Bucket** for state locking in Terraform, ensuring safe infrastructure management.

## Prerequisites
- Terraform installed on your local machine.
- AWS credentials configured.
- SSH key pair for EC2 instances.

## Deployment Steps
1. Clone this repository:
   ```sh
   git clone https://github.com/your-repo/terraform-aws-infra.git
   cd terraform-aws-infra
   ```
2. Initialize Terraform:
   ```sh
   terraform init
   ```
3. Plan the deployment:
   ```sh
   terraform plan
   ```
4. Apply the configuration:
   ```sh
   terraform apply -auto-approve
   ```
5. Retrieve the load balancer DNS to access the application:
   ```sh
   terraform output
   ```

## Project Description (LinkedIn)
**Title:** AWS High-Availability Infrastructure with Terraform  
**Description:**
Designed and deployed a high-availability web infrastructure on AWS using **Terraform**. The project provisions a **VPC with public and private subnets** across two availability zones. **Nginx proxy servers** handle incoming traffic, forwarding requests to **Apache web servers** hosted in private subnets. An **Application Load Balancer (ALB)** ensures fault tolerance. Terraform manages the infrastructure with state locking stored in an **S3 bucket** for reliability. This setup enhances security, scalability, and automation in cloud environments.






