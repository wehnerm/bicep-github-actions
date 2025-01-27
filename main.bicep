// =========== main.bicep ===========
targetScope = 'subscription'

param location string = deployment().location
param utcValue string = utcNow()

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-bicep-github-actions'
  location: location
  tags: {
    createdAt: utcValue
  }
}
