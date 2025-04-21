CLASS zcl_olap_client DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      query_druid IMPORTING iv_query TYPE string RETURNING VALUE(rv_result) TYPE string,
      query_kylin IMPORTING iv_query TYPE string RETURNING VALUE(rv_result) TYPE string.
ENDCLASS.

CLASS zcl_olap_client IMPLEMENTATION.

  METHOD query_druid.
    DATA(lo_adapter) = NEW zcl_druid_adapter( ).
    rv_result = lo_adapter->execute_query( iv_query ).
  ENDMETHOD.

  METHOD query_kylin.
    DATA(lo_adapter) = NEW zcl_kylin_adapter( ).
    rv_result = lo_adapter->execute_query( iv_query ).
  ENDMETHOD.

ENDCLASS.
