view: automated_qbpayments {
  sql_table_name: dbo.AutomatedQBPayments ;;
  drill_fields: [automated_qbpayment_id]

  dimension: automated_qbpayment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutomatedQBPaymentID ;;
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

  dimension_group: date_agreed {
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
    sql: ${TABLE}.DateAgreed ;;
  }

  dimension_group: date_cancelled {
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
    sql: ${TABLE}.DateCancelled ;;
  }

  dimension_group: first_due {
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
    sql: ${TABLE}.FirstDueDate ;;
  }

  dimension_group: pre_note_sent {
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
    sql: ${TABLE}.PreNoteSent ;;
  }

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  measure: count {
    type: count
    drill_fields: [automated_qbpayment_id, qbgroups.qbgroup_id, qbgroups.nick_name]
  }
}
