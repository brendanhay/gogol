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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified firewall policy.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.firewallpolicies.patch@.
module Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Patch
  ( -- * Resource
    ReCaptchaEnterpriseProjectsFirewallpoliciesPatchResource,

    -- ** Constructing a Request
    ReCaptchaEnterpriseProjectsFirewallpoliciesPatch (..),
    newReCaptchaEnterpriseProjectsFirewallpoliciesPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.firewallpolicies.patch@ method which the
-- 'ReCaptchaEnterpriseProjectsFirewallpoliciesPatch' request conforms to.
type ReCaptchaEnterpriseProjectsFirewallpoliciesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1FirewallPolicy
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1FirewallPolicy

-- | Updates the specified firewall policy.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsFirewallpoliciesPatch' smart constructor.
data ReCaptchaEnterpriseProjectsFirewallpoliciesPatch = ReCaptchaEnterpriseProjectsFirewallpoliciesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. The resource name for the FirewallPolicy in the format @projects\/{project}\/firewallpolicies\/{firewallpolicy}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRecaptchaenterpriseV1FirewallPolicy,
    -- | Optional. The mask to control which fields of the policy get updated. If the mask is not present, all fields are updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsFirewallpoliciesPatch' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsFirewallpoliciesPatch ::
  -- |  Identifier. The resource name for the FirewallPolicy in the format @projects\/{project}\/firewallpolicies\/{firewallpolicy}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRecaptchaenterpriseV1FirewallPolicy ->
  ReCaptchaEnterpriseProjectsFirewallpoliciesPatch
newReCaptchaEnterpriseProjectsFirewallpoliciesPatch name payload =
  ReCaptchaEnterpriseProjectsFirewallpoliciesPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ReCaptchaEnterpriseProjectsFirewallpoliciesPatch
  where
  type
    Rs ReCaptchaEnterpriseProjectsFirewallpoliciesPatch =
      GoogleCloudRecaptchaenterpriseV1FirewallPolicy
  type
    Scopes ReCaptchaEnterpriseProjectsFirewallpoliciesPatch =
      '[CloudPlatform'FullControl]
  requestClient ReCaptchaEnterpriseProjectsFirewallpoliciesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      reCaptchaEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ReCaptchaEnterpriseProjectsFirewallpoliciesPatchResource
          )
          Core.mempty
