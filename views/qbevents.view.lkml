view: qbevents {
  sql_table_name: dbo.QBEvents ;;
  drill_fields: [qbevent_id]

  dimension: qbevent_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBEventID ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.Duration ;;
  }

  dimension: duration_numeric {
    type: number
    sql: ${TABLE}.DurationNumeric ;;
  }

  dimension: duration_type {
    type: string
    sql: ${TABLE}.DurationType ;;
  }

  dimension: ediid {
    type: string
    sql: ${TABLE}.EDIID ;;
  }

  dimension: event_code {
    type: string
    sql: ${TABLE}.EventCode ;;
  }

  measure: count {
    type: count
    drill_fields: [qbevent_id, qbevent_assignments.count, qbevent_defaults.count]
  }
}
