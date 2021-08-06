view: parameter_types {
  sql_table_name: dbo.ParameterTypes ;;
  drill_fields: [parameter_type_id]

  dimension: parameter_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ParameterTypeID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: additional_information {
    type: string
    sql: ${TABLE}.AdditionalInformation ;;
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

  dimension: data_example {
    type: string
    sql: ${TABLE}.DataExample ;;
  }

  dimension: default_group_id {
    type: number
    sql: ${TABLE}.DefaultGroupID ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.DefaultValue ;;
  }

  dimension: max_length {
    type: number
    sql: ${TABLE}.MaxLength ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.OrderNumber ;;
  }

  dimension: parameter_data_type_id {
    type: number
    sql: ${TABLE}.ParameterDataTypeID ;;
  }

  dimension: parameter_name {
    type: string
    sql: ${TABLE}.ParameterName ;;
  }

  dimension: parameter_question {
    type: string
    sql: ${TABLE}.ParameterQuestion ;;
  }

  dimension: validation_expression {
    type: string
    sql: ${TABLE}.ValidationExpression ;;
  }

  measure: count {
    type: count
    drill_fields: [parameter_type_id, parameter_name, parameter_module_data.count, parameter_options.count]
  }
}
