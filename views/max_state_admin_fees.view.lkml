view: max_state_admin_fees {
  sql_table_name: dbo.MaxStateAdminFees ;;

  dimension: max_fee {
    type: number
    sql: ${TABLE}.MaxFee ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.StateCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
