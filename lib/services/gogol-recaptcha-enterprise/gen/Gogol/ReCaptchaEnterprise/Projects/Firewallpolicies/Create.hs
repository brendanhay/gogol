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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new FirewallPolicy, specifying conditions at which reCAPTCHA Enterprise actions can be executed. A project may have a maximum of 1000 policies.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.firewallpolicies.create@.
module Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.Create
  ( -- * Resource
    ReCaptchaEnterpriseProjectsFirewallpoliciesCreateResource,

    -- ** Constructing a Request
    ReCaptchaEnterpriseProjectsFirewallpoliciesCreate (..),
    newReCaptchaEnterpriseProjectsFirewallpoliciesCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.firewallpolicies.create@ method which the
-- 'ReCaptchaEnterpriseProjectsFirewallpoliciesCreate' request conforms to.
type ReCaptchaEnterpriseProjectsFirewallpoliciesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "firewallpolicies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1FirewallPolicy
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1FirewallPolicy

-- | Creates a new FirewallPolicy, specifying conditions at which reCAPTCHA Enterprise actions can be executed. A project may have a maximum of 1000 policies.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsFirewallpoliciesCreate' smart constructor.
data ReCaptchaEnterpriseProjectsFirewallpoliciesCreate = ReCaptchaEnterpriseProjectsFirewallpoliciesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the project this policy applies to, in the format @projects\/{project}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRecaptchaenterpriseV1FirewallPolicy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsFirewallpoliciesCreate' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsFirewallpoliciesCreate ::
  -- |  Required. The name of the project this policy applies to, in the format @projects\/{project}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRecaptchaenterpriseV1FirewallPolicy ->
  ReCaptchaEnterpriseProjectsFirewallpoliciesCreate
newReCaptchaEnterpriseProjectsFirewallpoliciesCreate parent payload =
  ReCaptchaEnterpriseProjectsFirewallpoliciesCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ReCaptchaEnterpriseProjectsFirewallpoliciesCreate
  where
  type
    Rs ReCaptchaEnterpriseProjectsFirewallpoliciesCreate =
      GoogleCloudRecaptchaenterpriseV1FirewallPolicy
  type
    Scopes ReCaptchaEnterpriseProjectsFirewallpoliciesCreate =
      '[CloudPlatform'FullControl]
  requestClient ReCaptchaEnterpriseProjectsFirewallpoliciesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
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
                ReCaptchaEnterpriseProjectsFirewallpoliciesCreateResource
          )
          Core.mempty
