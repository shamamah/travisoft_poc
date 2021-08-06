view: parameter_groups {
  sql_table_name: dbo.ParameterGroups ;;
  drill_fields: [parameter_group_id]

  dimension: parameter_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ParameterGroupID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: parameter_system_type {
    type: number
    sql: ${TABLE}.ParameterSystemType ;;
  }

  measure: count {
    type: count
    drill_fields: [parameter_group_id, parameter_module_data.count]
  }
}
