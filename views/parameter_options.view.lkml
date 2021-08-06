view: parameter_options {
  sql_table_name: dbo.ParameterOptions ;;

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension: option_id {
    type: number
    sql: ${TABLE}.OptionID ;;
  }

  dimension: option_text {
    type: string
    sql: ${TABLE}.OptionText ;;
  }

  dimension: option_value {
    type: string
    sql: ${TABLE}.OptionValue ;;
  }

  dimension: parameter_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ParameterTypeID ;;
  }

  measure: count {
    type: count
    drill_fields: [parameter_types.parameter_type_id, parameter_types.parameter_name]
  }
}
