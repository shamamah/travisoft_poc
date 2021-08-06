view: qbdate_tracking {
  sql_table_name: dbo.QBDateTracking ;;
  drill_fields: [qbdate_tracking_id]

  dimension: qbdate_tracking_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBDateTrackingID ;;
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

  dimension_group: date_entered {
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
    sql: ${TABLE}.DateEntered ;;
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

  dimension: qbdate_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBDateTypeID ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      qbdate_tracking_id,
      qbdate_types.qbdate_type_id,
      qbdate_types.name,
      qbhistory.qbhistory_id,
      qbgroups.qbgroup_id,
      qbgroups.nick_name
    ]
  }
}
