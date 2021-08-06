view: qbbenefit_assignments {
  sql_table_name: dbo.QBBenefitAssignments ;;

  dimension_group: assignment_end {
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
    sql: ${TABLE}.AssignmentEndDate ;;
  }

  dimension_group: assignment_start {
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
    sql: ${TABLE}.AssignmentStartDate ;;
  }

  dimension: benefit_assignment_id {
    type: number
    sql: ${TABLE}.BenefitAssignmentID ;;
  }

  dimension: benefit_plan_costing_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BenefitPlanCostingTypeID ;;
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

  dimension: coverage_level {
    type: string
    sql: ${TABLE}.CoverageLevel ;;
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

  dimension_group: day_pqbno_longer_covered {
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
    sql: ${TABLE}.DayPQBNoLongerCovered ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension_group: first_day_after_loss_coverage {
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
    sql: ${TABLE}.FirstDayAfterLossCoverage ;;
  }

  dimension: flat_fee {
    type: string
    sql: ${TABLE}.FlatFee ;;
  }

  dimension: flat_fee_coverage_level {
    type: string
    sql: ${TABLE}.FlatFeeCoverageLevel ;;
  }

  dimension: insurance_coverage_amount {
    type: number
    sql: ${TABLE}.InsuranceCoverageAmount ;;
  }

  dimension: matrix_costing_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MatrixCostingID ;;
  }

  dimension_group: no_longer_on_state_coverage {
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
    sql: ${TABLE}.NoLongerOnStateCoverage ;;
  }

  dimension_group: original_coverage {
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
    sql: ${TABLE}.OriginalCoverageDate ;;
  }

  dimension_group: premium_billing_start {
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
    sql: ${TABLE}.PremiumBillingStartDate ;;
  }

  dimension: qbauto_id {
    type: number
    sql: ${TABLE}.QBAutoID ;;
  }

  dimension: state_admin_flat_fee {
    type: string
    sql: ${TABLE}.StateAdminFlatFee ;;
  }

  dimension: state_fee_percentage {
    type: string
    sql: ${TABLE}.StateFeePercentage ;;
  }

  dimension: tier_id {
    type: number
    sql: ${TABLE}.TierID ;;
  }

  dimension: waiting_period_days {
    type: number
    sql: ${TABLE}.WaitingPeriodDays ;;
  }

  measure: count {
    type: count
    drill_fields: [benefit_plans.benefit_plan_id, benefit_plans.nickname, benefit_plan_costing_types.benefit_plan_costing_type_id, benefit_plan_costing_types.name, matrix_costing.original_matrix_costing_id]
  }
}
