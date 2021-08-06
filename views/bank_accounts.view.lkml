view: bank_accounts {
  sql_table_name: dbo.BankAccounts ;;

  dimension: account_number {
    type: string
    sql: ${TABLE}.AccountNumber ;;
  }

  dimension: account_type {
    type: number
    sql: ${TABLE}.AccountType ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: enrolled {
    type: string
    sql: ${TABLE}.Enrolled ;;
  }

  dimension: last4_digits {
    type: string
    sql: ${TABLE}.Last4Digits ;;
  }

  dimension: module_ident {
    type: number
    sql: ${TABLE}.ModuleIdent ;;
  }

  dimension: module_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ModuleTypeID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: routing_number {
    type: string
    sql: ${TABLE}.RoutingNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [name, module_types.module_type_id]
  }
}
