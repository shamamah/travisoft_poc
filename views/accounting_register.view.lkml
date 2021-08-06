view: accounting_register {
  sql_table_name: dbo.AccountingRegister ;;
  drill_fields: [accounting_register_id]

  dimension: accounting_register_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AccountingRegisterID ;;
  }

  dimension: accounting_xrfid {
    type: number
    value_format_name: id
    sql: ${TABLE}.AccountingXRFID ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension_group: bill {
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
    sql: ${TABLE}.BillDate ;;
  }

  dimension: billing_time_period_id {
    type: number
    sql: ${TABLE}.BillingTimePeriodID ;;
  }

  dimension: closed {
    type: string
    sql: ${TABLE}.Closed ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: credit_amount {
    type: string
    sql: ${TABLE}.CreditAmount ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: debit_amount {
    type: string
    sql: ${TABLE}.DebitAmount ;;
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

  dimension: invoice_amount_due {
    type: string
    sql: ${TABLE}.InvoiceAmountDue ;;
  }

  dimension: invoice_amount_paid {
    type: string
    sql: ${TABLE}.InvoiceAmountPaid ;;
  }

  dimension: invoice_number {
    type: number
    sql: ${TABLE}.InvoiceNumber ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.Memo ;;
  }

  dimension: non_cash {
    type: string
    sql: ${TABLE}.NonCash ;;
  }

  dimension: open_balance {
    type: string
    sql: ${TABLE}.OpenBalance ;;
  }

  dimension: paid_in_full {
    type: string
    sql: ${TABLE}.PaidInFull ;;
  }

  dimension_group: payment {
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
    sql: ${TABLE}.PaymentDate ;;
  }

  dimension: payment_history_id {
    type: number
    sql: ${TABLE}.PaymentHistoryID ;;
  }

  dimension: payment_method_id {
    type: number
    sql: ${TABLE}.PaymentMethodID ;;
  }

  dimension: percent_of_payment_used_on_invoice {
    type: string
    sql: ${TABLE}.PercentOfPaymentUsedOnInvoice ;;
  }

  dimension: percentof_bill_paid {
    type: string
    sql: ${TABLE}.PercentofBillPaid ;;
  }

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  dimension: register_balance {
    type: string
    sql: ${TABLE}.RegisterBalance ;;
  }

  dimension: register_id {
    type: number
    sql: ${TABLE}.RegisterID ;;
  }

  dimension_group: register_item {
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
    sql: ${TABLE}.RegisterItemDate ;;
  }

  dimension: transaction_ident {
    type: string
    sql: ${TABLE}.TransactionIdent ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  dimension: type_primairy {
    type: string
    sql: ${TABLE}.TypePrimairy ;;
  }

  dimension: void {
    type: string
    sql: ${TABLE}.Void ;;
  }

  measure: count {
    type: count
    drill_fields: [accounting_register_id, qbgroups.qbgroup_id, qbgroups.nick_name, accounting_register_payment_details.count]
  }
}
