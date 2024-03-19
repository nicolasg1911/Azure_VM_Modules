# VM_Azure
Azure VM using Terraform and modules
* ## Pasos:
    * ### Modulo VM

        Azure Public IP. <br>
        Azure Network Interface. <br>
        Azure Network Security Group. <br>
        Azure Network Interface Security <br>
        Group Association. <br>
        Azure Network Security Rule. <br>
        Azure Virtual Machine. <br>
        Storage OS Disk. <br>
    
    * ### Main
        Azure Resource Group. <br>
        Azure Virtual Network. <br>
        Azure Subnet. <br>
        VM Module <br>

* El archivo [variables](variables.tf) contiene las variables de Terraform seran utilizadas para parametrizar la configuración.

* En la carpeta de [módulos](./modules/) el archivo [variables](./modules/vm/variables.tf) tiene las variables específicas de este módulo.

* El archivo [terraform](terraform.tfvars)  se utiliza para definir valores  para las variables  en los archivos de configuración de Terraform.
* ## Comandos
1. ````terraform init````
2. ````terraform validate````
3. ````terraform plan````
4. ````terraform fmt````
5. ````terraform apply````
6. ````terraform apply````