view: accounting_payment {
  sql_table_name: dbo.AccountingPayment ;;

  dimension: amount_payed {
    type: string
    sql: ${TABLE}.AmountPayed ;;
  }

  dimension: auto_ach {
    type: string
    sql: ${TABLE}.AutoACH ;;
  }

  dimension: changed_by {
    type: number
    sql: ${TABLE}.ChangedBy ;;
  }

  dimension_group: changed {
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
    sql: ${TABLE}.ChangedOn ;;
  }

  dimension_group: check {
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
    sql: ${TABLE}.CheckDate ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CreatedOn ;;
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

  dimension: disconnected_qbgroup_id {
    type: number
    sql: ${TABLE}.DisconnectedQBGroupID ;;
  }

  dimension: entered_by {
    type: number
    sql: ${TABLE}.EnteredBy ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.Memo ;;
  }

  dimension: non_cash {
    type: string
    sql: ${TABLE}.NonCash ;;
  }

  dimension: payment_history_id {
    type: number
    sql: ${TABLE}.PaymentHistoryID ;;
  }

  dimension: payment_method_id {
    type: number
    sql: ${TABLE}.PaymentMethodID ;;
  }

  dimension: transaction_ident {
    type: string
    sql: ${TABLE}.TransactionIdent ;;
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
