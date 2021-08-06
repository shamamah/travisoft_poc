view: system_integrator_keys {
  sql_table_name: dbo.SystemIntegratorKeys ;;
  drill_fields: [system_integrator_key_id]

  dimension: system_integrator_key_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SystemIntegratorKeyID ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: system_integrator_section_id {
    type: number
    sql: ${TABLE}.SystemIntegratorSectionID ;;
  }

  dimension: system_key {
    type: number
    sql: ${TABLE}.SystemKey ;;
  }

  dimension: user_key {
    type: string
    sql: ${TABLE}.UserKey ;;
  }

  measure: count {
    type: count
    drill_fields: [system_integrator_key_id]
  }
}
