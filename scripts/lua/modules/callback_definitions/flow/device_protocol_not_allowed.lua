--
-- (C) 2019-21 - ntop.org
--

local checks = require("checks")
local alerts_api = require "alerts_api"
local alert_consts = require("alert_consts")
local flow_alert_keys = require "flow_alert_keys"

-- #################################################################

local script = {
  -- Script category
  category = checks.script_categories.security, 

  -- This script is only for alerts generation
  alert_id = flow_alert_keys.flow_alert_device_protocol_not_allowed,

  default_value = {
  },

  gui = {
    i18n_title = "flow_callbacks_config.dev_proto_not_allowed",
    i18n_description = i18n(
      ternary(ntop.isnEdge(), "flow_callbacks_config.dev_proto_not_allowed_nedge_description", "flow_callbacks_config.dev_proto_not_allowed_description"),
      {url = getDeviceProtocolPoliciesUrl()}),
  }
}

-- #################################################################

return script
