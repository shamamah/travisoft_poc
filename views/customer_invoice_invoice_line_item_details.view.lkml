view: customer_invoice_invoice_line_item_details {
  sql_table_name: dbo.CustomerInvoiceInvoiceLineItemDetails ;;

  dimension: invoice_line_item_detail_id {
    type: number
    sql: ${TABLE}.InvoiceLIneItemDetailID ;;
  }

  dimension: invoice_line_item_id {
    type: number
    sql: ${TABLE}.InvoiceLineItemID ;;
  }

  dimension: item_detail {
    type: string
    sql: ${TABLE}.ItemDetail ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
