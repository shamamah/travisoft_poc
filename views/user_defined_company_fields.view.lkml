view: user_defined_company_fields {
  sql_table_name: dbo.UserDefinedCompanyFields ;;
  drill_fields: [user_defined_company_fields_id]

  dimension: user_defined_company_fields_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.UserDefinedCompanyFieldsID ;;
  }

  dimension: additional_information {
    type: string
    sql: ${TABLE}.AdditionalInformation ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: field_description {
    type: string
    sql: ${TABLE}.FieldDescription ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FieldName ;;
  }

  dimension: max_length {
    type: number
    sql: ${TABLE}.MaxLength ;;
  }

  dimension: user_defined_field_rule_id {
    type: number
    sql: ${TABLE}.UserDefinedFieldRuleID ;;
  }

  measure: count {
    type: count
    drill_fields: [user_defined_company_fields_id, field_name]
  }
}
