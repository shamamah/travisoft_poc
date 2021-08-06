view: qbgroups {
  sql_table_name: dbo.QBGroups ;;
  drill_fields: [qbgroup_id]

  dimension: qbgroup_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBGroupID ;;
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

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
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

  dimension: designated_group_contact {
    type: number
    sql: ${TABLE}.DesignatedGroupContact ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.Guid ;;
  }

  dimension: inactive {
    type: string
    sql: ${TABLE}.Inactive ;;
  }

  dimension: nick_name {
    type: string
    sql: ${TABLE}.NickName ;;
  }

  dimension: qbgroup_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupStatusID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      qbgroup_id,
      nick_name,
      qbgroup_status.qbgroup_status_id,
      qbgroup_status.name,
      accounting_register.count,
      automated_qbpayments.count,
      benefit_subsidy.count,
      correspondence_storage.count,
      qb.count,
      qbdate_tracking.count,
      qbgroup_information_cache.count,
      qbgroup_members.count,
      qbgroup_status_history.count,
      qbhistory_detail.count,
      qbtermination.count
    ]
  }
}
