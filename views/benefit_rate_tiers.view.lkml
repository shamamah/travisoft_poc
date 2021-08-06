view: benefit_rate_tiers {
  sql_table_name: dbo.BenefitRateTiers ;;

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

  dimension: cost {
    type: string
    sql: ${TABLE}.Cost ;;
  }

  dimension: coverage_level_code {
    type: string
    sql: ${TABLE}.CoverageLevelCode ;;
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

  dimension: isfamily {
    type: string
    sql: ${TABLE}.ISFamily ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderID ;;
  }

  dimension: rate_structure_id {
    type: number
    sql: ${TABLE}.RateStructureID ;;
  }

  dimension: tier_id {
    type: number
    sql: ${TABLE}.TierID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
