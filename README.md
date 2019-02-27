# A Simple Flask Application to Demonstrate Usage of Packer and Terraform

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) ![Maintenance](https://img.shields.io/maintenance/yes/2019.svg)

## [Packer](https://www.packer.io/)

Packer is a tool for building identical machine images for multiple platforms from a single source configuration.

Packer is lightweight, runs on every major operating system, and is highly performant, creating machine images for multiple platforms in parallel. Packer comes out of the box with support for many platforms.

[Packer on Github](https://github.com/hashicorp/packer)

## [Terraform](https://www.terraform.io/)

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

[Terraform on Github](https://github.com/hashicorp/terraform)

### Creating an Image with Packer

#### Step 1: Prep your machine

* Have your security credentials handy to authenticate with GCP .
  * [Refer to  Creating and using Service accounts](https://cloud.google.com/iam/docs/understanding-service-accounts)
* Install the version of Packer based on the OS of the machine from which you plan to build the image.
  * [Refer to Packer Docs](https://www.packer.io/docs/install/index.html)

#### Step 2:Prep Packer template

* Packer uses a json template that contains build instructions. The basic construct is one builder and multiple steps of provisioners and post-processors.
  * Clone this repo and review the used packer template in `packer` directory
* This template uses a  file based provisioner that copies the file into the build machine and executes it.

#### Step3: Run Packer template

* Validate the template with:
  > packer validate packer/packer_xenial_flask.json
* Once the template has been validated successfully with a similar message as the one below:
  > Template validated successfully.
* Run `packer build` ccommand to build your image
  > packer build packer/packer_xenial_flask.json

### Deploying an Image With Terraform

The terraform init command is used to initialize a working directory containing Terraform configuration files. This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control.By default, terraform init assumes that the working directory already contains a configuration and will attempt to initialize that configuration. You can run this command multiple times, it’s safe !

* Change into the terraform directory then run:

> terraform init

You’ll now want to run the following command to see what we’re about to create and configure.

> terraform plan

If everything looks good, apply the changes and create your VM instance with:

> terraform apply

You can confirm that the VM was created on GCP console.
