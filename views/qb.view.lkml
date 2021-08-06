view: qb {
  sql_table_name: dbo.QB ;;
  drill_fields: [qbid]

  dimension: qbid {
    primary_key: yes
    type: string
    sql: ${TABLE}.QBID ;;
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

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: middle_init {
    type: string
    sql: ${TABLE}.MiddleInit ;;
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

  dimension: qbtype_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBTypeID ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.SSN ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      qbid,
      last_name,
      first_name,
      qbtypes.qbtype_id,
      qbtypes.nick_name,
      qbgroups.qbgroup_id,
      qbgroups.nick_name
    ]
  }
}
