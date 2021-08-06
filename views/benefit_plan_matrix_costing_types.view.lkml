view: benefit_plan_matrix_costing_types {
  sql_table_name: dbo.BenefitPlanMatrixCostingTypes ;;
  drill_fields: [benefit_plan_matrix_costing_type_id]

  dimension: benefit_plan_matrix_costing_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BenefitPlanMatrixCostingTypeID ;;
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
    drill_fields: [benefit_plan_matrix_costing_type_id, name, benefit_plans.count]
  }
}
