view: accounting_invoice {
  sql_table_name: dbo.AccountingInvoice ;;

  dimension: accounting_xrfid {
    type: number
    value_format_name: id
    sql: ${TABLE}.AccountingXRFID ;;
  }

  dimension: billing_time_period_id {
    type: number
    sql: ${TABLE}.BillingTimePeriodID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.DueDate ;;
  }

  dimension_group: entered {
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
    sql: ${TABLE}.EnteredOn ;;
  }

  dimension: fee_number {
    type: number
    sql: ${TABLE}.FeeNumber ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: invoice_type {
    type: number
    sql: ${TABLE}.InvoiceType ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.Memo ;;
  }

  dimension: non_cash {
    type: string
    sql: ${TABLE}.NonCash ;;
  }

  dimension: void {
    type: string
    sql: ${TABLE}.Void ;;
  }

  dimension: voided_by {
    type: number
    sql: ${TABLE}.VoidedBy ;;
  }

  dimension_group: voided {
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
    sql: ${TABLE}.VoidedOn ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
