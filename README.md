# aws-infra

This repo mainly focuses of building the infrastructure

Setting up an entire VPC, public and private subnets, route tables and Internet gateway
Launching EC2 instances from the Launch Template picking the most recent AMI
Sacling up and down based on the CPU Metric CloudWatch Alarms
Setting up a private hosted zone using Route53
Deploying the web server to https://demo.saicharanreddymyla.me




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
