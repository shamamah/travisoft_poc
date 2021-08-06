view: customer_invoice_broker_companies {
  sql_table_name: dbo.CustomerInvoiceBrokerCompanies ;;

  dimension: broker_companies_id {
    type: number
    sql: ${TABLE}.BrokerCompaniesID ;;
  }

  dimension: broker_id {
    type: number
    sql: ${TABLE}.BrokerID ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
