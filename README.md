# aws-infra

This Repo is aimed at :

Creating a VPC, public and private subnets, Route Tables and Internet Gateway
Enabling the Launch Template to pick a recently built AMI 
Launch EC2 instances from the AMI 
Set up the Application Load Balancer to scale-up and scale-down based on the CloudWatch CPU Metric alarms
Set up a public hosted zone using Route53 
Deploy the server at https://demo.saicharanreddymyla.me


STEPS FOR SETTING UP INFRASTRUCTURE FOR TERRAFORM:
-> Create AWS account
-> Create IAM user and assign admin permission
-> Install AWS CLI
-> Create access keys from the aws portal
-> Use the access keys to configure the aws cli for a profile
-> Install terraform
-> Use the profile name in the terraform and setup the profile, source, version, region
-> To import certificate:

`aws iam update-server-certificate --server-certificate-name ExampleCertificate --new-server-certificate-name CloudFrontCertificate --new-path /cloudfront/`
`aws iam upload-server-certificate --server-certificate-name certificate_object_name --certificate-body file://*path to your certificate file* --private-key file://*path to your private key file* --certificate-chain file://*path to your CA-bundle file*`
`aws acm import-certificate --certificate file://Certificate.pem --certificate-chain file://CertificateChain.pem --private-key file://PrivateKey.pem`
