view: benefit_plan_types {
  sql_table_name: dbo.BenefitPlanTypes ;;

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: plan_type_id {
    type: number
    sql: ${TABLE}.PlanTypeID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
