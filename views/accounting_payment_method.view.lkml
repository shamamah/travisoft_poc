view: accounting_payment_method {
  sql_table_name: dbo.AccountingPaymentMethod ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: payment_method_id {
    type: number
    sql: ${TABLE}.PaymentMethodID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
