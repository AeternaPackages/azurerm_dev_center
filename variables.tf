variable "dev_centers" {
  description = <<EOT
Map of dev_centers, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - project_catalog_item_sync_enabled
    - tags
    - identity (block)
Nested dev_center_attached_networks (azurerm_dev_center_attached_network):
    Required:
        - name
        - network_connection_id
Nested dev_center_catalogs (azurerm_dev_center_catalog):
    Required:
        - name
        - resource_group_name
    Optional:
        - catalog_adogit (block)
        - catalog_github (block)
Nested dev_center_dev_box_definitions (azurerm_dev_center_dev_box_definition):
    Required:
        - image_reference_id
        - location
        - name
        - sku_name
    Optional:
        - hibernate_support_enabled
        - tags
Nested dev_center_environment_types (azurerm_dev_center_environment_type):
    Required:
        - name
    Optional:
        - tags
Nested dev_center_galleries (azurerm_dev_center_gallery):
    Required:
        - name
        - shared_gallery_id
Nested dev_center_projects (azurerm_dev_center_project):
    Required:
        - location
        - name
        - resource_group_name
    Optional:
        - description
        - maximum_dev_boxes_per_user
        - tags
        - identity (block)
    Nested dev_center_project_environment_types (azurerm_dev_center_project_environment_type):
        Required:
            - deployment_target_id
            - location
            - name
            - identity (block)
        Optional:
            - creator_role_assignment_roles
            - tags
            - user_role_assignment (block)
    Nested dev_center_project_pools (azurerm_dev_center_project_pool):
        Required:
            - dev_box_definition_name
            - dev_center_attached_network_name
            - local_administrator_enabled
            - location
            - name
        Optional:
            - managed_virtual_network_regions
            - single_sign_on_enabled
            - stop_on_disconnect_grace_period_minutes
            - tags
EOT

  type = map(object({
    location                          = string
    name                              = string
    resource_group_name               = string
    project_catalog_item_sync_enabled = optional(bool)
    tags                              = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    dev_center_attached_networks = optional(map(object({
      name                  = string
      network_connection_id = string
    })))
    dev_center_catalogs = optional(map(object({
      name                = string
      resource_group_name = string
      catalog_adogit = optional(object({
        branch            = string
        key_vault_key_url = string
        path              = string
        uri               = string
      }))
      catalog_github = optional(object({
        branch            = string
        key_vault_key_url = string
        path              = string
        uri               = string
      }))
    })))
    dev_center_dev_box_definitions = optional(map(object({
      image_reference_id        = string
      location                  = string
      name                      = string
      sku_name                  = string
      hibernate_support_enabled = optional(bool)
      tags                      = optional(map(string))
    })))
    dev_center_environment_types = optional(map(object({
      name = string
      tags = optional(map(string))
    })))
    dev_center_galleries = optional(map(object({
      name              = string
      shared_gallery_id = string
    })))
    dev_center_projects = optional(map(object({
      location                   = string
      name                       = string
      resource_group_name        = string
      description                = optional(string)
      maximum_dev_boxes_per_user = optional(number)
      tags                       = optional(map(string))
      identity = optional(object({
        identity_ids = optional(set(string))
        type         = string
      }))
      dev_center_project_environment_types = optional(map(object({
        deployment_target_id          = string
        location                      = string
        name                          = string
        creator_role_assignment_roles = optional(set(string))
        tags                          = optional(map(string))
        identity = object({
          identity_ids = optional(set(string))
          type         = string
        })
        user_role_assignment = optional(list(object({
          roles   = set(string)
          user_id = string
        })))
      })))
      dev_center_project_pools = optional(map(object({
        dev_box_definition_name                 = string
        dev_center_attached_network_name        = string
        local_administrator_enabled             = bool
        location                                = string
        name                                    = string
        managed_virtual_network_regions         = optional(list(string))
        single_sign_on_enabled                  = optional(bool)
        stop_on_disconnect_grace_period_minutes = optional(number)
        tags                                    = optional(map(string))
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.dev_centers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.dev_centers : [for kk in keys(coalesce(v0.dev_center_attached_networks, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.dev_centers : [for kk in keys(coalesce(v0.dev_center_catalogs, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.dev_centers : [for kk in keys(coalesce(v0.dev_center_dev_box_definitions, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.dev_centers : [for kk in keys(coalesce(v0.dev_center_environment_types, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.dev_centers : [for kk in keys(coalesce(v0.dev_center_galleries, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.dev_centers : [for kk in keys(coalesce(v0.dev_center_projects, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.dev_centers : [for k1, v1 in coalesce(v0.dev_center_projects, {}) : [for kk in keys(coalesce(v1.dev_center_project_environment_types, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.dev_centers : [for k1, v1 in coalesce(v0.dev_center_projects, {}) : [for kk in keys(coalesce(v1.dev_center_project_pools, {})) : !strcontains(kk, "/")]]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
