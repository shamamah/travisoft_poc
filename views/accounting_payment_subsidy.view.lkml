view: accounting_payment_subsidy {
  sql_table_name: dbo.AccountingPaymentSubsidy ;;

  dimension: accouting_pmt_sub_id {
    type: number
    sql: ${TABLE}.AccoutingPmtSubID ;;
  }

  dimension: benefit_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BenefitPlanID ;;
  }

  dimension: payment_history_id {
    type: number
    sql: ${TABLE}.PaymentHistoryID ;;
  }

  measure: count {
    type: count
    drill_fields: [benefit_plans.benefit_plan_id, benefit_plans.nickname]
  }
}
