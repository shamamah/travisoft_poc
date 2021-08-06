view: qbevent_assignments {
  sql_table_name: dbo.QBEventAssignments ;;

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

  dimension: current_assignment {
    type: string
    sql: ${TABLE}.CurrentAssignment ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension: event_assignment_id {
    type: number
    sql: ${TABLE}.EventAssignmentID ;;
  }

  dimension: event_description_override {
    type: string
    sql: ${TABLE}.EventDescriptionOverride ;;
  }

  dimension_group: event_notification {
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
    sql: ${TABLE}.EventNotificationDate ;;
  }

  dimension: georgia_poor_health {
    type: string
    sql: ${TABLE}.GeorgiaPoorHealth ;;
  }

  dimension: georgia_voluntary {
    type: string
    sql: ${TABLE}.GeorgiaVoluntary ;;
  }

  dimension: number_of_months_arrarecieved {
    type: number
    sql: ${TABLE}.NumberOfMonthsARRARecieved ;;
  }

  dimension_group: original_reduced_hours_event {
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
    sql: ${TABLE}.OriginalReducedHoursEventDate ;;
  }

  dimension: qbauto_id {
    type: number
    sql: ${TABLE}.QBAutoID ;;
  }

  dimension: qbevent_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBEventID ;;
  }

  dimension_group: qualifying_event {
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
    sql: ${TABLE}.QualifyingEventDate ;;
  }

  dimension: secondary_event {
    type: string
    sql: ${TABLE}.SecondaryEvent ;;
  }

  measure: count {
    type: count
    drill_fields: [qbevents.qbevent_id]
  }
}
