view: customer_invoice_invoices {
  sql_table_name: dbo.CustomerInvoiceInvoices ;;

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

  dimension: closed {
    type: string
    sql: ${TABLE}.Closed ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.InvoiceID ;;
  }

  dimension: invoice_no {
    type: number
    sql: ${TABLE}.InvoiceNo ;;
  }

  dimension: invoice_type_id {
    type: number
    sql: ${TABLE}.InvoiceTypeID ;;
  }

  dimension: module_ident {
    type: number
    sql: ${TABLE}.ModuleIdent ;;
  }

  dimension: module_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ModuleTypeID ;;
  }

  dimension: term_id {
    type: number
    sql: ${TABLE}.TermID ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.TotalAmount ;;
  }

  dimension: total_amount_paid {
    type: string
    sql: ${TABLE}.TotalAmountPaid ;;
  }

  dimension: total_tax {
    type: string
    sql: ${TABLE}.TotalTax ;;
  }

  dimension: void {
    type: string
    sql: ${TABLE}.Void ;;
  }

  dimension: void_by {
    type: number
    sql: ${TABLE}.VoidBy ;;
  }

  dimension_group: void {
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
    sql: ${TABLE}.VoidOn ;;
  }

  measure: count {
    type: count
    drill_fields: [module_types.module_type_id]
  }
}
