view: customer_invoice_fee_types {
  sql_table_name: dbo.CustomerInvoiceFeeTypes ;;

  dimension: fee_type_description {
    type: string
    sql: ${TABLE}.FeeTypeDescription ;;
  }

  dimension: fee_type_id {
    type: number
    sql: ${TABLE}.FeeTypeID ;;
  }

  dimension: fee_type_name {
    type: string
    sql: ${TABLE}.FeeTypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [fee_type_name]
  }
}
