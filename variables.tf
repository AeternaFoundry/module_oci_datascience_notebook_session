variable "datascience_notebook_sessions" {
  description = <<EOT
Map of datascience_notebook_sessions, attributes below
Required:
    - compartment_id
    - project_id
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - state
    - notebook_session_config_details (block):
        - block_storage_size_in_gbs (optional)
        - capacity_reservation_id (optional)
        - notebook_session_shape_config_details (optional, block):
            - cpu_baseline (optional)
            - memory_in_gbs (optional)
            - ocpus (optional)
        - private_endpoint_id (optional)
        - shape (required)
        - subnet_id (optional)
    - notebook_session_configuration_details (block):
        - block_storage_size_in_gbs (optional)
        - capacity_reservation_id (optional)
        - notebook_session_shape_config_details (optional, block):
            - cpu_baseline (optional)
            - memory_in_gbs (optional)
            - ocpus (optional)
        - private_endpoint_id (optional)
        - shape (required)
        - subnet_id (required)
    - notebook_session_runtime_config_details (block):
        - custom_environment_variables (optional)
        - notebook_session_git_config_details (optional, block):
            - notebook_session_git_repo_config_collection (optional, block):
                - url (required)
    - notebook_session_storage_mount_configuration_details_list (block):
        - bucket (optional)
        - destination_directory_name (required)
        - destination_path (optional)
        - export_id (optional)
        - mount_target_id (optional)
        - namespace (optional)
        - prefix (optional)
        - storage_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    project_id     = string
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    state          = optional(string)
    notebook_session_config_details = optional(object({
      block_storage_size_in_gbs = optional(number)
      capacity_reservation_id   = optional(string)
      notebook_session_shape_config_details = optional(object({
        cpu_baseline  = optional(string)
        memory_in_gbs = optional(number)
        ocpus         = optional(number)
      }))
      private_endpoint_id = optional(string)
      shape               = string
      subnet_id           = optional(string)
    }))
    notebook_session_configuration_details = optional(object({
      block_storage_size_in_gbs = optional(number)
      capacity_reservation_id   = optional(string)
      notebook_session_shape_config_details = optional(object({
        cpu_baseline  = optional(string)
        memory_in_gbs = optional(number)
        ocpus         = optional(number)
      }))
      private_endpoint_id = optional(string)
      shape               = string
      subnet_id           = string
    }))
    notebook_session_runtime_config_details = optional(object({
      custom_environment_variables = optional(map(string))
      notebook_session_git_config_details = optional(object({
        notebook_session_git_repo_config_collection = optional(list(object({
          url = string
        })))
      }))
    }))
    notebook_session_storage_mount_configuration_details_list = optional(list(object({
      bucket                     = optional(string)
      destination_directory_name = string
      destination_path           = optional(string)
      export_id                  = optional(string)
      mount_target_id            = optional(string)
      namespace                  = optional(string)
      prefix                     = optional(string)
      storage_type               = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datascience_notebook_sessions : (
        v.notebook_session_storage_mount_configuration_details_list == null || alltrue([for item in v.notebook_session_storage_mount_configuration_details_list : (contains([for v in ["FILE_STORAGE", "OBJECT_STORAGE"] : lower(v)], lower(item.storage_type)))])
      )
    ])
    error_message = "must be one of: \"FILE_STORAGE\", \"OBJECT_STORAGE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_notebook_sessions : (
        v.state == null || (contains([for v in ["ACTIVE", "INACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"ACTIVE\", \"INACTIVE\""
  }
}

