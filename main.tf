locals {
  dev_centers = { for k1, v1 in var.dev_centers : k1 => { identity = v1.identity, location = v1.location, name = v1.name, project_catalog_item_sync_enabled = v1.project_catalog_item_sync_enabled, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  dev_center_attached_networks = merge([
    for k1, v1 in var.dev_centers : {
      for k2, v2 in coalesce(v1.dev_center_attached_networks, {}) :
      "${k1}/${k2}" => merge(v2, {
        dev_center_id = module.dev_centers.dev_centers_id["${k1}"]
      })
    }
  ]...)

  dev_center_catalogs = merge([
    for k1, v1 in var.dev_centers : {
      for k2, v2 in coalesce(v1.dev_center_catalogs, {}) :
      "${k1}/${k2}" => merge(v2, {
        dev_center_id = module.dev_centers.dev_centers_id["${k1}"]
      })
    }
  ]...)

  dev_center_dev_box_definitions = merge([
    for k1, v1 in var.dev_centers : {
      for k2, v2 in coalesce(v1.dev_center_dev_box_definitions, {}) :
      "${k1}/${k2}" => merge(v2, {
        dev_center_id = module.dev_centers.dev_centers_id["${k1}"]
      })
    }
  ]...)

  dev_center_environment_types = merge([
    for k1, v1 in var.dev_centers : {
      for k2, v2 in coalesce(v1.dev_center_environment_types, {}) :
      "${k1}/${k2}" => merge(v2, {
        dev_center_id = module.dev_centers.dev_centers_id["${k1}"]
      })
    }
  ]...)

  dev_center_galleries = merge([
    for k1, v1 in var.dev_centers : {
      for k2, v2 in coalesce(v1.dev_center_galleries, {}) :
      "${k1}/${k2}" => merge(v2, {
        dev_center_id = module.dev_centers.dev_centers_id["${k1}"]
      })
    }
  ]...)

  dev_center_projects = merge([
    for k1, v1 in var.dev_centers : {
      for k2, v2 in coalesce(v1.dev_center_projects, {}) :
      "${k1}/${k2}" => merge(v2, {
        dev_center_id = module.dev_centers.dev_centers_id["${k1}"]
      })
    }
  ]...)

  dev_center_project_environment_types = merge([
    for k1, v1 in var.dev_centers : merge([
      for k2, v2 in coalesce(v1.dev_center_projects, {}) : {
        for k3, v3 in coalesce(v2.dev_center_project_environment_types, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          dev_center_project_id = module.dev_center_projects.dev_center_projects_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  dev_center_project_pools = merge([
    for k1, v1 in var.dev_centers : merge([
      for k2, v2 in coalesce(v1.dev_center_projects, {}) : {
        for k3, v3 in coalesce(v2.dev_center_project_pools, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          dev_center_project_id            = module.dev_center_projects.dev_center_projects_id["${k1}/${k2}"]
          dev_center_attached_network_name = try(module.dev_center_attached_networks.dev_center_attached_networks_name["${k1}/${v3.dev_center_attached_network_name}"], v3.dev_center_attached_network_name)
          dev_box_definition_name          = try(module.dev_center_dev_box_definitions.dev_center_dev_box_definitions_name["${k1}/${v3.dev_box_definition_name}"], v3.dev_box_definition_name)
        })
      }
    ]...)
  ]...)
}

module "dev_centers" {
  source      = "git::https://github.com/AeternaModules/azurerm_dev_center.git?ref=v4.80.0"
  dev_centers = local.dev_centers
}

module "dev_center_attached_networks" {
  source                       = "git::https://github.com/AeternaModules/azurerm_dev_center_attached_network.git?ref=v4.80.0"
  dev_center_attached_networks = local.dev_center_attached_networks
  depends_on                   = [module.dev_centers]
}

module "dev_center_catalogs" {
  source              = "git::https://github.com/AeternaModules/azurerm_dev_center_catalog.git?ref=v4.80.0"
  dev_center_catalogs = local.dev_center_catalogs
  depends_on          = [module.dev_centers]
}

module "dev_center_dev_box_definitions" {
  source                         = "git::https://github.com/AeternaModules/azurerm_dev_center_dev_box_definition.git?ref=v4.80.0"
  dev_center_dev_box_definitions = local.dev_center_dev_box_definitions
  depends_on                     = [module.dev_centers]
}

module "dev_center_environment_types" {
  source                       = "git::https://github.com/AeternaModules/azurerm_dev_center_environment_type.git?ref=v4.80.0"
  dev_center_environment_types = local.dev_center_environment_types
  depends_on                   = [module.dev_centers]
}

module "dev_center_galleries" {
  source               = "git::https://github.com/AeternaModules/azurerm_dev_center_gallery.git?ref=v4.80.0"
  dev_center_galleries = local.dev_center_galleries
  depends_on           = [module.dev_centers]
}

module "dev_center_projects" {
  source              = "git::https://github.com/AeternaModules/azurerm_dev_center_project.git?ref=v4.80.0"
  dev_center_projects = local.dev_center_projects
  depends_on          = [module.dev_centers]
}

module "dev_center_project_environment_types" {
  source                               = "git::https://github.com/AeternaModules/azurerm_dev_center_project_environment_type.git?ref=v4.80.0"
  dev_center_project_environment_types = local.dev_center_project_environment_types
  depends_on                           = [module.dev_center_projects]
}

module "dev_center_project_pools" {
  source                   = "git::https://github.com/AeternaModules/azurerm_dev_center_project_pool.git?ref=v4.80.0"
  dev_center_project_pools = local.dev_center_project_pools
  depends_on               = [module.dev_center_attached_networks, module.dev_center_dev_box_definitions, module.dev_center_projects]
}

