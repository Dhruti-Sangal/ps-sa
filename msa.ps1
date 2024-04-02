# Connect to Azure account
# Connect-AzAccount

# Set the subscription context
# Set-AzContext -SubscriptionID 2e6d07c5-9fe0-489c-a707-4af928cb3a29

# param (
#     [string] $resourceGroupName,
#     [string] $location = "East US",
#     [string] $storageAccountName = "st",
#     [string] $sku = "Standard_LRS"  # Default value for SKU is Standard_LRS
# )

param(
    # Parameter help description
    [Parameter(Mandatory=$true)]
    [string]$resourceGroupName,

    [Parameter(Mandatory=$true)]
    [string]$storageAccountName,

    [string]$location = "East US"
   
)

Connect-AzAccount

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location 
