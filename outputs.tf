output "datascience_notebook_sessions_id" {
  description = "Map of id values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no id are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_notebook_sessions_compartment_id" {
  description = "Map of compartment_id values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no compartment_id are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datascience_notebook_sessions_created_by" {
  description = "Map of created_by values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no created_by are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "datascience_notebook_sessions_defined_tags" {
  description = "Map of defined_tags values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no defined_tags are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "datascience_notebook_sessions_display_name" {
  description = "Map of display_name values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no display_name are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "datascience_notebook_sessions_freeform_tags" {
  description = "Map of freeform_tags values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "datascience_notebook_sessions_lifecycle_details" {
  description = "Map of lifecycle_details values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "datascience_notebook_sessions_notebook_session_config_details" {
  description = "Map of notebook_session_config_details values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no notebook_session_config_details are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => one(v.notebook_session_config_details) if v.notebook_session_config_details != null && length(v.notebook_session_config_details) > 0 }
}
output "datascience_notebook_sessions_notebook_session_configuration_details" {
  description = "Map of notebook_session_configuration_details values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no notebook_session_configuration_details are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => one(v.notebook_session_configuration_details) if v.notebook_session_configuration_details != null && length(v.notebook_session_configuration_details) > 0 }
}
output "datascience_notebook_sessions_notebook_session_runtime_config_details" {
  description = "Map of notebook_session_runtime_config_details values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no notebook_session_runtime_config_details are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => one(v.notebook_session_runtime_config_details) if v.notebook_session_runtime_config_details != null && length(v.notebook_session_runtime_config_details) > 0 }
}
output "datascience_notebook_sessions_notebook_session_storage_mount_configuration_details_list" {
  description = "Map of notebook_session_storage_mount_configuration_details_list values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no notebook_session_storage_mount_configuration_details_list are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.notebook_session_storage_mount_configuration_details_list if v.notebook_session_storage_mount_configuration_details_list != null && length(v.notebook_session_storage_mount_configuration_details_list) > 0 }
}
output "datascience_notebook_sessions_notebook_session_url" {
  description = "Map of notebook_session_url values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no notebook_session_url are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.notebook_session_url if v.notebook_session_url != null && length(v.notebook_session_url) > 0 }
}
output "datascience_notebook_sessions_project_id" {
  description = "Map of project_id values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no project_id are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "datascience_notebook_sessions_state" {
  description = "Map of state values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no state are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.state if v.state != null && length(v.state) > 0 }
}
output "datascience_notebook_sessions_time_created" {
  description = "Map of time_created values across all datascience_notebook_sessions, keyed the same as var.datascience_notebook_sessions except keys with no time_created are omitted"
  value       = { for k, v in oci_datascience_notebook_session.datascience_notebook_sessions : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

