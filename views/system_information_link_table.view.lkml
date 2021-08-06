view: system_information_link_table {
  sql_table_name: dbo.SystemInformationLinkTable ;;

  dimension: deleted {
    type: string
    sql: ${TABLE}.DELETED ;;
  }

  dimension: information_link_id {
    type: number
    sql: ${TABLE}.InformationLinkID ;;
  }

  dimension: information_type_id {
    type: number
    sql: ${TABLE}.InformationTypeID ;;
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

  dimension: table_link_ident {
    type: number
    sql: ${TABLE}.TableLinkIdent ;;
  }

  measure: count {
    type: count
    drill_fields: [module_types.module_type_id]
  }
}
