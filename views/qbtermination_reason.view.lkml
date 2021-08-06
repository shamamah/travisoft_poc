view: qbtermination_reason {
  sql_table_name: dbo.QBTerminationReason ;;
  drill_fields: [qbtermination_reason_id]

  dimension: qbtermination_reason_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBTerminationReasonID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  measure: count {
    type: count
    drill_fields: [qbtermination_reason_id, qbtermination.count]
  }
}
