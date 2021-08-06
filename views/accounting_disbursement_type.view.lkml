view: accounting_disbursement_type {
  sql_table_name: dbo.AccountingDisbursementType ;;
  drill_fields: [accounting_disbursement_type_id]

  dimension: accounting_disbursement_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AccountingDisbursementTypeID ;;
  }

  dimension: disbursement_description {
    type: string
    sql: ${TABLE}.DisbursementDescription ;;
  }

  dimension: disbursement_type_name {
    type: string
    sql: ${TABLE}.DisbursementTypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [accounting_disbursement_type_id, disbursement_type_name]
  }
}
