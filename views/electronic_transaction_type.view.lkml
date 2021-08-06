view: electronic_transaction_type {
  sql_table_name: dbo.ElectronicTransactionType ;;
  drill_fields: [electronic_transaction_type_id]

  dimension: electronic_transaction_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ElectronicTransactionTypeID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [electronic_transaction_type_id, name]
  }
}
