view: customer_invoice_brokers {
  sql_table_name: dbo.CustomerInvoiceBrokers ;;

  dimension: broker_code {
    type: string
    sql: ${TABLE}.BrokerCode ;;
  }

  dimension: broker_id {
    type: number
    sql: ${TABLE}.BrokerID ;;
  }

  dimension: broker_name {
    type: string
    sql: ${TABLE}.BrokerName ;;
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

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  measure: count {
    type: count
    drill_fields: [broker_name]
  }
}
