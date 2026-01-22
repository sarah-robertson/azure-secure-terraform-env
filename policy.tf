# -------------------------
# Governance: Azure Policy (RG scope) - lookup built-in definitions by display name
# -------------------------

# Look up built-in policies by display name (avoids hardcoding IDs)
data "azurerm_policy_definition" "require_tag_on_resources" {
  display_name = "Require a tag on resources"
}

data "azurerm_policy_definition" "allowed_locations" {
  display_name = "Allowed locations"
}

# Assign "Require a tag on resources" at the Resource Group scope
resource "azurerm_resource_group_policy_assignment" "require_environment_tag" {
  name                 = "require-environment-tag"
  resource_group_id    = azurerm_resource_group.rg.id
  policy_definition_id = data.azurerm_policy_definition.require_tag_on_resources.id

  parameters = jsonencode({
    tagName = {
      value = "environment"
    }
  })
}

# Assign "Allowed locations" at the Resource Group scope
resource "azurerm_resource_group_policy_assignment" "allowed_locations" {
  name                 = "allowed-locations"
  resource_group_id    = azurerm_resource_group.rg.id
  policy_definition_id = data.azurerm_policy_definition.allowed_locations.id

  parameters = jsonencode({
    listOfAllowedLocations = {
      value = [azurerm_resource_group.rg.location]
    }
  })
}