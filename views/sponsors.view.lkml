view: sponsors {
  sql_table_name: dbo.Sponsors ;;
  drill_fields: [sponsor_id]

  dimension: sponsor_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SponsorID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
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

  dimension: edienabled {
    type: string
    sql: ${TABLE}.EDIEnabled ;;
  }

  dimension: emailto_carrier {
    type: string
    sql: ${TABLE}.EmailtoCarrier ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nick_name {
    type: string
    sql: ${TABLE}.NickName ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: receiver_id {
    type: string
    sql: ${TABLE}.ReceiverID ;;
  }

  dimension: receivers_code {
    type: string
    sql: ${TABLE}.ReceiversCode ;;
  }

  dimension: tax_idcode {
    type: string
    sql: ${TABLE}.TaxIDCode ;;
  }

  dimension: which_policy_number {
    type: string
    sql: ${TABLE}.WhichPolicyNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [sponsor_id, name, nick_name, benefit_plans.count, correspondence_storage.count]
  }
}
