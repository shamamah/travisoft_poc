view: module_types {
  sql_table_name: dbo.ModuleTypes ;;
  drill_fields: [module_type_id]

  dimension: module_type_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ModuleTypeID ;;
  }

  dimension: module_description {
    type: string
    sql: ${TABLE}.ModuleDescription ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      module_type_id,
      bank_accounts.count,
      customer_invoice_invoices.count,
      customer_invoice_register.count,
      parameter_module_data.count,
      sponsor_disbursement.count,
      system_information_link_table.count
    ]
  }
}
