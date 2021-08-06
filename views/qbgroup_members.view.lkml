view: qbgroup_members {
  sql_table_name: dbo.QBGroupMembers ;;
  drill_fields: [qbgroup_member_id]

  dimension: qbgroup_member_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBGroupMemberID ;;
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

  dimension: qbgroup_association_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupAssociationID ;;
  }

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  measure: count {
    type: count
    drill_fields: [qbgroup_member_id, qbgroups.qbgroup_id, qbgroups.nick_name, qbgroup_associations.qbgroup_association_id, qbgroup_associations.nick_name]
  }
}
