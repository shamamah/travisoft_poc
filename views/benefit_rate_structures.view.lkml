view: benefit_rate_structures {
  sql_table_name: dbo.BenefitRateStructures ;;

  dimension_group: begin {
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
    sql: ${TABLE}.BeginDate ;;
  }

  dimension: benefit_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BenefitPlanID ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: rate_structure_id {
    type: number
    sql: ${TABLE}.RateStructureID ;;
  }

  measure: count {
    type: count
    drill_fields: [benefit_plans.benefit_plan_id, benefit_plans.nickname]
  }
}
