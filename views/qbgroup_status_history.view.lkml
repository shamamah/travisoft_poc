view: qbgroup_status_history {
  sql_table_name: dbo.QBGroupStatusHistory ;;
  drill_fields: [qbgroup_status_history_id]

  dimension: qbgroup_status_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBGroupStatusHistoryID ;;
  }

  dimension_group: begin {
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
    sql: ${TABLE}.BeginDate ;;
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

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  dimension: qbgroup_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupStatusID ;;
  }

  measure: count {
    type: count
    drill_fields: [qbgroup_status_history_id, qbgroups.qbgroup_id, qbgroups.nick_name, qbgroup_status.qbgroup_status_id, qbgroup_status.name]
  }
}
