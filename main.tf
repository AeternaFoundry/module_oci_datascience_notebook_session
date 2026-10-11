resource "oci_datascience_notebook_session" "datascience_notebook_sessions" {
  for_each = var.datascience_notebook_sessions

  compartment_id = each.value.compartment_id
  project_id     = each.value.project_id
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags
  state          = each.value.state

  dynamic "notebook_session_config_details" {
    for_each = each.value.notebook_session_config_details != null ? [each.value.notebook_session_config_details] : []
    content {
      block_storage_size_in_gbs = notebook_session_config_details.value.block_storage_size_in_gbs
      capacity_reservation_id   = notebook_session_config_details.value.capacity_reservation_id
      dynamic "notebook_session_shape_config_details" {
        for_each = notebook_session_config_details.value.notebook_session_shape_config_details != null ? [notebook_session_config_details.value.notebook_session_shape_config_details] : []
        content {
          cpu_baseline  = notebook_session_shape_config_details.value.cpu_baseline
          memory_in_gbs = notebook_session_shape_config_details.value.memory_in_gbs
          ocpus         = notebook_session_shape_config_details.value.ocpus
        }
      }
      private_endpoint_id = notebook_session_config_details.value.private_endpoint_id
      shape               = notebook_session_config_details.value.shape
      subnet_id           = notebook_session_config_details.value.subnet_id
    }
  }

  dynamic "notebook_session_configuration_details" {
    for_each = each.value.notebook_session_configuration_details != null ? [each.value.notebook_session_configuration_details] : []
    content {
      block_storage_size_in_gbs = notebook_session_configuration_details.value.block_storage_size_in_gbs
      capacity_reservation_id   = notebook_session_configuration_details.value.capacity_reservation_id
      dynamic "notebook_session_shape_config_details" {
        for_each = notebook_session_configuration_details.value.notebook_session_shape_config_details != null ? [notebook_session_configuration_details.value.notebook_session_shape_config_details] : []
        content {
          cpu_baseline  = notebook_session_shape_config_details.value.cpu_baseline
          memory_in_gbs = notebook_session_shape_config_details.value.memory_in_gbs
          ocpus         = notebook_session_shape_config_details.value.ocpus
        }
      }
      private_endpoint_id = notebook_session_configuration_details.value.private_endpoint_id
      shape               = notebook_session_configuration_details.value.shape
      subnet_id           = notebook_session_configuration_details.value.subnet_id
    }
  }

  dynamic "notebook_session_runtime_config_details" {
    for_each = each.value.notebook_session_runtime_config_details != null ? [each.value.notebook_session_runtime_config_details] : []
    content {
      custom_environment_variables = notebook_session_runtime_config_details.value.custom_environment_variables
      dynamic "notebook_session_git_config_details" {
        for_each = notebook_session_runtime_config_details.value.notebook_session_git_config_details != null ? [notebook_session_runtime_config_details.value.notebook_session_git_config_details] : []
        content {
          dynamic "notebook_session_git_repo_config_collection" {
            for_each = notebook_session_git_config_details.value.notebook_session_git_repo_config_collection != null ? notebook_session_git_config_details.value.notebook_session_git_repo_config_collection : []
            content {
              url = notebook_session_git_repo_config_collection.value.url
            }
          }
        }
      }
    }
  }

  dynamic "notebook_session_storage_mount_configuration_details_list" {
    for_each = each.value.notebook_session_storage_mount_configuration_details_list != null ? each.value.notebook_session_storage_mount_configuration_details_list : []
    content {
      bucket                     = notebook_session_storage_mount_configuration_details_list.value.bucket
      destination_directory_name = notebook_session_storage_mount_configuration_details_list.value.destination_directory_name
      destination_path           = notebook_session_storage_mount_configuration_details_list.value.destination_path
      export_id                  = notebook_session_storage_mount_configuration_details_list.value.export_id
      mount_target_id            = notebook_session_storage_mount_configuration_details_list.value.mount_target_id
      namespace                  = notebook_session_storage_mount_configuration_details_list.value.namespace
      prefix                     = notebook_session_storage_mount_configuration_details_list.value.prefix
      storage_type               = notebook_session_storage_mount_configuration_details_list.value.storage_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

