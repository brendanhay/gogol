{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppEngine.Apps.Firewall.IngressRules.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a firewall rule for the application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.create@.
module Gogol.AppEngine.Apps.Firewall.IngressRules.Create
  ( -- * Resource
    AppEngineAppsFirewallIngressRulesCreateResource,

    -- ** Constructing a Request
    AppEngineAppsFirewallIngressRulesCreate (..),
    newAppEngineAppsFirewallIngressRulesCreate,
  )
where

import Gogol.AppEngine.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appengine.apps.firewall.ingressRules.create@ method which the
-- 'AppEngineAppsFirewallIngressRulesCreate' request conforms to.
type AppEngineAppsFirewallIngressRulesCreateResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "firewall"
    Core.:> "ingressRules"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FirewallRule
    Core.:> Core.Post '[Core.JSON] FirewallRule

-- | Creates a firewall rule for the application.
--
-- /See:/ 'newAppEngineAppsFirewallIngressRulesCreate' smart constructor.
data AppEngineAppsFirewallIngressRulesCreate = AppEngineAppsFirewallIngressRulesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. Name of the parent Firewall collection in which to create a new rule. Example: apps\/myapp\/firewall\/ingressRules.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: FirewallRule,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsFirewallIngressRulesCreate' with the minimum fields required to make a request.
newAppEngineAppsFirewallIngressRulesCreate ::
  -- |  Part of @parent@. Name of the parent Firewall collection in which to create a new rule. Example: apps\/myapp\/firewall\/ingressRules. See 'appsId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  FirewallRule ->
  AppEngineAppsFirewallIngressRulesCreate
newAppEngineAppsFirewallIngressRulesCreate appsId payload =
  AppEngineAppsFirewallIngressRulesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AppEngineAppsFirewallIngressRulesCreate where
  type Rs AppEngineAppsFirewallIngressRulesCreate = FirewallRule
  type
    Scopes AppEngineAppsFirewallIngressRulesCreate =
      '[CloudPlatform'FullControl]
  requestClient AppEngineAppsFirewallIngressRulesCreate {..} =
    go
      appsId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appEngineService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AppEngineAppsFirewallIngressRulesCreateResource
          )
          Core.mempty
