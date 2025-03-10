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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all firewall policies that belong to a project.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.firewallpolicies.list@.
module Gogol.ReCaptchaEnterprise.Projects.Firewallpolicies.List
  ( -- * Resource
    ReCaptchaEnterpriseProjectsFirewallpoliciesListResource,

    -- ** Constructing a Request
    ReCaptchaEnterpriseProjectsFirewallpoliciesList (..),
    newReCaptchaEnterpriseProjectsFirewallpoliciesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.firewallpolicies.list@ method which the
-- 'ReCaptchaEnterpriseProjectsFirewallpoliciesList' request conforms to.
type ReCaptchaEnterpriseProjectsFirewallpoliciesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "firewallpolicies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse

-- | Returns the list of all firewall policies that belong to a project.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsFirewallpoliciesList' smart constructor.
data ReCaptchaEnterpriseProjectsFirewallpoliciesList = ReCaptchaEnterpriseProjectsFirewallpoliciesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of policies to return. Default is 10. Max limit is 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The next/page/token value returned from a previous. ListFirewallPoliciesRequest, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the project to list the policies for, in the format @projects\/{project}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsFirewallpoliciesList' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsFirewallpoliciesList ::
  -- |  Required. The name of the project to list the policies for, in the format @projects\/{project}@. See 'parent'.
  Core.Text ->
  ReCaptchaEnterpriseProjectsFirewallpoliciesList
newReCaptchaEnterpriseProjectsFirewallpoliciesList parent =
  ReCaptchaEnterpriseProjectsFirewallpoliciesList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ReCaptchaEnterpriseProjectsFirewallpoliciesList
  where
  type
    Rs ReCaptchaEnterpriseProjectsFirewallpoliciesList =
      GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
  type
    Scopes ReCaptchaEnterpriseProjectsFirewallpoliciesList =
      '[CloudPlatform'FullControl]
  requestClient ReCaptchaEnterpriseProjectsFirewallpoliciesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      reCaptchaEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReCaptchaEnterpriseProjectsFirewallpoliciesListResource
          )
          Core.mempty
