view: customer_invoice_fees {
  sql_table_name: dbo.CustomerInvoiceFees ;;

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

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: fee_id {
    type: number
    sql: ${TABLE}.FeeID ;;
  }

  dimension: fee_type_id {
    type: number
    sql: ${TABLE}.FeeTypeID ;;
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
