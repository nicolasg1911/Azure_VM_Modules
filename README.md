Deploying a Virtual Machine in Azure using Terraform

Modules Used

Azure Public IP. <br>
Azure Network Interface. <br>
Azure Network Security Group. <br>
Azure Network Interface Security <br>
Group Association. <br>
Azure Network Security Rule. <br>
Azure Virtual Machine. <br>
Storage OS Disk. <br>

The Architecture was changed to one based in modules, with a folder that contains part of the resources that used to be in the main file.

Prerequisites

Before proceeding, ensure that you have the necessary components installed on your machine:

Terraform: Download and install Terraform from the official website.
Azure CLI: Install Azure CLI by following the instructions provided here.
Steps

1. Clone the Repository: Copy the repository with Terraform configuration files

git clone https://github.com/Estebanm1812/TerraformVm

2. Authenticate using Azure: Sign in into Azure account using Azure CLI.

az login

3. Navigate to the Directory: Change your current directory into the Project's

4. Initialize Terraform: initialize Terraform and fetch the required providers.

terraform init

5. Review and Customize Configuration: Open the main.tf and check the configuration and modify it according to your requirements 

6. Plan the Deployment: Generate an execution plan by running the command below. This will provide insights into the actions Terraform will take when applying the configuration.

terraform plan

7. Ensure Correct Formatting: After making changes, make sure proper indentation by running the *terraform fmt* command.

8. Deploy the Virtual Machine: apply the configuration to deploy the virtual machine.

terraform apply

9. Access the Virtual Machine: After the deployment completes, access your virtual machine using the provided public IP address and credentials.

10. Cleanup Resources: When the virtual machine is no longer needed, destroy it and clean up associated resources by running:

terraform destroy

Evidences:

Resource Group:

<img width="1440" alt="Captura de pantalla 2024-03-19 a la(s) 6 00 33 p  m" src="https://github.com/Estebanm1812/Terraform-Modules/assets/69942961/bc102861-aa5a-4e55-8067-16aacaa14dbf">

Virtual Machine:

<img width="1440" alt="Captura de pantalla 2024-03-19 a la(s) 6 01 56 p  m" src="https://github.com/Estebanm1812/Terraform-Modules/assets/69942961/46b243b9-1426-4b5a-a077-58495afa5a49">

SSH:
<img width="943" alt="Captura de pantalla 2024-03-19 a la(s) 6 02 59 p  m" src="https://github.com/Estebanm1812/Terraform-Modules/assets/69942961/871872fe-99bb-44b6-8927-02c0d171b596">

