# ms-deployment
### Repository structure
#### microservice folder
This folder contains Python microservice, Dockerfile that will be used to dockerize the microservice and gitlabCI configration to handle the microserivce CI.

##### Microservice gitlabCI
- First stage, will make sure to install all the needed dependencies and then clone the repo, build the dockerfile, tag the image then push it to AWS ECR repo.

#### terraform folder
In that folder, Terraform code that used to provision AWS resources using terraform module, TFVARS and gitlabCI.
Resources:
- AWS VPC
- AWS NAT and Internet gateways
- AWS Public and private subnets
- AWS route tables
- AWS EKS version 1.30 with CNI, kube-proxy and coreDNS addons

##### Terraform gitlabCI
- Fists stage, (fmt) will make sure to run terraform fmt
- Second stage, build will run terraform plan --var-file=variables/eks.tfvars on any branch.
- Third stage, will deploy the resources on AWS environment with manual approval and only on the main branch.
- Fourth stage, will destory the resources created on AWS with manual approval and only on the main branch.

#### k8s-files folder
This folder contains all kubernets files that will be used to deploy Python microservice on EKS cluster.
Files:
- Python microservice deployment file
- Python microservice service file
- Python microservice HPA file
- Python microservice PDB file
- Python microservice Ingress file
- Python microservice argoCD configurations file