view: benefit_plan_costing_types {
  sql_table_name: dbo.BenefitPlanCostingTypes ;;
  drill_fields: [benefit_plan_costing_type_id]

  dimension: benefit_plan_costing_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BenefitPlanCostingTypeID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [benefit_plan_costing_type_id, name, benefit_plans.count, qbbenefit_assignments.count]
  }
}
