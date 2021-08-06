view: user_types {
  sql_table_name: dbo.UserTypes ;;
  drill_fields: [user_type_id]

  dimension: user_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.UserTypeID ;;
  }

  dimension: lock_out {
    type: string
    sql: ${TABLE}.LockOut ;;
  }

  dimension: lock_out_reason {
    type: string
    sql: ${TABLE}.LockOutReason ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [user_type_id, name, users.count]
  }
}
