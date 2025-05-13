param location string = 'eastus'
param storageAccountName string = 'venkatstorage${uniqueString(resourceGroup().id)}'
param appServiceName string = 'venkatapp${uniqueString(resourceGroup().id)}'

@allowed([
  'nonprod'
  'prod'
])
param environmentType string // Environment type

//var appServicePlanName = 'venkatappserviceplan'
var storageAccountSkuName = (environmentType == 'prod') ? 'Standard_GRS' : 'Standard_LRS'
//var appServicePlanSkuName = (environmentType == 'prod') ? 'P2v3' : 'F1'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountSkuName
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}



output appServiceAppName string = appServiceName

//output ipFqdn string = publicIpAddress.properties.dnsSettings.fqdn

module appService 'modules/appService.bicep' = {
  name: 'appService'
  params: {
    location: location
    appServiceName: appServiceName
    environmentType: environmentType
  }
}

output appServiceHostName string = appService.outputs.appServiceHostName
