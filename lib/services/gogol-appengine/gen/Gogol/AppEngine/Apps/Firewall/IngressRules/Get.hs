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
-- Module      : Gogol.AppEngine.Apps.Firewall.IngressRules.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified firewall rule.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.get@.
module Gogol.AppEngine.Apps.Firewall.IngressRules.Get
    (
    -- * Resource
      AppEngineAppsFirewallIngressRulesGetResource

    -- ** Constructing a Request
    , newAppEngineAppsFirewallIngressRulesGet
    , AppEngineAppsFirewallIngressRulesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.firewall.ingressRules.get@ method which the
-- 'AppEngineAppsFirewallIngressRulesGet' request conforms to.
type AppEngineAppsFirewallIngressRulesGetResource =
     "v1" Core.:>
       "apps" Core.:>
         Core.Capture "appsId" Core.Text Core.:>
           "firewall" Core.:>
             "ingressRules" Core.:>
               Core.Capture "ingressRulesId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] FirewallRule

-- | Gets the specified firewall rule.
--
-- /See:/ 'newAppEngineAppsFirewallIngressRulesGet' smart constructor.
data AppEngineAppsFirewallIngressRulesGet = AppEngineAppsFirewallIngressRulesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. Name of the Firewall resource to retrieve. Example: apps\/myapp\/firewall\/ingressRules\/100.
    , appsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @appsId@.
    , ingressRulesId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsFirewallIngressRulesGet' with the minimum fields required to make a request.
newAppEngineAppsFirewallIngressRulesGet 
    ::  Core.Text
       -- ^  Part of @name@. Name of the Firewall resource to retrieve. Example: apps\/myapp\/firewall\/ingressRules\/100. See 'appsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'ingressRulesId'.
    -> AppEngineAppsFirewallIngressRulesGet
newAppEngineAppsFirewallIngressRulesGet appsId ingressRulesId =
  AppEngineAppsFirewallIngressRulesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , ingressRulesId = ingressRulesId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsFirewallIngressRulesGet
         where
        type Rs AppEngineAppsFirewallIngressRulesGet =
             FirewallRule
        type Scopes AppEngineAppsFirewallIngressRulesGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          AppEngineAppsFirewallIngressRulesGet{..}
          = go appsId ingressRulesId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineAppsFirewallIngressRulesGetResource)
                      Core.mempty

