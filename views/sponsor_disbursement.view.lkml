view: sponsor_disbursement {
  sql_table_name: dbo.SponsorDisbursement ;;
  drill_fields: [sponsor_disbursement_id]

  dimension: sponsor_disbursement_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SponsorDisbursementID ;;
  }

  dimension: billing_time_period_id {
    type: number
    sql: ${TABLE}.BillingTimePeriodID ;;
  }

  dimension: check_amount {
    type: string
    sql: ${TABLE}.CheckAmount ;;
  }

  dimension_group: check {
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
    sql: ${TABLE}.CheckDate ;;
  }

  dimension: check_image {
    type: string
    sql: ${TABLE}.CheckImage ;;
  }

  dimension: check_memo {
    type: string
    sql: ${TABLE}.CheckMemo ;;
  }

  dimension: check_number {
    type: number
    sql: ${TABLE}.CheckNumber ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: disbursed_by {
    type: number
    sql: ${TABLE}.DisbursedBy ;;
  }

  dimension_group: disbursed {
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
    sql: ${TABLE}.DisbursedOn ;;
  }

  dimension: disbursement_run_id {
    type: string
    sql: ${TABLE}.DisbursementRunID ;;
  }

  dimension: disbursement_type {
    type: string
    sql: ${TABLE}.DisbursementType ;;
  }

  dimension: fee_amount {
    type: string
    sql: ${TABLE}.FeeAmount ;;
  }

  dimension: fee_withholding {
    type: string
    sql: ${TABLE}.FeeWithholding ;;
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

  dimension: non_cash {
    type: string
    sql: ${TABLE}.NonCash ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: pdfstorage_bucket_name {
    type: string
    sql: ${TABLE}.PDFStorageBucketName ;;
  }

  dimension: pending_adjustment {
    type: string
    sql: ${TABLE}.PendingAdjustment ;;
  }

  dimension: permanent_file_name {
    type: string
    sql: ${TABLE}.PermanentFileName ;;
  }

  dimension: sponsor_disbursement_amount {
    type: string
    sql: ${TABLE}.SponsorDisbursementAmount ;;
  }

  dimension: sponsor_disbursement_guid {
    type: string
    sql: ${TABLE}.SponsorDisbursementGuid ;;
  }

  measure: count {
    type: count
    drill_fields: [sponsor_disbursement_id, pdfstorage_bucket_name, permanent_file_name, module_types.module_type_id]
  }
}
