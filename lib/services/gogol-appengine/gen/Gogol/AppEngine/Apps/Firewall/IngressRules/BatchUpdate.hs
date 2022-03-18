{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppEngine.Apps.Firewall.IngressRules.BatchUpdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the entire firewall ruleset in one bulk operation. This overrides and replaces the rules of an existing firewall with the new rules.If the final rule does not match traffic with the \'*\' wildcard IP range, then an \"allow all\" rule is explicitly added to the end of the list.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.batchUpdate@.
module Gogol.AppEngine.Apps.Firewall.IngressRules.BatchUpdate
    (
    -- * Resource
      AppEngineAppsFirewallIngressRulesBatchUpdateResource

    -- ** Constructing a Request
    , newAppEngineAppsFirewallIngressRulesBatchUpdate
    , AppEngineAppsFirewallIngressRulesBatchUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.firewall.ingressRules.batchUpdate@ method which the
-- 'AppEngineAppsFirewallIngressRulesBatchUpdate' request conforms to.
type AppEngineAppsFirewallIngressRulesBatchUpdateResource
     =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "firewall" Core.:>
             "ingressRules:batchUpdate" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON]
                             BatchUpdateIngressRulesRequest
                             Core.:>
                             Core.Post '[Core.JSON]
                               BatchUpdateIngressRulesResponse

-- | Replaces the entire firewall ruleset in one bulk operation. This overrides and replaces the rules of an existing firewall with the new rules.If the final rule does not match traffic with the \'*\' wildcard IP range, then an \"allow all\" rule is explicitly added to the end of the list.
--
-- /See:/ 'newAppEngineAppsFirewallIngressRulesBatchUpdate' smart constructor.
data AppEngineAppsFirewallIngressRulesBatchUpdate = AppEngineAppsFirewallIngressRulesBatchUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. Name of the Firewall collection to set. Example: apps\/myapp\/firewall\/ingressRules.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BatchUpdateIngressRulesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsFirewallIngressRulesBatchUpdate' with the minimum fields required to make a request.
newAppEngineAppsFirewallIngressRulesBatchUpdate 
    ::  Core.Text
       -- ^  Part of @name@. Name of the Firewall collection to set. Example: apps\/myapp\/firewall\/ingressRules. See 'appsId'.
    -> BatchUpdateIngressRulesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AppEngineAppsFirewallIngressRulesBatchUpdate
newAppEngineAppsFirewallIngressRulesBatchUpdate appsId payload =
  AppEngineAppsFirewallIngressRulesBatchUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsFirewallIngressRulesBatchUpdate
         where
        type Rs AppEngineAppsFirewallIngressRulesBatchUpdate
             = BatchUpdateIngressRulesResponse
        type Scopes
               AppEngineAppsFirewallIngressRulesBatchUpdate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AppEngineAppsFirewallIngressRulesBatchUpdate{..}
          = go appsId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineAppsFirewallIngressRulesBatchUpdateResource)
                      Core.mempty

