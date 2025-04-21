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
    " Aquí usarías ZCL_JSON_HTTP_CLIENT para llamar a Druid
    rv_result = 'Resultado de Druid para: ' && iv_query.
  ENDMETHOD.

ENDCLASS.
