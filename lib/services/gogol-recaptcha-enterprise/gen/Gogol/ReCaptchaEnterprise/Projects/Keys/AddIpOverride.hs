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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Keys.AddIpOverride
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an IP override to a key. The following restrictions hold: * The maximum number of IP overrides per key is 100. * For any conflict (such as IP already exists or IP part of an existing IP range), an error is returned.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.keys.addIpOverride@.
module Gogol.ReCaptchaEnterprise.Projects.Keys.AddIpOverride
  ( -- * Resource
    ReCaptchaEnterpriseProjectsKeysAddIpOverrideResource,

    -- ** Constructing a Request
    ReCaptchaEnterpriseProjectsKeysAddIpOverride (..),
    newReCaptchaEnterpriseProjectsKeysAddIpOverride,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.keys.addIpOverride@ method which the
-- 'ReCaptchaEnterpriseProjectsKeysAddIpOverride' request conforms to.
type ReCaptchaEnterpriseProjectsKeysAddIpOverrideResource =
  "v1"
    Core.:> Core.CaptureMode "name" "addIpOverride" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse

-- | Adds an IP override to a key. The following restrictions hold: * The maximum number of IP overrides per key is 100. * For any conflict (such as IP already exists or IP part of an existing IP range), an error is returned.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsKeysAddIpOverride' smart constructor.
data ReCaptchaEnterpriseProjectsKeysAddIpOverride = ReCaptchaEnterpriseProjectsKeysAddIpOverride
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the key to which the IP override is added, in the format @projects\/{project}\/keys\/{key}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsKeysAddIpOverride' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsKeysAddIpOverride ::
  -- |  Required. The name of the key to which the IP override is added, in the format @projects\/{project}\/keys\/{key}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest ->
  ReCaptchaEnterpriseProjectsKeysAddIpOverride
newReCaptchaEnterpriseProjectsKeysAddIpOverride name payload =
  ReCaptchaEnterpriseProjectsKeysAddIpOverride
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ReCaptchaEnterpriseProjectsKeysAddIpOverride
  where
  type
    Rs ReCaptchaEnterpriseProjectsKeysAddIpOverride =
      GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
  type
    Scopes ReCaptchaEnterpriseProjectsKeysAddIpOverride =
      '[CloudPlatform'FullControl]
  requestClient ReCaptchaEnterpriseProjectsKeysAddIpOverride {..} =
    go
      name
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
              Core.Proxy ReCaptchaEnterpriseProjectsKeysAddIpOverrideResource
          )
          Core.mempty
