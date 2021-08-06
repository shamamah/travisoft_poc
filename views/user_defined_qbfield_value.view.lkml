view: user_defined_qbfield_value {
  sql_table_name: dbo.UserDefinedQBFieldValue ;;
  drill_fields: [user_defined_qbfield_value_id]

  dimension: user_defined_qbfield_value_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.UserDefinedQBFieldValueID ;;
  }

  dimension: field_value {
    type: string
    sql: ${TABLE}.FieldValue ;;
  }

  dimension: qbauto_id {
    type: number
    sql: ${TABLE}.QBAutoID ;;
  }

  dimension: user_defined_field_id {
    type: number
    sql: ${TABLE}.UserDefinedFieldID ;;
  }

  measure: count {
    type: count
    drill_fields: [user_defined_qbfield_value_id]
  }
}
