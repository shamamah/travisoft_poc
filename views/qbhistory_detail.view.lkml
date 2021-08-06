view: qbhistory_detail {
  sql_table_name: dbo.QBHistoryDetail ;;
  drill_fields: [qbhistory_detail_id]

  dimension: qbhistory_detail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBHistoryDetailID ;;
  }

  dimension: action {
    type: number
    sql: ${TABLE}.Action ;;
  }

  dimension_group: date_stamp {
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
    sql: ${TABLE}.DateStamp ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: new_value {
    type: string
    sql: ${TABLE}.NewValue ;;
  }

  dimension: original_value {
    type: string
    sql: ${TABLE}.OriginalValue ;;
  }

  dimension: pk {
    type: number
    sql: ${TABLE}.PK ;;
  }

  dimension: pkfield {
    type: string
    sql: ${TABLE}.PKField ;;
  }

  dimension: qbauto_id {
    type: number
    sql: ${TABLE}.QBAutoID ;;
  }

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  dimension: qbhistory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBHistoryID ;;
  }

  measure: count {
    type: count
    drill_fields: [qbhistory_detail_id, field_name, qbhistory.qbhistory_id, qbgroups.qbgroup_id, qbgroups.nick_name]
  }
}
