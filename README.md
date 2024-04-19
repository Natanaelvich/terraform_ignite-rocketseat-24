# Terraform Learning Repository

This repository contains code examples and resources for learning Terraform, an infrastructure as code tool. The examples provided here demonstrate how to create and manage infrastructure resources using Terraform across multiple cloud providers.

## Prerequisites

Before you can use the code examples in this repository, make sure you have the following prerequisites installed:

- Terraform (version X.X.X)
- [Cloud Provider CLI](link-to-cloud-provider-cli) (version X.X.X)

## Getting Started

To get started with Terraform, follow these steps:

1. Change into the directory where you have this project:

    ```shell
    cd terraform-learning
    ```

2. Initialize Terraform:

    ```shell
    terraform init
    ```

3. Modify the `main.tf` file to define your desired infrastructure resources.

4. Provision the infrastructure:

    ```shell
    terraform apply
    ```

## Commands

Here are some common Terraform commands that you can use to manage your infrastructure:

### Terraform

- `terraform init`: Initializes a Terraform working directory.
- `terraform plan`: Generates an execution plan for Terraform.
- `terraform apply`: Applies the changes required to reach the desired state of the configuration.
- `terraform destroy`: Destroys the Terraform-managed infrastructure.
- `terraform validate`: Validates the Terraform files.
- `terraform fmt`: Rewrites Terraform configuration files to a canonical format.
- `terraform show`: Provides human-readable output from a state or plan file.
- `terraform state`: Advanced state management commands.

### AWS

- `aws configure sso`: Configures the AWS CLI to use AWS Single Sign-On (SSO).
- `aws sso login`: Logs in to AWS SSO and returns credentials for the AWS CLI.
- `aws sts get-caller-identity`: Returns details about the IAM user or role whose credentials are used to call the operation.

## Examples

This repository provides examples for creating resources on the following cloud providers:

- AWS
- Azure
- Google Cloud Platform

Each example is located in its respective directory and contains a `main.tf` file with the Terraform code.

## Troubleshooting

### User default aws credentials are not found. 

```shell
Error: No valid credential sources found for AWS Provider.
```

export variables in file `~/.bashrc` or `~/.bash_profile` or `˜/.zshrc` or `~/.zsh_profile`:

```shell
export AWS_PROFILE="natanael-profile"
export AWS_DEFAULT_REGION=us-west-1
```

and add default user on aws credentials file `~/.aws/config`

```shell
[default]
sso_session = natanael
sso_account_id = 867118092958
sso_role_name = AdministratorAccess
region = us-west-1
[profile natanael-profile]
sso_session = natanael
sso_account_id = 867118092958
sso_role_name = AdministratorAccess
region = us-west-1
[sso-session natanael]
sso_start_url = https://d-916712ae20.awsapps.com/start
sso_region = us-west-1
sso_registration_scopes = sso:account:access
```

### User account no enable to create resources

```shell
Error: Error creating S3 bucket: AccessDenied: Access Denied
```

create a ticket to enable the user to create resources on aws account.

### Terraform not destroy resources with prevent_destroy

```shell
Error: Error deleting S3 Bucket: BucketNotEmpty: The bucket you tried to delete is not empty
```

remove the with `--target` flag to destroy the resource.

```shell
terraform destroy --target module.s3.data.aws_s3_bucket.bucket
```

## Contributing

Contributions to this repository are welcome! If you have any improvements or additional examples, feel free to submit a pull request.

## License

This repository is licensed under the [MIT License](link-to-license-file).