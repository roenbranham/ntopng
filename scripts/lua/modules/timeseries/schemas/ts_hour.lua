--
-- (C) 2021 - ntop.org
--

local ts_utils = require "ts_utils_core"
local schema

schema = ts_utils.newSchema("am_host:val_hour", {
  step = 3600,
  metrics_type = ts_utils.metrics.gauge,
  aggregation_function = ts_utils.aggregation.max,
  is_system_schema = true,
})

schema:addTag("ifid")
schema:addTag("host")
schema:addTag("metric")
schema:addMetric("value")

-- ##############################################

schema = ts_utils.newSchema("am_host:http_stats_hour", {
  step = 3600,
  metrics_type = ts_utils.metrics.gauge,
  aggregation_function = ts_utils.aggregation.max,
  is_system_schema = true,
})

schema:addTag("ifid")
schema:addTag("host")
schema:addTag("metric")
schema:addMetric("lookup_ms")
schema:addMetric("other_ms")

-- ##############################################

schema = ts_utils.newSchema("am_host:https_stats_hour", {
  step = 3600,
  metrics_type = ts_utils.metrics.gauge,
  aggregation_function = ts_utils.aggregation.max,
  is_system_schema = true,
})

schema:addTag("ifid")
schema:addTag("host")
schema:addTag("metric")
schema:addMetric("lookup_ms")
schema:addMetric("connect_ms")
schema:addMetric("other_ms")

-- ##############################################

schema = ts_utils.newSchema("am_host:upload_hour", {
  step = 3600,
  metrics_type = ts_utils.metrics.gauge,
  is_system_schema = true,
})

schema:addTag("ifid")
schema:addTag("host")
schema:addMetric("speed")

-- ##############################################

schema = ts_utils.newSchema("am_host:latency_hour", {
  step = 3600,
  metrics_type = ts_utils.metrics.gauge,
  is_system_schema = true,
})

schema:addTag("ifid")
schema:addTag("host")
schema:addMetric("latency")
