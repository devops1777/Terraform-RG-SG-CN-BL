# Terraform
Code for all important azure services
This Terraform configuration will create an Azure resource group, a storage account, a storage container, and a storage blob on Azure.
The configuration begins by specifying the provider and version to use, and then defines the resources that will be created.
The first resource defined is an Azure resource group, which will contain all of the other resources. The location of the resource group is set to "UK South".
Next, an Azure storage account is created and associated with the resource group. The name, location, tier, and replication type of the storage account are all specified.
A storage container is then created and associated with the storage account, and given a name. The container's access type is set to "private".
Finally, a storage blob is created and associated with the storage account and storage container. The name, type, and source of the blob are all specified.
Once you have written this configuration file, you can use Terraform to create the resources on Azure by running the following command: terraform apply. This will create the resources on Azure and output the resulting resource IDs.
