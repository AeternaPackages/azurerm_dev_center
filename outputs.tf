# --- azurerm_dev_center ---
output "dev_centers_id" {
  description = "Map of id values across all dev_centers, keyed the same as var.dev_centers"
  value       = module.dev_centers.dev_centers_id
}

output "dev_centers_dev_center_uri" {
  description = "Map of dev_center_uri values across all dev_centers, keyed the same as var.dev_centers"
  value       = module.dev_centers.dev_centers_dev_center_uri
}

output "dev_centers_identity" {
  description = "Map of identity values across all dev_centers, keyed the same as var.dev_centers"
  value       = module.dev_centers.dev_centers_identity
}

output "dev_centers_location" {
  description = "Map of location values across all dev_centers, keyed the same as var.dev_centers"
  value       = module.dev_centers.dev_centers_location
}

output "dev_centers_name" {
  description = "Map of name values across all dev_centers, keyed the same as var.dev_centers"
  value       = module.dev_centers.dev_centers_name
}

output "dev_centers_project_catalog_item_sync_enabled" {
  description = "Map of project_catalog_item_sync_enabled values across all dev_centers, keyed the same as var.dev_centers"
  value       = module.dev_centers.dev_centers_project_catalog_item_sync_enabled
}

output "dev_centers_resource_group_name" {
  description = "Map of resource_group_name values across all dev_centers, keyed the same as var.dev_centers"
  value       = module.dev_centers.dev_centers_resource_group_name
}

output "dev_centers_tags" {
  description = "Map of tags values across all dev_centers, keyed the same as var.dev_centers"
  value       = module.dev_centers.dev_centers_tags
}

# --- azurerm_dev_center_attached_network ---
output "dev_center_attached_networks_id" {
  description = "Map of id values across all dev_center_attached_networks, keyed the same as var.dev_center_attached_networks"
  value       = module.dev_center_attached_networks.dev_center_attached_networks_id
}

output "dev_center_attached_networks_dev_center_id" {
  description = "Map of dev_center_id values across all dev_center_attached_networks, keyed the same as var.dev_center_attached_networks"
  value       = module.dev_center_attached_networks.dev_center_attached_networks_dev_center_id
}

output "dev_center_attached_networks_name" {
  description = "Map of name values across all dev_center_attached_networks, keyed the same as var.dev_center_attached_networks"
  value       = module.dev_center_attached_networks.dev_center_attached_networks_name
}

output "dev_center_attached_networks_network_connection_id" {
  description = "Map of network_connection_id values across all dev_center_attached_networks, keyed the same as var.dev_center_attached_networks"
  value       = module.dev_center_attached_networks.dev_center_attached_networks_network_connection_id
}

# --- azurerm_dev_center_catalog ---
output "dev_center_catalogs_id" {
  description = "Map of id values across all dev_center_catalogs, keyed the same as var.dev_center_catalogs"
  value       = module.dev_center_catalogs.dev_center_catalogs_id
}

output "dev_center_catalogs_catalog_adogit" {
  description = "Map of catalog_adogit values across all dev_center_catalogs, keyed the same as var.dev_center_catalogs"
  value       = module.dev_center_catalogs.dev_center_catalogs_catalog_adogit
}

output "dev_center_catalogs_catalog_github" {
  description = "Map of catalog_github values across all dev_center_catalogs, keyed the same as var.dev_center_catalogs"
  value       = module.dev_center_catalogs.dev_center_catalogs_catalog_github
}

output "dev_center_catalogs_dev_center_id" {
  description = "Map of dev_center_id values across all dev_center_catalogs, keyed the same as var.dev_center_catalogs"
  value       = module.dev_center_catalogs.dev_center_catalogs_dev_center_id
}

output "dev_center_catalogs_name" {
  description = "Map of name values across all dev_center_catalogs, keyed the same as var.dev_center_catalogs"
  value       = module.dev_center_catalogs.dev_center_catalogs_name
}

output "dev_center_catalogs_resource_group_name" {
  description = "Map of resource_group_name values across all dev_center_catalogs, keyed the same as var.dev_center_catalogs"
  value       = module.dev_center_catalogs.dev_center_catalogs_resource_group_name
}

# --- azurerm_dev_center_dev_box_definition ---
output "dev_center_dev_box_definitions_id" {
  description = "Map of id values across all dev_center_dev_box_definitions, keyed the same as var.dev_center_dev_box_definitions"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_id
}

output "dev_center_dev_box_definitions_dev_center_id" {
  description = "Map of dev_center_id values across all dev_center_dev_box_definitions, keyed the same as var.dev_center_dev_box_definitions"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_dev_center_id
}

output "dev_center_dev_box_definitions_hibernate_support_enabled" {
  description = "Map of hibernate_support_enabled values across all dev_center_dev_box_definitions, keyed the same as var.dev_center_dev_box_definitions"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_hibernate_support_enabled
}

output "dev_center_dev_box_definitions_image_reference_id" {
  description = "Map of image_reference_id values across all dev_center_dev_box_definitions, keyed the same as var.dev_center_dev_box_definitions"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_image_reference_id
}

output "dev_center_dev_box_definitions_location" {
  description = "Map of location values across all dev_center_dev_box_definitions, keyed the same as var.dev_center_dev_box_definitions"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_location
}

output "dev_center_dev_box_definitions_name" {
  description = "Map of name values across all dev_center_dev_box_definitions, keyed the same as var.dev_center_dev_box_definitions"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_name
}

output "dev_center_dev_box_definitions_sku_name" {
  description = "Map of sku_name values across all dev_center_dev_box_definitions, keyed the same as var.dev_center_dev_box_definitions"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_sku_name
}

output "dev_center_dev_box_definitions_tags" {
  description = "Map of tags values across all dev_center_dev_box_definitions, keyed the same as var.dev_center_dev_box_definitions"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_tags
}

# --- azurerm_dev_center_environment_type ---
output "dev_center_environment_types_id" {
  description = "Map of id values across all dev_center_environment_types, keyed the same as var.dev_center_environment_types"
  value       = module.dev_center_environment_types.dev_center_environment_types_id
}

output "dev_center_environment_types_dev_center_id" {
  description = "Map of dev_center_id values across all dev_center_environment_types, keyed the same as var.dev_center_environment_types"
  value       = module.dev_center_environment_types.dev_center_environment_types_dev_center_id
}

output "dev_center_environment_types_name" {
  description = "Map of name values across all dev_center_environment_types, keyed the same as var.dev_center_environment_types"
  value       = module.dev_center_environment_types.dev_center_environment_types_name
}

output "dev_center_environment_types_tags" {
  description = "Map of tags values across all dev_center_environment_types, keyed the same as var.dev_center_environment_types"
  value       = module.dev_center_environment_types.dev_center_environment_types_tags
}

# --- azurerm_dev_center_gallery ---
output "dev_center_galleries_id" {
  description = "Map of id values across all dev_center_galleries, keyed the same as var.dev_center_galleries"
  value       = module.dev_center_galleries.dev_center_galleries_id
}

output "dev_center_galleries_dev_center_id" {
  description = "Map of dev_center_id values across all dev_center_galleries, keyed the same as var.dev_center_galleries"
  value       = module.dev_center_galleries.dev_center_galleries_dev_center_id
}

output "dev_center_galleries_name" {
  description = "Map of name values across all dev_center_galleries, keyed the same as var.dev_center_galleries"
  value       = module.dev_center_galleries.dev_center_galleries_name
}

output "dev_center_galleries_shared_gallery_id" {
  description = "Map of shared_gallery_id values across all dev_center_galleries, keyed the same as var.dev_center_galleries"
  value       = module.dev_center_galleries.dev_center_galleries_shared_gallery_id
}

# --- azurerm_dev_center_project ---
output "dev_center_projects_id" {
  description = "Map of id values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_id
}

output "dev_center_projects_description" {
  description = "Map of description values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_description
}

output "dev_center_projects_dev_center_id" {
  description = "Map of dev_center_id values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_dev_center_id
}

output "dev_center_projects_dev_center_uri" {
  description = "Map of dev_center_uri values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_dev_center_uri
}

output "dev_center_projects_identity" {
  description = "Map of identity values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_identity
}

output "dev_center_projects_location" {
  description = "Map of location values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_location
}

output "dev_center_projects_maximum_dev_boxes_per_user" {
  description = "Map of maximum_dev_boxes_per_user values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_maximum_dev_boxes_per_user
}

output "dev_center_projects_name" {
  description = "Map of name values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_name
}

output "dev_center_projects_resource_group_name" {
  description = "Map of resource_group_name values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_resource_group_name
}

output "dev_center_projects_tags" {
  description = "Map of tags values across all dev_center_projects, keyed the same as var.dev_center_projects"
  value       = module.dev_center_projects.dev_center_projects_tags
}

# --- azurerm_dev_center_project_environment_type ---
output "dev_center_project_environment_types_id" {
  description = "Map of id values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_id
}

output "dev_center_project_environment_types_creator_role_assignment_roles" {
  description = "Map of creator_role_assignment_roles values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_creator_role_assignment_roles
}

output "dev_center_project_environment_types_deployment_target_id" {
  description = "Map of deployment_target_id values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_deployment_target_id
}

output "dev_center_project_environment_types_dev_center_project_id" {
  description = "Map of dev_center_project_id values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_dev_center_project_id
}

output "dev_center_project_environment_types_identity" {
  description = "Map of identity values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_identity
}

output "dev_center_project_environment_types_location" {
  description = "Map of location values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_location
}

output "dev_center_project_environment_types_name" {
  description = "Map of name values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_name
}

output "dev_center_project_environment_types_tags" {
  description = "Map of tags values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_tags
}

output "dev_center_project_environment_types_user_role_assignment" {
  description = "Map of user_role_assignment values across all dev_center_project_environment_types, keyed the same as var.dev_center_project_environment_types"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types_user_role_assignment
}

# --- azurerm_dev_center_project_pool ---
output "dev_center_project_pools_id" {
  description = "Map of id values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_id
}

output "dev_center_project_pools_dev_box_definition_name" {
  description = "Map of dev_box_definition_name values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_dev_box_definition_name
}

output "dev_center_project_pools_dev_center_attached_network_name" {
  description = "Map of dev_center_attached_network_name values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_dev_center_attached_network_name
}

output "dev_center_project_pools_dev_center_project_id" {
  description = "Map of dev_center_project_id values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_dev_center_project_id
}

output "dev_center_project_pools_local_administrator_enabled" {
  description = "Map of local_administrator_enabled values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_local_administrator_enabled
}

output "dev_center_project_pools_location" {
  description = "Map of location values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_location
}

output "dev_center_project_pools_managed_virtual_network_regions" {
  description = "Map of managed_virtual_network_regions values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_managed_virtual_network_regions
}

output "dev_center_project_pools_name" {
  description = "Map of name values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_name
}

output "dev_center_project_pools_single_sign_on_enabled" {
  description = "Map of single_sign_on_enabled values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_single_sign_on_enabled
}

output "dev_center_project_pools_stop_on_disconnect_grace_period_minutes" {
  description = "Map of stop_on_disconnect_grace_period_minutes values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_stop_on_disconnect_grace_period_minutes
}

output "dev_center_project_pools_tags" {
  description = "Map of tags values across all dev_center_project_pools, keyed the same as var.dev_center_project_pools"
  value       = module.dev_center_project_pools.dev_center_project_pools_tags
}


