view: customer_invoice_register {
  sql_table_name: dbo.CustomerInvoiceRegister ;;

  dimension_group: action {
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
    sql: ${TABLE}.ActionDate ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
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

  dimension: entry_description {
    type: string
    sql: ${TABLE}.EntryDescription ;;
  }

  dimension: invoice_balance {
    type: string
    sql: ${TABLE}.InvoiceBalance ;;
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

  dimension: number {
    type: number
    sql: ${TABLE}.Number ;;
  }

  dimension: payment_balance {
    type: string
    sql: ${TABLE}.PaymentBalance ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.RecordID ;;
  }

  dimension: register_action_id {
    type: number
    sql: ${TABLE}.RegisterActionID ;;
  }

  dimension: register_id {
    type: number
    sql: ${TABLE}.RegisterID ;;
  }

  dimension: register_type_id {
    type: number
    sql: ${TABLE}.RegisterTypeID ;;
  }

  dimension: tax {
    type: string
    sql: ${TABLE}.Tax ;;
  }

  dimension: to_line_item_id {
    type: number
    sql: ${TABLE}.ToLineItemID ;;
  }

  measure: count {
    type: count
    drill_fields: [module_types.module_type_id]
  }
}
