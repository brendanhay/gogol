{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
  ( -- * Resource
    AppEngineAppsFirewallIngressRulesGetResource,

    -- ** Constructing a Request
    newAppEngineAppsFirewallIngressRulesGet,
    AppEngineAppsFirewallIngressRulesGet,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.firewall.ingressRules.get@ method which the
-- 'AppEngineAppsFirewallIngressRulesGet' request conforms to.
type AppEngineAppsFirewallIngressRulesGetResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "firewall"
    Core.:> "ingressRules"
    Core.:> Core.Capture "ingressRulesId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FirewallRule

-- | Gets the specified firewall rule.
--
-- /See:/ 'newAppEngineAppsFirewallIngressRulesGet' smart constructor.
data AppEngineAppsFirewallIngressRulesGet = AppEngineAppsFirewallIngressRulesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the Firewall resource to retrieve. Example: apps\/myapp\/firewall\/ingressRules\/100.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @appsId@.
    ingressRulesId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsFirewallIngressRulesGet' with the minimum fields required to make a request.
newAppEngineAppsFirewallIngressRulesGet ::
  -- |  Part of @name@. Name of the Firewall resource to retrieve. Example: apps\/myapp\/firewall\/ingressRules\/100. See 'appsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'ingressRulesId'.
  Core.Text ->
  AppEngineAppsFirewallIngressRulesGet
newAppEngineAppsFirewallIngressRulesGet appsId ingressRulesId =
  AppEngineAppsFirewallIngressRulesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      ingressRulesId = ingressRulesId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineAppsFirewallIngressRulesGet
  where
  type
    Rs AppEngineAppsFirewallIngressRulesGet =
      FirewallRule
  type
    Scopes AppEngineAppsFirewallIngressRulesGet =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    AppEngineAppsFirewallIngressRulesGet {..} =
      go
        appsId
        ingressRulesId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        appEngineService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AppEngineAppsFirewallIngressRulesGetResource
            )
            Core.mempty
