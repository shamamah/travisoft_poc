view: merchant_setup_type {
  sql_table_name: dbo.MerchantSetupType ;;
  drill_fields: [merchant_setup_type_id]

  dimension: merchant_setup_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MerchantSetupTypeID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [merchant_setup_type_id, name]
  }
}
