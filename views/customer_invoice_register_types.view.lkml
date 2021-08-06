view: customer_invoice_register_types {
  sql_table_name: dbo.CustomerInvoiceRegisterTypes ;;

  dimension: register_type_description {
    type: string
    sql: ${TABLE}.RegisterTypeDescription ;;
  }

  dimension: register_type_id {
    type: number
    sql: ${TABLE}.RegisterTypeID ;;
  }

  dimension: register_type_name {
    type: string
    sql: ${TABLE}.RegisterTypeName ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  measure: count {
    type: count
    drill_fields: [register_type_name, table_name]
  }
}
