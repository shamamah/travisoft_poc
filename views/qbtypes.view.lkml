view: qbtypes {
  sql_table_name: dbo.QBTypes ;;
  drill_fields: [qbtype_id]

  dimension: qbtype_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBTypeID ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: nick_name {
    type: string
    sql: ${TABLE}.NickName ;;
  }

  measure: count {
    type: count
    drill_fields: [qbtype_id, nick_name, qb.count]
  }
}
