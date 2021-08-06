view: qbtermination {
  sql_table_name: dbo.QBTermination ;;
  drill_fields: [qbtermination_id]

  dimension: qbtermination_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBTerminationID ;;
  }

  dimension_group: date_added {
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
    sql: ${TABLE}.DateAdded ;;
  }

  dimension_group: effective {
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
    sql: ${TABLE}.EffectiveDate ;;
  }

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  dimension: qbtermination_reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBTerminationReasonID ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  measure: count {
    type: count
    drill_fields: [qbtermination_id, qbtermination_reason.qbtermination_reason_id, qbgroups.qbgroup_id, qbgroups.nick_name]
  }
}
