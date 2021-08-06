view: correspondence_storage {
  sql_table_name: dbo.CorrespondenceStorage ;;
  drill_fields: [correspondence_storage_id]

  dimension: correspondence_storage_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CorrespondenceStorageID ;;
  }

  dimension: acceptance_guid {
    type: string
    sql: ${TABLE}.AcceptanceGUID ;;
  }

  dimension: accepted_by {
    type: number
    sql: ${TABLE}.AcceptedBy ;;
  }

  dimension_group: accepted {
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
    sql: ${TABLE}.AcceptedOn ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMail ;;
  }

  dimension: printed_by {
    type: number
    sql: ${TABLE}.PrintedBy ;;
  }

  dimension_group: printed {
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
    sql: ${TABLE}.PrintedOn ;;
  }

  dimension: qbauto_id {
    type: number
    sql: ${TABLE}.QBAutoID ;;
  }

  dimension: qbgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QBGroupID ;;
  }

  dimension: rate_structure_id {
    type: number
    sql: ${TABLE}.RateStructureID ;;
  }

  dimension: scheduled_notice {
    type: string
    sql: ${TABLE}.ScheduledNotice ;;
  }

  dimension: sponsor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SponsorID ;;
  }

  dimension: template_type_id {
    type: number
    sql: ${TABLE}.TemplateTypeID ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZipCode ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      correspondence_storage_id,
      qbgroups.qbgroup_id,
      qbgroups.nick_name,
      sponsors.sponsor_id,
      sponsors.name,
      sponsors.nick_name
    ]
  }
}
