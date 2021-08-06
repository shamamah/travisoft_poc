view: customer_invoice_invoice_types {
  sql_table_name: dbo.CustomerInvoiceInvoiceTypes ;;

  dimension: invoice_type_description {
    type: string
    sql: ${TABLE}.InvoiceTypeDescription ;;
  }

  dimension: invoice_type_id {
    type: number
    sql: ${TABLE}.InvoiceTypeID ;;
  }

  dimension: invoice_type_name {
    type: string
    sql: ${TABLE}.InvoiceTypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [invoice_type_name]
  }
}
