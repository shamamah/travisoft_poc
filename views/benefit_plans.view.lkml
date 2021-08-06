view: benefit_plans {
  sql_table_name: dbo.BenefitPlans ;;
  drill_fields: [benefit_plan_id]

  dimension: benefit_plan_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BenefitPlanID ;;
  }

  dimension: benefit_plan_costing_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BenefitPlanCostingTypeID ;;
  }

  dimension: benefit_plan_matrix_costing_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BenefitPlanMatrixCostingTypeID ;;
  }

  dimension: benefit_plan_number {
    type: string
    sql: ${TABLE}.BenefitPlanNumber ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: ediplan_code {
    type: string
    sql: ${TABLE}.EDIPlanCode ;;
  }

  dimension: inactive {
    type: string
    sql: ${TABLE}.Inactive ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.Nickname ;;
  }

  dimension: plan_type_id {
    type: number
    sql: ${TABLE}.PlanTypeID ;;
  }

  dimension: sponsor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SponsorID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      benefit_plan_id,
      nickname,
      sponsors.sponsor_id,
      sponsors.name,
      sponsors.nick_name,
      benefit_plan_costing_types.benefit_plan_costing_type_id,
      benefit_plan_costing_types.name,
      benefit_plan_matrix_costing_types.benefit_plan_matrix_costing_type_id,
      benefit_plan_matrix_costing_types.name,
      accounting_invoice_line_item.count,
      accounting_payment_subsidy.count,
      benefit_plan_rate_expiration.count,
      benefit_rate_structures.count,
      benefit_subsidy.count,
      qbbenefit_assignments.count
    ]
  }
}
