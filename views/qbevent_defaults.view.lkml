view: qbevent_defaults {
  sql_table_name: dbo.QBEventDefaults ;;
  drill_fields: [qbevent_default_id]

  dimension: qbevent_default_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBEventDefaultID ;;
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

  dimension: event_code {
    type: string
    sql: ${TABLE}.EventCode ;;
  }

  dimension: module_id {
    type: number
    sql: ${TABLE}.ModuleID ;;
  }

  dimension: module_ident {
    type: number
    sql: ${TABLE}.ModuleIdent ;;
  }

  dimension: qbevent_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBEventID ;;
  }

  measure: count {
    type: count
    drill_fields: [qbevent_default_id, qbevents.qbevent_id]
  }
}
