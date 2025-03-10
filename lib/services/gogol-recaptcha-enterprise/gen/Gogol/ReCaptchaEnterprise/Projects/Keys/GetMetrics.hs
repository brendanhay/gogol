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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Keys.GetMetrics
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get some aggregated metrics for a Key. This data can be used to build dashboards.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.keys.getMetrics@.
module Gogol.ReCaptchaEnterprise.Projects.Keys.GetMetrics
  ( -- * Resource
    ReCaptchaEnterpriseProjectsKeysGetMetricsResource,

    -- ** Constructing a Request
    ReCaptchaEnterpriseProjectsKeysGetMetrics (..),
    newReCaptchaEnterpriseProjectsKeysGetMetrics,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.keys.getMetrics@ method which the
-- 'ReCaptchaEnterpriseProjectsKeysGetMetrics' request conforms to.
type ReCaptchaEnterpriseProjectsKeysGetMetricsResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudRecaptchaenterpriseV1Metrics

-- | Get some aggregated metrics for a Key. This data can be used to build dashboards.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsKeysGetMetrics' smart constructor.
data ReCaptchaEnterpriseProjectsKeysGetMetrics = ReCaptchaEnterpriseProjectsKeysGetMetrics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the requested metrics, in the format @projects\/{project}\/keys\/{key}\/metrics@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsKeysGetMetrics' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsKeysGetMetrics ::
  -- |  Required. The name of the requested metrics, in the format @projects\/{project}\/keys\/{key}\/metrics@. See 'name'.
  Core.Text ->
  ReCaptchaEnterpriseProjectsKeysGetMetrics
newReCaptchaEnterpriseProjectsKeysGetMetrics name =
  ReCaptchaEnterpriseProjectsKeysGetMetrics
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ReCaptchaEnterpriseProjectsKeysGetMetrics
  where
  type
    Rs ReCaptchaEnterpriseProjectsKeysGetMetrics =
      GoogleCloudRecaptchaenterpriseV1Metrics
  type
    Scopes ReCaptchaEnterpriseProjectsKeysGetMetrics =
      '[CloudPlatform'FullControl]
  requestClient ReCaptchaEnterpriseProjectsKeysGetMetrics {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      reCaptchaEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReCaptchaEnterpriseProjectsKeysGetMetricsResource
          )
          Core.mempty
