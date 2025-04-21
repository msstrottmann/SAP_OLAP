INTERFACE zif_olap_adapter PUBLIC.

  METHODS:
    execute_query
      IMPORTING
        iv_query TYPE string
      RETURNING VALUE(rv_result) TYPE string.

ENDINTERFACE.
