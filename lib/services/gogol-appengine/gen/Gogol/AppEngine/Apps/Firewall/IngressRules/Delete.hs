{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppEngine.Apps.Firewall.IngressRules.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified firewall rule.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.delete@.
module Gogol.AppEngine.Apps.Firewall.IngressRules.Delete
    (
    -- * Resource
      AppEngineAppsFirewallIngressRulesDeleteResource

    -- ** Constructing a Request
    , AppEngineAppsFirewallIngressRulesDelete (..)
    , newAppEngineAppsFirewallIngressRulesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.apps.firewall.ingressRules.delete@ method which the
-- 'AppEngineAppsFirewallIngressRulesDelete' request conforms to.
type AppEngineAppsFirewallIngressRulesDeleteResource
     =
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
                             Core.Delete '[Core.JSON] Empty

-- | Deletes the specified firewall rule.
--
-- /See:/ 'newAppEngineAppsFirewallIngressRulesDelete' smart constructor.
data AppEngineAppsFirewallIngressRulesDelete = AppEngineAppsFirewallIngressRulesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. Name of the Firewall resource to delete. Example: apps\/myapp\/firewall\/ingressRules\/100.
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

-- | Creates a value of 'AppEngineAppsFirewallIngressRulesDelete' with the minimum fields required to make a request.
newAppEngineAppsFirewallIngressRulesDelete 
    ::  Core.Text
       -- ^  Part of @name@. Name of the Firewall resource to delete. Example: apps\/myapp\/firewall\/ingressRules\/100. See 'appsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @appsId@. See 'ingressRulesId'.
    -> AppEngineAppsFirewallIngressRulesDelete
newAppEngineAppsFirewallIngressRulesDelete appsId ingressRulesId =
  AppEngineAppsFirewallIngressRulesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , appsId = appsId
    , callback = Core.Nothing
    , ingressRulesId = ingressRulesId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineAppsFirewallIngressRulesDelete
         where
        type Rs AppEngineAppsFirewallIngressRulesDelete =
             Empty
        type Scopes AppEngineAppsFirewallIngressRulesDelete =
             '[CloudPlatform'FullControl]
        requestClient
          AppEngineAppsFirewallIngressRulesDelete{..}
          = go appsId ingressRulesId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineAppsFirewallIngressRulesDeleteResource)
                      Core.mempty

