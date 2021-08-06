view: letter_template_type {
  sql_table_name: dbo.LetterTemplateType ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: destination_id {
    type: number
    sql: ${TABLE}.DestinationID ;;
  }

  dimension: display_order {
    type: number
    sql: ${TABLE}.DisplayOrder ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: parent_template_type_id {
    type: number
    sql: ${TABLE}.ParentTemplateTypeID ;;
  }

  dimension: template_type_id {
    type: number
    sql: ${TABLE}.TemplateTypeID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
