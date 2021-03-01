﻿$resourceGroup = "fazc01"
$storageAccount = "mdce01"
$container = "metadata448"
$location = "north europe"

# Log in to Azure
#Connect-AzAccount
#Register-AzResourceProvider -ProviderNamespace "Microsoft.Storage"

# Create your Azure resource group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create your Azure storage account
$account = New-AzStorageAccount -ResourceGroupName $resourceGroup -StorageAccountName $storageAccount `
-SkuName Standard_ZRS -Location $location -Kind StorageV2

# Create a new container using the context
$container = New-AzStorageContainer -Name $container -Context $account.Context

#copying the files from local system to azurestorage container using azcopy

azcopy login --tenant-id "836d6583-f0b8-47cb-a79b-d875b5ff2447"

azcopy copy "C:\Users\pavan\Desktop\metadata" "https://mdce01.blob.core.windows.net/metadata448?sp=racwdl&st=2021-03-01T06:43:57Z&se=2021-03-01T14:43:57Z&spr=https&sv=2020-02-10&sr=c&sig=7rwtvV1irqcq44Lt%2BM6DykR6NORVr39FHAjRrOneuPw%3D" --recursive


azcopy copy "C:\Users\pavan\Desktop\2021" "https://mdce01.blob.core.windows.net/metadata448?sp=racwdl&st=2021-03-01T06:43:57Z&se=2021-03-01T14:43:57Z&spr=https&sv=2020-02-10&sr=c&sig=7rwtvV1irqcq44Lt%2BM6DykR6NORVr39FHAjRrOneuPw%3D" --recursive


azcopy copy "C:\Users\pavan\Desktop\2022" "https://mdce01.blob.core.windows.net/metadata448?sp=racwdl&st=2021-03-01T06:43:57Z&se=2021-03-01T14:43:57Z&spr=https&sv=2020-02-10&sr=c&sig=7rwtvV1irqcq44Lt%2BM6DykR6NORVr39FHAjRrOneuPw%3D" --recursive






























# Remove a container
#Remove-AzStorageContainer -Name $container -Context $account.Context
