connection: "travisoft"

# include all the views
include: "/views/**/*.view"

datagroup: travisoft_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: travisoft_poc_default_datagroup

explore: accounting_disbursement_type {}

explore: accounting_invoice {}

explore: accounting_invoice_line_item {
  join: benefit_plans {
    type: left_outer
    sql_on: ${accounting_invoice_line_item.benefit_plan_id} = ${benefit_plans.benefit_plan_id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${benefit_plans.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_costing_type_id} = ${benefit_plan_costing_types.benefit_plan_costing_type_id} ;;
    relationship: many_to_one
  }
}

explore: accounting_payment {}

explore: accounting_payment_method {}

explore: accounting_payment_subsidy {
  join: benefit_plans {
    type: left_outer
    sql_on: ${accounting_payment_subsidy.benefit_plan_id} = ${benefit_plans.benefit_plan_id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${benefit_plans.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_costing_type_id} = ${benefit_plan_costing_types.benefit_plan_costing_type_id} ;;
    relationship: many_to_one
  }
}

explore: accounting_register {
  join: qbgroups {
    type: left_outer
    sql_on: ${accounting_register.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: accounting_register_payment_details {
  join: accounting_register {
    type: left_outer
    sql_on: ${accounting_register_payment_details.accounting_register_id} = ${accounting_register.accounting_register_id} ;;
    relationship: many_to_one
  }

  join: qbgroups {
    type: left_outer
    sql_on: ${accounting_register.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: address_types {}

explore: addresses {
  join: address_types {
    type: left_outer
    sql_on: ${addresses.address_type_id} = ${address_types.address_type_id} ;;
    relationship: many_to_one
  }
}

explore: automated_qbpayments {
  join: qbgroups {
    type: left_outer
    sql_on: ${automated_qbpayments.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: bank_accounts {
  join: module_types {
    type: left_outer
    sql_on: ${bank_accounts.module_type_id} = ${module_types.module_type_id} ;;
    relationship: many_to_one
  }
}

explore: benefit_plan_costing_types {}

explore: benefit_plan_rate_expiration {
  join: benefit_plans {
    type: left_outer
    sql_on: ${benefit_plan_rate_expiration.benefit_plan_id} = ${benefit_plans.benefit_plan_id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${benefit_plans.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_costing_type_id} = ${benefit_plan_costing_types.benefit_plan_costing_type_id} ;;
    relationship: many_to_one
  }
}

explore: benefit_plan_types {}

explore: benefit_plans {
  join: sponsors {
    type: left_outer
    sql_on: ${benefit_plans.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_costing_type_id} = ${benefit_plan_costing_types.benefit_plan_costing_type_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_matrix_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_matrix_costing_type_id} = ${benefit_plan_matrix_costing_types.benefit_plan_matrix_costing_type_id} ;;
    relationship: many_to_one
  }
}

explore: benefit_rate_structures {
  join: benefit_plans {
    type: left_outer
    sql_on: ${benefit_rate_structures.benefit_plan_id} = ${benefit_plans.benefit_plan_id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${benefit_plans.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_costing_type_id} = ${benefit_plan_costing_types.benefit_plan_costing_type_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_matrix_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_matrix_costing_type_id} = ${benefit_plan_matrix_costing_types.benefit_plan_matrix_costing_type_id} ;;
    relationship: many_to_one
  }
}

explore: benefit_rate_tiers {}

explore: benefit_subsidy {
  join: qbgroups {
    type: left_outer
    sql_on: ${benefit_subsidy.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: benefit_plans {
    type: left_outer
    sql_on: ${benefit_subsidy.benefit_plan_id} = ${benefit_plans.benefit_plan_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${benefit_plans.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_costing_type_id} = ${benefit_plan_costing_types.benefit_plan_costing_type_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_matrix_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_matrix_costing_type_id} = ${benefit_plan_matrix_costing_types.benefit_plan_matrix_costing_type_id} ;;
    relationship: many_to_one
  }
}

explore: companies {}

explore: contacts {}

explore: correspondence_storage {
  join: qbgroups {
    type: left_outer
    sql_on: ${correspondence_storage.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${correspondence_storage.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: customer_invoice_broker_companies {}

explore: customer_invoice_brokers {}

explore: customer_invoice_fee_types {}

explore: customer_invoice_fees {}

explore: customer_invoice_invoice_line_item_details {}

explore: customer_invoice_invoice_line_items {}

explore: customer_invoice_invoice_runs {}

explore: customer_invoice_invoice_types {}

explore: customer_invoice_invoices {
  join: module_types {
    type: left_outer
    sql_on: ${customer_invoice_invoices.module_type_id} = ${module_types.module_type_id} ;;
    relationship: many_to_one
  }
}

explore: customer_invoice_payment_types {}

explore: customer_invoice_register {
  join: module_types {
    type: left_outer
    sql_on: ${customer_invoice_register.module_type_id} = ${module_types.module_type_id} ;;
    relationship: many_to_one
  }
}

explore: customer_invoice_register_types {}

explore: discrepancy_type {}

explore: electronic_transaction_type {}

explore: email_addresses {}

explore: letter_template_type {}

explore: max_state_admin_fees {}

explore: merchant_setup_type {}

explore: module_types {}

explore: parameter_groups {}

explore: parameter_module_data {
  join: module_types {
    type: left_outer
    sql_on: ${parameter_module_data.module_type_id} = ${module_types.module_type_id} ;;
    relationship: many_to_one
  }

  join: parameter_types {
    type: left_outer
    sql_on: ${parameter_module_data.parameter_type_id} = ${parameter_types.parameter_type_id} ;;
    relationship: many_to_one
  }

  join: parameter_groups {
    type: left_outer
    sql_on: ${parameter_module_data.parameter_group_id} = ${parameter_groups.parameter_group_id} ;;
    relationship: many_to_one
  }
}

explore: parameter_options {
  join: parameter_types {
    type: left_outer
    sql_on: ${parameter_options.parameter_type_id} = ${parameter_types.parameter_type_id} ;;
    relationship: many_to_one
  }
}

explore: parameter_types {}

explore: phone_types {}

explore: phones {
  join: phone_types {
    type: left_outer
    sql_on: ${phones.phone_type_id} = ${phone_types.phone_type_id} ;;
    relationship: many_to_one
  }
}

explore: qb {
  join: qbtypes {
    type: left_outer
    sql_on: ${qb.qbtype_id} = ${qbtypes.qbtype_id} ;;
    relationship: many_to_one
  }

  join: qbgroups {
    type: left_outer
    sql_on: ${qb.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: qbbenefit_assignments {
  join: benefit_plans {
    type: left_outer
    sql_on: ${qbbenefit_assignments.benefit_plan_id} = ${benefit_plans.benefit_plan_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_costing_types {
    type: left_outer
    sql_on: ${qbbenefit_assignments.benefit_plan_costing_type_id} = ${benefit_plan_costing_types.benefit_plan_costing_type_id} ;;
    relationship: many_to_one
  }

  join: sponsors {
    type: left_outer
    sql_on: ${benefit_plans.sponsor_id} = ${sponsors.sponsor_id} ;;
    relationship: many_to_one
  }

  join: benefit_plan_matrix_costing_types {
    type: left_outer
    sql_on: ${benefit_plans.benefit_plan_matrix_costing_type_id} = ${benefit_plan_matrix_costing_types.benefit_plan_matrix_costing_type_id} ;;
    relationship: many_to_one
  }
}

explore: qbdate_tracking {
  join: qbdate_types {
    type: left_outer
    sql_on: ${qbdate_tracking.qbdate_type_id} = ${qbdate_types.qbdate_type_id} ;;
    relationship: many_to_one
  }

  join: qbhistory {
    type: left_outer
    sql_on: ${qbdate_tracking.qbhistory_id} = ${qbhistory.qbhistory_id} ;;
    relationship: many_to_one
  }

  join: qbgroups {
    type: left_outer
    sql_on: ${qbdate_tracking.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${qbhistory.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: user_types {
    type: left_outer
    sql_on: ${users.user_type_id} = ${user_types.user_type_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: qbdate_types {}

explore: qbevent_assignments {
  join: qbevents {
    type: left_outer
    sql_on: ${qbevent_assignments.qbevent_id} = ${qbevents.qbevent_id} ;;
    relationship: many_to_one
  }
}

explore: qbevent_defaults {
  join: qbevents {
    type: left_outer
    sql_on: ${qbevent_defaults.qbevent_id} = ${qbevents.qbevent_id} ;;
    relationship: many_to_one
  }
}

explore: qbevents {}

explore: qbgroup_associations {}

explore: qbgroup_information_cache {
  join: qbgroups {
    type: left_outer
    sql_on: ${qbgroup_information_cache.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: qbgroup_members {
  join: qbgroups {
    type: left_outer
    sql_on: ${qbgroup_members.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_associations {
    type: left_outer
    sql_on: ${qbgroup_members.qbgroup_association_id} = ${qbgroup_associations.qbgroup_association_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: qbgroup_status {}

explore: qbgroup_status_history {
  join: qbgroups {
    type: left_outer
    sql_on: ${qbgroup_status_history.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroup_status_history.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: qbgroups {
  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: qbhistory {
  join: users {
    type: left_outer
    sql_on: ${qbhistory.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: user_types {
    type: left_outer
    sql_on: ${users.user_type_id} = ${user_types.user_type_id} ;;
    relationship: many_to_one
  }
}

explore: qbhistory_detail {
  join: qbhistory {
    type: left_outer
    sql_on: ${qbhistory_detail.qbhistory_id} = ${qbhistory.qbhistory_id} ;;
    relationship: many_to_one
  }

  join: qbgroups {
    type: left_outer
    sql_on: ${qbhistory_detail.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${qbhistory.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: user_types {
    type: left_outer
    sql_on: ${users.user_type_id} = ${user_types.user_type_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: qbtermination {
  join: qbtermination_reason {
    type: left_outer
    sql_on: ${qbtermination.qbtermination_reason_id} = ${qbtermination_reason.qbtermination_reason_id} ;;
    relationship: many_to_one
  }

  join: qbgroups {
    type: left_outer
    sql_on: ${qbtermination.qbgroup_id} = ${qbgroups.qbgroup_id} ;;
    relationship: many_to_one
  }

  join: qbgroup_status {
    type: left_outer
    sql_on: ${qbgroups.qbgroup_status_id} = ${qbgroup_status.qbgroup_status_id} ;;
    relationship: many_to_one
  }
}

explore: qbtermination_reason {}

explore: qbtypes {}

explore: sponsor_disbursement {
  join: module_types {
    type: left_outer
    sql_on: ${sponsor_disbursement.module_type_id} = ${module_types.module_type_id} ;;
    relationship: many_to_one
  }
}

explore: sponsors {}

explore: sysdiagrams {}

explore: system_information_link_table {
  join: module_types {
    type: left_outer
    sql_on: ${system_information_link_table.module_type_id} = ${module_types.module_type_id} ;;
    relationship: many_to_one
  }
}

explore: system_integrator_keys {}

explore: user_defined_company_fields {}

explore: user_defined_qbfield_value {}

explore: user_types {}

explore: users {
  join: user_types {
    type: left_outer
    sql_on: ${users.user_type_id} = ${user_types.user_type_id} ;;
    relationship: many_to_one
  }
}

explore: web_addresses {}
