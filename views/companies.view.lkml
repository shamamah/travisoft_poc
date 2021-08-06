view: companies {
  sql_table_name: dbo.Companies ;;
  drill_fields: [company_id]

  dimension: company_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
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

  dimension: company_code {
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: company_group_id {
    type: number
    sql: ${TABLE}.CompanyGroupID ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
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

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension: ocrcompany_code {
    type: string
    sql: ${TABLE}.OCRCompanyCode ;;
  }

  dimension: owner {
    type: number
    sql: ${TABLE}.Owner ;;
  }

  dimension: reference_id {
    type: string
    sql: ${TABLE}.ReferenceID ;;
  }

  dimension: sender_id {
    type: string
    sql: ${TABLE}.SenderID ;;
  }

  dimension: senders_code {
    type: string
    sql: ${TABLE}.SendersCode ;;
  }

  dimension: tax_idcode {
    type: string
    sql: ${TABLE}.TaxIDCode ;;
  }

  measure: count {
    type: count
    drill_fields: [company_id, company_name]
  }
}
