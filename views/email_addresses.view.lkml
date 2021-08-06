view: email_addresses {
  sql_table_name: dbo.EmailAddresses ;;
  drill_fields: [email_address_id]

  dimension: email_address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.EmailAddressID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
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

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  measure: count {
    type: count
    drill_fields: [email_address_id]
  }
}
