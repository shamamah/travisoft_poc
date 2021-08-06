view: qbgroup_information_cache {
  sql_table_name: dbo.QBGroupInformationCache ;;
  drill_fields: [qbgroup_information_cache_id]

  dimension: qbgroup_information_cache_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QBGroupInformationCacheID ;;
  }

  dimension: account_balance {
    type: string
    sql: ${TABLE}.AccountBalance ;;
  }

  dimension: days_past_due {
    type: number
    sql: ${TABLE}.DaysPastDue ;;
  }

  dimension: do_not_term {
    type: number
    sql: ${TABLE}.DoNotTerm ;;
  }

  dimension_group: election_period_end {
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
    sql: ${TABLE}.ElectionPeriodEndDate ;;
  }

  dimension_group: enrollmend_end {
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
    sql: ${TABLE}.EnrollmendEndDate ;;
  }

  dimension_group: enrollment {
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
    sql: ${TABLE}.EnrollmentDate ;;
  }

  dimension_group: expected_premiums_paid_through {
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
    sql: ${TABLE}.ExpectedPremiumsPaidThrough ;;
  }

  dimension: minimum_monthly_due {
    type: string
    sql: ${TABLE}.MinimumMonthlyDue ;;
  }

  dimension_group: premium_due {
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
    sql: ${TABLE}.PremiumDueDate ;;
  }

  dimension_group: premiums_paid_to {
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
    sql: ${TABLE}.PremiumsPaidTo ;;
  }

  dimension: qbgroup_cobra_coverage_type {
    type: number
    sql: ${TABLE}.QBGroupCobraCoverageType ;;
  }

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  dimension_group: social_security_end {
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
    sql: ${TABLE}.SocialSecurityEndDate ;;
  }

  dimension_group: social_security_start {
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
    sql: ${TABLE}.SocialSecurityStartDate ;;
  }

  dimension: total_due_to_complete_enrollment {
    type: string
    sql: ${TABLE}.TotalDueToCompleteEnrollment ;;
  }

  dimension: total_monthly_admin_fee {
    type: string
    sql: ${TABLE}.TotalMonthlyAdminFee ;;
  }

  dimension: total_monthly_due {
    type: string
    sql: ${TABLE}.TotalMonthlyDue ;;
  }

  dimension: total_monthly_premium {
    type: string
    sql: ${TABLE}.TotalMonthlyPremium ;;
  }

  measure: count {
    type: count
    drill_fields: [qbgroup_information_cache_id, qbgroups.qbgroup_id, qbgroups.nick_name]
  }
}
