view: customer_invoice_invoice_line_items {
  sql_table_name: dbo.CustomerInvoiceInvoiceLineItems ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: amount_paid {
    type: string
    sql: ${TABLE}.AmountPaid ;;
  }

  dimension_group: billing_period_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.BillingPeriodEnd ;;
  }

  dimension_group: billing_period_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.BillingPeriodStart ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: customer_formula_id {
    type: number
    sql: ${TABLE}.CustomerFormulaID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: fee_id {
    type: number
    sql: ${TABLE}.FeeID ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: invoice_line_item_id {
    type: number
    sql: ${TABLE}.InvoiceLineItemID ;;
  }

  dimension: invoice_run_detail_id {
    type: number
    sql: ${TABLE}.InvoiceRunDetailID ;;
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.PaymentID ;;
  }

  dimension: scheduled_entry_id {
    type: number
    sql: ${TABLE}.ScheduledEntryID ;;
  }

  dimension: tax {
    type: string
    sql: ${TABLE}.Tax ;;
  }

  dimension: tax_paid {
    type: string
    sql: ${TABLE}.TaxPaid ;;
  }

  dimension: tax_pct {
    type: string
    sql: ${TABLE}.TaxPct ;;
  }

  dimension: taxable {
    type: string
    sql: ${TABLE}.Taxable ;;
  }

  dimension: waived {
    type: string
    sql: ${TABLE}.Waived ;;
  }

  dimension: waived_by {
    type: number
    sql: ${TABLE}.WaivedBy ;;
  }

  dimension_group: waived {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.WaivedOn ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
