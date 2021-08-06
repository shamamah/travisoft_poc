view: accounting_invoice_line_item {
  sql_table_name: dbo.AccountingInvoiceLineItem ;;
  drill_fields: [accounting_invoice_line_item_id]

  dimension: accounting_invoice_line_item_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AccountingInvoiceLineItemID ;;
  }

  dimension: accounting_invoice_line_item_type_id {
    type: number
    sql: ${TABLE}.AccountingInvoiceLineItemTypeID ;;
  }

  dimension: benefit_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BenefitPlanID ;;
  }

  dimension_group: date_entered {
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
    sql: ${TABLE}.DateEntered ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: line_item_amount {
    type: string
    sql: ${TABLE}.LineItemAmount ;;
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
    drill_fields: [accounting_invoice_line_item_id, benefit_plans.benefit_plan_id, benefit_plans.nickname]
  }
}
