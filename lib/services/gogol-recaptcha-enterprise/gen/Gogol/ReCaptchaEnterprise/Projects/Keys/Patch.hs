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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Keys.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified key.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.keys.patch@.
module Gogol.ReCaptchaEnterprise.Projects.Keys.Patch
  ( -- * Resource
    ReCaptchaEnterpriseProjectsKeysPatchResource,

    -- ** Constructing a Request
    ReCaptchaEnterpriseProjectsKeysPatch (..),
    newReCaptchaEnterpriseProjectsKeysPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.keys.patch@ method which the
-- 'ReCaptchaEnterpriseProjectsKeysPatch' request conforms to.
type ReCaptchaEnterpriseProjectsKeysPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRecaptchaenterpriseV1Key
    Core.:> Core.Patch '[Core.JSON] GoogleCloudRecaptchaenterpriseV1Key

-- | Updates the specified key.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsKeysPatch' smart constructor.
data ReCaptchaEnterpriseProjectsKeysPatch = ReCaptchaEnterpriseProjectsKeysPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. The resource name for the Key in the format @projects\/{project}\/keys\/{key}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRecaptchaenterpriseV1Key,
    -- | Optional. The mask to control which fields of the key get updated. If the mask is not present, all fields are updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsKeysPatch' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsKeysPatch ::
  -- |  Identifier. The resource name for the Key in the format @projects\/{project}\/keys\/{key}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRecaptchaenterpriseV1Key ->
  ReCaptchaEnterpriseProjectsKeysPatch
newReCaptchaEnterpriseProjectsKeysPatch name payload =
  ReCaptchaEnterpriseProjectsKeysPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ReCaptchaEnterpriseProjectsKeysPatch where
  type
    Rs ReCaptchaEnterpriseProjectsKeysPatch =
      GoogleCloudRecaptchaenterpriseV1Key
  type
    Scopes ReCaptchaEnterpriseProjectsKeysPatch =
      '[CloudPlatform'FullControl]
  requestClient ReCaptchaEnterpriseProjectsKeysPatch {..} =
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
              Core.Proxy ReCaptchaEnterpriseProjectsKeysPatchResource
          )
          Core.mempty
