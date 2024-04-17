-- Databricks notebook source
CREATE OR REFRESH LIVE TABLE AS
SELECT a.*, b.pool_price, b.forecast_pool_price, b.rolling_30day_avg FROM gshen_aeso.aeso.alberta_internal_load_raw a
left join gshen_aeso.aeso.pool_price_raw b
on a.begin_datetime_mpt = b.begin_datetime_mpt
