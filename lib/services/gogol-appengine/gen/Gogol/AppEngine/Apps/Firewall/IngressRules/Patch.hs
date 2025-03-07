{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AppEngine.Apps.Firewall.IngressRules.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified firewall rule.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.patch@.
module Gogol.AppEngine.Apps.Firewall.IngressRules.Patch
  ( -- * Resource
    AppEngineAppsFirewallIngressRulesPatchResource,

    -- ** Constructing a Request
    AppEngineAppsFirewallIngressRulesPatch (..),
    newAppEngineAppsFirewallIngressRulesPatch,
  )
where

import Gogol.AppEngine.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appengine.apps.firewall.ingressRules.patch@ method which the
-- 'AppEngineAppsFirewallIngressRulesPatch' request conforms to.
type AppEngineAppsFirewallIngressRulesPatchResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "firewall"
    Core.:> "ingressRules"
    Core.:> Core.Capture "ingressRulesId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FirewallRule
    Core.:> Core.Patch '[Core.JSON] FirewallRule

-- | Updates the specified firewall rule.
--
-- /See:/ 'newAppEngineAppsFirewallIngressRulesPatch' smart constructor.
data AppEngineAppsFirewallIngressRulesPatch = AppEngineAppsFirewallIngressRulesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the Firewall resource to update. Example: apps\/myapp\/firewall\/ingressRules\/100.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @appsId@.
    ingressRulesId :: Core.Text,
    -- | Multipart request metadata.
    payload :: FirewallRule,
    -- | Standard field mask for the set of fields to be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsFirewallIngressRulesPatch' with the minimum fields required to make a request.
newAppEngineAppsFirewallIngressRulesPatch ::
  -- |  Part of @name@. Name of the Firewall resource to update. Example: apps\/myapp\/firewall\/ingressRules\/100. See 'appsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'ingressRulesId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  FirewallRule ->
  AppEngineAppsFirewallIngressRulesPatch
newAppEngineAppsFirewallIngressRulesPatch
  appsId
  ingressRulesId
  payload =
    AppEngineAppsFirewallIngressRulesPatch
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        appsId = appsId,
        callback = Core.Nothing,
        ingressRulesId = ingressRulesId,
        payload = payload,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest AppEngineAppsFirewallIngressRulesPatch where
  type Rs AppEngineAppsFirewallIngressRulesPatch = FirewallRule
  type
    Scopes AppEngineAppsFirewallIngressRulesPatch =
      '[CloudPlatform'FullControl]
  requestClient AppEngineAppsFirewallIngressRulesPatch {..} =
    go
      appsId
      ingressRulesId
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appEngineService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AppEngineAppsFirewallIngressRulesPatchResource
          )
          Core.mempty
