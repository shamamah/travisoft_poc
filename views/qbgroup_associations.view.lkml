view: qbgroup_associations {
  sql_table_name: dbo.QBGroupAssociations ;;
  drill_fields: [qbgroup_association_id]

  dimension: qbgroup_association_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBGroupAssociationID ;;
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

  dimension: nick_name {
    type: string
    sql: ${TABLE}.NickName ;;
  }

  measure: count {
    type: count
    drill_fields: [qbgroup_association_id, nick_name, qbgroup_members.count]
  }
}
