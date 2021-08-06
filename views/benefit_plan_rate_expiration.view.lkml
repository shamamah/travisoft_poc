view: benefit_plan_rate_expiration {
  sql_table_name: dbo.BenefitPlanRateExpiration ;;

  dimension: benefit_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BenefitPlanID ;;
  }

  dimension: expiration_id {
    type: number
    sql: ${TABLE}.ExpirationID ;;
  }

  dimension_group: expires {
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
    sql: ${TABLE}.ExpiresOn ;;
  }

  dimension_group: letter_sent {
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
    sql: ${TABLE}.LetterSentOn ;;
  }

  dimension: rate_structure_id {
    type: number
    sql: ${TABLE}.RateStructureID ;;
  }

  dimension_group: send_letter {
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
    sql: ${TABLE}.SendLetterOn ;;
  }

  dimension: send_now {
    type: string
    sql: ${TABLE}.SendNow ;;
  }

  measure: count {
    type: count
    drill_fields: [benefit_plans.benefit_plan_id, benefit_plans.nickname]
  }
}
