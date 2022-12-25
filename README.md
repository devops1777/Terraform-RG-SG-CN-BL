## Terraform - Resource Geoup - Storage Account - Container - Blob
1. This Terraform configuration will create an Azure resource group, a storage account, a storage container, and a storage blob on Azure.
2. The configuration begins by specifying the provider and version to use, and then defines the resources that will be created.
3. The first resource defined is an Azure resource group, which will contain all of the other resources. The location of the resource group is set to "UK South".
4. Next, an Azure storage account is created and associated with the resource group. The name, location, tier, and replication type of the storage account are all specified.
5. A storage container is then created and associated with the storage account, and given a name. The container's access type is set to "private".
6. Finally, a storage blob is created and associated with the storage account and storage container. The name, type, and source of the blob are all specified.
7. Once you have written this configuration file, you can use Terraform to create the resources on Azure by running the following command: terraform apply. This will create the resources on Azure and output the resulting resource IDs.

## Here are the points in the starter pipeline:

- # Starter pipeline

- Start with a minimal pipeline that you can customize to build and deploy your code.
- Add steps that build, run tests, deploy, and more:
- https://aka.ms/yaml

trigger:
- master

pool:
  vmImage: ubuntu-latest

steps:
- script: echo Hello, world!
  displayName: 'Run a one-line script'

- script: |
    echo Add other tasks to build, test, and deploy your project.
    echo See https://aka.ms/yaml
  displayName: 'Run a multi-line script'
- The pipeline is triggered when a change is made to the master branch.
- The pipeline runs on a virtual machine with the Ubuntu operating system.
- The first step is a script that prints "Hello, world!" to the console.
- The second step is a script that prints a message about adding tasks to build, test, and deploy the project.
