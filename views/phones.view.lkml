view: phones {
  sql_table_name: dbo.Phones ;;
  drill_fields: [phone_id]

  dimension: phone_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PhoneID ;;
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

  dimension: ext {
    type: string
    sql: ${TABLE}.Ext ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.Number ;;
  }

  dimension: phone_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PhoneTypeID ;;
  }

  measure: count {
    type: count
    drill_fields: [phone_id, phone_types.phone_type_id]
  }
}
