# ABAP OLAP Integration (Apache Druid & Kylin)

This repository contains an Object-Oriented ABAP (OO ABAP) implementation that integrates SAP with external OLAP engines such as [Apache Druid](https://druid.apache.org/) and [Apache Kylin](https://kylin.apache.org/).

## Structure

- `zif_olap_adapter.abap`: Common interface for OLAP adapters.
- `zcl_druid_adapter.abap`: Adapter for Apache Druid.
- `zcl_kylin_adapter.abap`: Adapter for Apache Kylin.
- `zcl_olap_client.abap`: Main client class that abstracts OLAP queries.

## Usage

Each adapter implements the method `execute_query( iv_query )`, returning a `string` with the query result.

You can use `ZCL_OLAP_CLIENT` to call either adapter, depending on the target OLAP engine.

## Next Steps

- Add a `ZCL_JSON_HTTP_CLIENT` utility class for actual REST HTTP calls.
- Configure HTTP destinations in SAP BTP for secure remote access.
- Implement authentication for both OLAP services (Basic Auth, Token, etc.).
- Add unit tests and a demo report class.

---

> This project serves as a proof of concept for integrating SAP systems with modern OLAP engines using clean, object-oriented ABAP.
