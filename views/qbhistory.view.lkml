view: qbhistory {
  sql_table_name: dbo.QBHistory ;;
  drill_fields: [qbhistory_id]

  dimension: qbhistory_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBHistoryID ;;
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

  dimension: details {
    type: string
    sql: ${TABLE}.Details ;;
  }

  dimension: tracking_open {
    type: string
    sql: ${TABLE}.TrackingOpen ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      qbhistory_id,
      users.user_id,
      users.first_name,
      users.last_name,
      qbdate_tracking.count,
      qbhistory_detail.count
    ]
  }
}
