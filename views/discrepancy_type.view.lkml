view: discrepancy_type {
  sql_table_name: dbo.DiscrepancyType ;;
  drill_fields: [discrepancy_type_id]

  dimension: discrepancy_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DiscrepancyTypeID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [discrepancy_type_id, name]
  }
}
