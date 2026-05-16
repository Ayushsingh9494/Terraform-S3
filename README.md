# Terraform AWS S3 Bucket Project

This project uses Terraform to provision and manage an AWS S3 bucket with secure configurations, versioning, remote backend state management, and automated object uploads.

---

## Features

- AWS S3 bucket creation
- Remote Terraform backend using S3
- Bucket versioning enabled
- Public access blocked for security
- Automated object/file uploads
- Configurable using Terraform variables
- Outputs for important resource details

---

## Project Structure

```bash
terraform-s3-project/
│
├── backend.tf
├── main.tf
├── variables.tf
├── output.tf
├── .gitignore
└── README.md
```

---

## Technologies Used

- Terraform
- AWS S3
- AWS Provider

---

## Infrastructure Created

This project provisions:

- An AWS S3 bucket
- Public access block configuration
- Bucket versioning
- Sample files inside the bucket:
  - `hello.txt`
  - `readme.txt`
  - `config/settings.txt`

---

## Terraform Concepts Used

- Providers
- Resources
- Variables
- Outputs
- Remote Backend
- Interpolation
- Tags
- Versioning

---

## Prerequisites

Before running this project, ensure you have:

- Terraform installed
- AWS CLI configured
- AWS account with proper permissions

---

## AWS Configuration

Configure AWS credentials:

```bash
aws configure
```

Provide:

- AWS Access Key
- AWS Secret Key
- Region

---

## Initialize Terraform

```bash
terraform init
```

---

## Validate Configuration

```bash
terraform validate
```

---

## Preview Infrastructure

```bash
terraform plan
```

---

## Apply Infrastructure

```bash
terraform apply
```

Type:

```bash
yes
```

when prompted.

---

## Destroy Infrastructure

```bash
terraform destroy
```

---

## Security Notes

The following files are ignored using `.gitignore`:

```bash
.terraform/
*.tfstate
*.tfstate.backup
terraform.tfvars
.crash.log
```

This prevents sensitive Terraform state data from being uploaded.

---

## Outputs

After successful deployment, Terraform displays:

- Bucket name
- Bucket ARN
- Config file path
- State file location

---

## Future Improvements

- Add DynamoDB state locking
- Add IAM policies
- Enable bucket lifecycle rules
- Add Terraform modules
- CI/CD integration using GitHub Actions

---

## Author

Ayush Singh
