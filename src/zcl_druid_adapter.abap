CLASS zcl_druid_adapter DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: zif_olap_adapter.

  PRIVATE SECTION.
    CONSTANTS: c_endpoint TYPE string VALUE 'https://mi-druid/api/query'.
ENDCLASS.

CLASS zcl_druid_adapter IMPLEMENTATION.

  METHOD zif_olap_adapter~execute_query.
    "ZCL_JSON_HTTP_CLIENT TO BE PLACED HERE
    rv_result = 'Druid response for: ' && iv_query.
  ENDMETHOD.

ENDCLASS.
