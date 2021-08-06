view: customer_invoice_invoice_runs {
  sql_table_name: dbo.CustomerInvoiceInvoiceRuns ;;

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
    sql: ${TABLE}.BillingPeriodEndDate ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension_group: invoice {
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
    sql: ${TABLE}.InvoiceDate ;;
  }

  dimension: invoice_run_id {
    type: number
    sql: ${TABLE}.InvoiceRunID ;;
  }

  dimension: run_by {
    type: number
    sql: ${TABLE}.RunBy ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.RunDate ;;
  }

  dimension: terms {
    type: number
    sql: ${TABLE}.Terms ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
