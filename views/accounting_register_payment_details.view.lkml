view: accounting_register_payment_details {
  sql_table_name: dbo.AccountingRegisterPaymentDetails ;;
  drill_fields: [accounting_register_payment_detail_id]

  dimension: accounting_register_payment_detail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AccountingRegisterPaymentDetailID ;;
  }

  dimension: accounting_invoice_line_item_type_id {
    type: number
    sql: ${TABLE}.AccountingInvoiceLineItemTypeID ;;
  }

  dimension: accounting_invoiceline_item_id {
    type: number
    sql: ${TABLE}.AccountingInvoicelineItemID ;;
  }

  dimension: accounting_register_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AccountingRegisterID ;;
  }

  dimension: amount_applied_to_line_item_from_payment {
    type: string
    sql: ${TABLE}.AmountAppliedToLineItemFromPayment ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: line_item_amount {
    type: string
    sql: ${TABLE}.LineItemAmount ;;
  }

  dimension: payment_history_id {
    type: number
    sql: ${TABLE}.PaymentHistoryID ;;
  }

  measure: count {
    type: count
    drill_fields: [accounting_register_payment_detail_id, accounting_register.accounting_register_id]
  }
}
