view: users {
  sql_table_name: dbo.Users ;;
  drill_fields: [user_id]

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.UserID ;;
  }

  dimension: access_revoked {
    type: string
    sql: ${TABLE}.AccessRevoked ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: broker_login {
    type: string
    sql: ${TABLE}.BrokerLogin ;;
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

  dimension: company_creation {
    type: string
    sql: ${TABLE}.CompanyCreation ;;
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

  dimension: customer_id {
    type: number
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: initial {
    type: string
    sql: ${TABLE}.Initial ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.Password ;;
  }

  dimension_group: password_expires {
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
    sql: ${TABLE}.PasswordExpiresOn ;;
  }

  dimension: qbauto_id {
    type: number
    sql: ${TABLE}.QBAutoID ;;
  }

  dimension: reset_password {
    type: string
    sql: ${TABLE}.ResetPassword ;;
  }

  dimension: sensitive_financial_data_access {
    type: string
    sql: ${TABLE}.SensitiveFinancialDataAccess ;;
  }

  dimension: service_get_user {
    type: string
    sql: ${TABLE}.ServiceGetUser ;;
  }

  dimension: service_put_user {
    type: string
    sql: ${TABLE}.ServicePutUser ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.Suffix ;;
  }

  dimension: user_login {
    type: string
    sql: ${TABLE}.UserLogin ;;
  }

  dimension: user_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserTypeID ;;
  }

  dimension: view_only {
    type: string
    sql: ${TABLE}.ViewOnly ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_id,
      first_name,
      last_name,
      user_types.user_type_id,
      user_types.name,
      qbhistory.count
    ]
  }
}
