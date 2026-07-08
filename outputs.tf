# --- azurerm_dev_center ---
output "dev_centers" {
  description = "All dev_center resources"
  value       = module.dev_centers.dev_centers
}
output "dev_centers_dev_center_uri" {
  description = "List of dev_center_uri values across all dev_centers"
  value       = [for k, v in module.dev_centers.dev_centers : v.dev_center_uri]
}
output "dev_centers_identity" {
  description = "List of identity values across all dev_centers"
  value       = [for k, v in module.dev_centers.dev_centers : v.identity]
}
output "dev_centers_location" {
  description = "List of location values across all dev_centers"
  value       = [for k, v in module.dev_centers.dev_centers : v.location]
}
output "dev_centers_name" {
  description = "List of name values across all dev_centers"
  value       = [for k, v in module.dev_centers.dev_centers : v.name]
}
output "dev_centers_project_catalog_item_sync_enabled" {
  description = "List of project_catalog_item_sync_enabled values across all dev_centers"
  value       = [for k, v in module.dev_centers.dev_centers : v.project_catalog_item_sync_enabled]
}
output "dev_centers_resource_group_name" {
  description = "List of resource_group_name values across all dev_centers"
  value       = [for k, v in module.dev_centers.dev_centers : v.resource_group_name]
}
output "dev_centers_tags" {
  description = "List of tags values across all dev_centers"
  value       = [for k, v in module.dev_centers.dev_centers : v.tags]
}


# --- azurerm_dev_center_attached_network ---
output "dev_center_attached_networks" {
  description = "All dev_center_attached_network resources"
  value       = module.dev_center_attached_networks.dev_center_attached_networks
}
output "dev_center_attached_networks_dev_center_id" {
  description = "List of dev_center_id values across all dev_center_attached_networks"
  value       = [for k, v in module.dev_center_attached_networks.dev_center_attached_networks : v.dev_center_id]
}
output "dev_center_attached_networks_name" {
  description = "List of name values across all dev_center_attached_networks"
  value       = [for k, v in module.dev_center_attached_networks.dev_center_attached_networks : v.name]
}
output "dev_center_attached_networks_network_connection_id" {
  description = "List of network_connection_id values across all dev_center_attached_networks"
  value       = [for k, v in module.dev_center_attached_networks.dev_center_attached_networks : v.network_connection_id]
}


# --- azurerm_dev_center_catalog ---
output "dev_center_catalogs" {
  description = "All dev_center_catalog resources"
  value       = module.dev_center_catalogs.dev_center_catalogs
}
output "dev_center_catalogs_catalog_adogit" {
  description = "List of catalog_adogit values across all dev_center_catalogs"
  value       = [for k, v in module.dev_center_catalogs.dev_center_catalogs : v.catalog_adogit]
}
output "dev_center_catalogs_catalog_github" {
  description = "List of catalog_github values across all dev_center_catalogs"
  value       = [for k, v in module.dev_center_catalogs.dev_center_catalogs : v.catalog_github]
}
output "dev_center_catalogs_dev_center_id" {
  description = "List of dev_center_id values across all dev_center_catalogs"
  value       = [for k, v in module.dev_center_catalogs.dev_center_catalogs : v.dev_center_id]
}
output "dev_center_catalogs_name" {
  description = "List of name values across all dev_center_catalogs"
  value       = [for k, v in module.dev_center_catalogs.dev_center_catalogs : v.name]
}
output "dev_center_catalogs_resource_group_name" {
  description = "List of resource_group_name values across all dev_center_catalogs"
  value       = [for k, v in module.dev_center_catalogs.dev_center_catalogs : v.resource_group_name]
}


# --- azurerm_dev_center_dev_box_definition ---
output "dev_center_dev_box_definitions" {
  description = "All dev_center_dev_box_definition resources"
  value       = module.dev_center_dev_box_definitions.dev_center_dev_box_definitions
}
output "dev_center_dev_box_definitions_dev_center_id" {
  description = "List of dev_center_id values across all dev_center_dev_box_definitions"
  value       = [for k, v in module.dev_center_dev_box_definitions.dev_center_dev_box_definitions : v.dev_center_id]
}
output "dev_center_dev_box_definitions_hibernate_support_enabled" {
  description = "List of hibernate_support_enabled values across all dev_center_dev_box_definitions"
  value       = [for k, v in module.dev_center_dev_box_definitions.dev_center_dev_box_definitions : v.hibernate_support_enabled]
}
output "dev_center_dev_box_definitions_image_reference_id" {
  description = "List of image_reference_id values across all dev_center_dev_box_definitions"
  value       = [for k, v in module.dev_center_dev_box_definitions.dev_center_dev_box_definitions : v.image_reference_id]
}
output "dev_center_dev_box_definitions_location" {
  description = "List of location values across all dev_center_dev_box_definitions"
  value       = [for k, v in module.dev_center_dev_box_definitions.dev_center_dev_box_definitions : v.location]
}
output "dev_center_dev_box_definitions_name" {
  description = "List of name values across all dev_center_dev_box_definitions"
  value       = [for k, v in module.dev_center_dev_box_definitions.dev_center_dev_box_definitions : v.name]
}
output "dev_center_dev_box_definitions_sku_name" {
  description = "List of sku_name values across all dev_center_dev_box_definitions"
  value       = [for k, v in module.dev_center_dev_box_definitions.dev_center_dev_box_definitions : v.sku_name]
}
output "dev_center_dev_box_definitions_tags" {
  description = "List of tags values across all dev_center_dev_box_definitions"
  value       = [for k, v in module.dev_center_dev_box_definitions.dev_center_dev_box_definitions : v.tags]
}


# --- azurerm_dev_center_environment_type ---
output "dev_center_environment_types" {
  description = "All dev_center_environment_type resources"
  value       = module.dev_center_environment_types.dev_center_environment_types
}
output "dev_center_environment_types_dev_center_id" {
  description = "List of dev_center_id values across all dev_center_environment_types"
  value       = [for k, v in module.dev_center_environment_types.dev_center_environment_types : v.dev_center_id]
}
output "dev_center_environment_types_name" {
  description = "List of name values across all dev_center_environment_types"
  value       = [for k, v in module.dev_center_environment_types.dev_center_environment_types : v.name]
}
output "dev_center_environment_types_tags" {
  description = "List of tags values across all dev_center_environment_types"
  value       = [for k, v in module.dev_center_environment_types.dev_center_environment_types : v.tags]
}


# --- azurerm_dev_center_gallery ---
output "dev_center_galleries" {
  description = "All dev_center_gallery resources"
  value       = module.dev_center_galleries.dev_center_galleries
}
output "dev_center_galleries_dev_center_id" {
  description = "List of dev_center_id values across all dev_center_galleries"
  value       = [for k, v in module.dev_center_galleries.dev_center_galleries : v.dev_center_id]
}
output "dev_center_galleries_name" {
  description = "List of name values across all dev_center_galleries"
  value       = [for k, v in module.dev_center_galleries.dev_center_galleries : v.name]
}
output "dev_center_galleries_shared_gallery_id" {
  description = "List of shared_gallery_id values across all dev_center_galleries"
  value       = [for k, v in module.dev_center_galleries.dev_center_galleries : v.shared_gallery_id]
}


# --- azurerm_dev_center_project ---
output "dev_center_projects" {
  description = "All dev_center_project resources"
  value       = module.dev_center_projects.dev_center_projects
}
output "dev_center_projects_description" {
  description = "List of description values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.description]
}
output "dev_center_projects_dev_center_id" {
  description = "List of dev_center_id values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.dev_center_id]
}
output "dev_center_projects_dev_center_uri" {
  description = "List of dev_center_uri values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.dev_center_uri]
}
output "dev_center_projects_identity" {
  description = "List of identity values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.identity]
}
output "dev_center_projects_location" {
  description = "List of location values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.location]
}
output "dev_center_projects_maximum_dev_boxes_per_user" {
  description = "List of maximum_dev_boxes_per_user values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.maximum_dev_boxes_per_user]
}
output "dev_center_projects_name" {
  description = "List of name values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.name]
}
output "dev_center_projects_resource_group_name" {
  description = "List of resource_group_name values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.resource_group_name]
}
output "dev_center_projects_tags" {
  description = "List of tags values across all dev_center_projects"
  value       = [for k, v in module.dev_center_projects.dev_center_projects : v.tags]
}


# --- azurerm_dev_center_project_environment_type ---
output "dev_center_project_environment_types" {
  description = "All dev_center_project_environment_type resources"
  value       = module.dev_center_project_environment_types.dev_center_project_environment_types
}
output "dev_center_project_environment_types_creator_role_assignment_roles" {
  description = "List of creator_role_assignment_roles values across all dev_center_project_environment_types"
  value       = [for k, v in module.dev_center_project_environment_types.dev_center_project_environment_types : v.creator_role_assignment_roles]
}
output "dev_center_project_environment_types_deployment_target_id" {
  description = "List of deployment_target_id values across all dev_center_project_environment_types"
  value       = [for k, v in module.dev_center_project_environment_types.dev_center_project_environment_types : v.deployment_target_id]
}
output "dev_center_project_environment_types_dev_center_project_id" {
  description = "List of dev_center_project_id values across all dev_center_project_environment_types"
  value       = [for k, v in module.dev_center_project_environment_types.dev_center_project_environment_types : v.dev_center_project_id]
}
output "dev_center_project_environment_types_identity" {
  description = "List of identity values across all dev_center_project_environment_types"
  value       = [for k, v in module.dev_center_project_environment_types.dev_center_project_environment_types : v.identity]
}
output "dev_center_project_environment_types_location" {
  description = "List of location values across all dev_center_project_environment_types"
  value       = [for k, v in module.dev_center_project_environment_types.dev_center_project_environment_types : v.location]
}
output "dev_center_project_environment_types_name" {
  description = "List of name values across all dev_center_project_environment_types"
  value       = [for k, v in module.dev_center_project_environment_types.dev_center_project_environment_types : v.name]
}
output "dev_center_project_environment_types_tags" {
  description = "List of tags values across all dev_center_project_environment_types"
  value       = [for k, v in module.dev_center_project_environment_types.dev_center_project_environment_types : v.tags]
}
output "dev_center_project_environment_types_user_role_assignment" {
  description = "List of user_role_assignment values across all dev_center_project_environment_types"
  value       = [for k, v in module.dev_center_project_environment_types.dev_center_project_environment_types : v.user_role_assignment]
}


# --- azurerm_dev_center_project_pool ---
output "dev_center_project_pools" {
  description = "All dev_center_project_pool resources"
  value       = module.dev_center_project_pools.dev_center_project_pools
}
output "dev_center_project_pools_dev_box_definition_name" {
  description = "List of dev_box_definition_name values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.dev_box_definition_name]
}
output "dev_center_project_pools_dev_center_attached_network_name" {
  description = "List of dev_center_attached_network_name values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.dev_center_attached_network_name]
}
output "dev_center_project_pools_dev_center_project_id" {
  description = "List of dev_center_project_id values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.dev_center_project_id]
}
output "dev_center_project_pools_local_administrator_enabled" {
  description = "List of local_administrator_enabled values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.local_administrator_enabled]
}
output "dev_center_project_pools_location" {
  description = "List of location values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.location]
}
output "dev_center_project_pools_managed_virtual_network_regions" {
  description = "List of managed_virtual_network_regions values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.managed_virtual_network_regions]
}
output "dev_center_project_pools_name" {
  description = "List of name values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.name]
}
output "dev_center_project_pools_single_sign_on_enabled" {
  description = "List of single_sign_on_enabled values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.single_sign_on_enabled]
}
output "dev_center_project_pools_stop_on_disconnect_grace_period_minutes" {
  description = "List of stop_on_disconnect_grace_period_minutes values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.stop_on_disconnect_grace_period_minutes]
}
output "dev_center_project_pools_tags" {
  description = "List of tags values across all dev_center_project_pools"
  value       = [for k, v in module.dev_center_project_pools.dev_center_project_pools : v.tags]
}



