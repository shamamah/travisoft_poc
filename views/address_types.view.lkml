view: address_types {
  sql_table_name: dbo.AddressTypes ;;
  drill_fields: [address_type_id]

  dimension: address_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AddressTypeID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: address_type_code {
    type: string
    sql: ${TABLE}.AddressTypeCode ;;
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

  measure: count {
    type: count
    drill_fields: [address_type_id, addresses.count]
  }
}
