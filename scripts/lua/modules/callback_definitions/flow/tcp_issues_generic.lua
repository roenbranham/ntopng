--
-- (C) 2019-21 - ntop.org
--

local checks = require ("checks")
local alerts_api = require "alerts_api"
local alert_consts = require("alert_consts")
local flow_alert_keys = require "flow_alert_keys"

-- #################################################################

-- NOTE: this module is always enabled
local script = {
   packet_interface_only = true,
  
   -- Script category
   category = checks.script_categories.network,

   nedge_exclude = true,

   -- This script is only for alerts generation
   alert_id = flow_alert_keys.flow_alert_tcp_connection_issues,

   default_value = {
   },

   gui = {
      i18n_title = "flow_callbacks_config.tcp_issues_generic",
      i18n_description = "flow_callbacks_config.tcp_issues_generic_description",
   }
}

-- #################################################################

return script
