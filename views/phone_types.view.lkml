view: phone_types {
  sql_table_name: dbo.PhoneTypes ;;
  drill_fields: [phone_type_id]

  dimension: phone_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PhoneTypeID ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: phone_type_code {
    type: string
    sql: ${TABLE}.PhoneTypeCode ;;
  }

  measure: count {
    type: count
    drill_fields: [phone_type_id, phones.count]
  }
}
