view: customer_invoice_payment_types {
  sql_table_name: dbo.CustomerInvoicePaymentTypes ;;

  dimension: payment_type_description {
    type: string
    sql: ${TABLE}.PaymentTypeDescription ;;
  }

  dimension: payment_type_id {
    type: number
    sql: ${TABLE}.PaymentTypeID ;;
  }

  dimension: payment_type_name {
    type: string
    sql: ${TABLE}.PaymentTypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [payment_type_name]
  }
}
