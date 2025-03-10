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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Keys.RemoveIpOverride
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an IP override from a key. The following restrictions hold: * If the IP isn\'t found in an existing IP override, a @NOT_FOUND@ error is returned. * If the IP is found in an existing IP override, but the override type does not match, a @NOT_FOUND@ error is returned.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.keys.removeIpOverride@.
module Gogol.ReCaptchaEnterprise.Projects.Keys.RemoveIpOverride
  ( -- * Resource
    ReCaptchaEnterpriseProjectsKeysRemoveIpOverrideResource,

    -- ** Constructing a Request
    ReCaptchaEnterpriseProjectsKeysRemoveIpOverride (..),
    newReCaptchaEnterpriseProjectsKeysRemoveIpOverride,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.keys.removeIpOverride@ method which the
-- 'ReCaptchaEnterpriseProjectsKeysRemoveIpOverride' request conforms to.
type ReCaptchaEnterpriseProjectsKeysRemoveIpOverrideResource =
  "v1"
    Core.:> Core.CaptureMode "name" "removeIpOverride" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse

-- | Removes an IP override from a key. The following restrictions hold: * If the IP isn\'t found in an existing IP override, a @NOT_FOUND@ error is returned. * If the IP is found in an existing IP override, but the override type does not match, a @NOT_FOUND@ error is returned.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsKeysRemoveIpOverride' smart constructor.
data ReCaptchaEnterpriseProjectsKeysRemoveIpOverride = ReCaptchaEnterpriseProjectsKeysRemoveIpOverride
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the key from which the IP override is removed, in the format @projects\/{project}\/keys\/{key}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsKeysRemoveIpOverride' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsKeysRemoveIpOverride ::
  -- |  Required. The name of the key from which the IP override is removed, in the format @projects\/{project}\/keys\/{key}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest ->
  ReCaptchaEnterpriseProjectsKeysRemoveIpOverride
newReCaptchaEnterpriseProjectsKeysRemoveIpOverride name payload =
  ReCaptchaEnterpriseProjectsKeysRemoveIpOverride
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
    ReCaptchaEnterpriseProjectsKeysRemoveIpOverride
  where
  type
    Rs ReCaptchaEnterpriseProjectsKeysRemoveIpOverride =
      GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
  type
    Scopes ReCaptchaEnterpriseProjectsKeysRemoveIpOverride =
      '[CloudPlatform'FullControl]
  requestClient ReCaptchaEnterpriseProjectsKeysRemoveIpOverride {..} =
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
              Core.Proxy ReCaptchaEnterpriseProjectsKeysRemoveIpOverrideResource
          )
          Core.mempty
