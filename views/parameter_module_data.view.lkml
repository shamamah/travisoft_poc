view: parameter_module_data {
  sql_table_name: dbo.ParameterModuleData ;;

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

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension: module_ident {
    type: number
    sql: ${TABLE}.ModuleIdent ;;
  }

  dimension: module_parameter_id {
    type: number
    sql: ${TABLE}.ModuleParameterID ;;
  }

  dimension: module_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ModuleTypeID ;;
  }

  dimension: parameter {
    type: string
    sql: ${TABLE}.Parameter ;;
  }

  dimension: parameter_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ParameterGroupID ;;
  }

  dimension: parameter_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ParameterTypeID ;;
  }

  measure: count {
    type: count
    drill_fields: [module_types.module_type_id, parameter_types.parameter_type_id, parameter_types.parameter_name, parameter_groups.parameter_group_id]
  }
}
