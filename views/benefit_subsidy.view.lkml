view: benefit_subsidy {
  sql_table_name: dbo.BenefitSubsidy ;;
  drill_fields: [benefit_subsidy_id]

  dimension: benefit_subsidy_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BenefitSubsidyID ;;
  }

  dimension: benefit_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BenefitPlanID ;;
  }

  dimension: dollar_amount {
    type: string
    sql: ${TABLE}.DollarAmount ;;
  }

  dimension: percentage_amount {
    type: number
    sql: ${TABLE}.PercentageAmount ;;
  }

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  dimension_group: subsidy_end {
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
    sql: ${TABLE}.SubsidyEndDate ;;
  }

  measure: count {
    type: count
    drill_fields: [benefit_subsidy_id, qbgroups.qbgroup_id, qbgroups.nick_name, benefit_plans.benefit_plan_id, benefit_plans.nickname]
  }
}
