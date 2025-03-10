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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.SetupFunctionUpgradeConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a 2nd Gen copy of the function configuration based on the 1st Gen function with the given name. This is the first step of the multi step process to upgrade 1st Gen functions to 2nd Gen. Only 2nd Gen configuration is setup as part of this request and traffic continues to be served by 1st Gen.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.setupFunctionUpgradeConfig@.
module Gogol.CloudFunctions.Projects.Locations.Functions.SetupFunctionUpgradeConfig
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfigResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig (..),
    newCloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig,
  )
where

import Gogol.CloudFunctions.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.setupFunctionUpgradeConfig@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfigResource =
  "v2"
    Core.:> Core.CaptureMode "name" "setupFunctionUpgradeConfig" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetupFunctionUpgradeConfigRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a 2nd Gen copy of the function configuration based on the 1st Gen function with the given name. This is the first step of the multi step process to upgrade 1st Gen functions to 2nd Gen. Only 2nd Gen configuration is setup as part of this request and traffic continues to be served by 1st Gen.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig = CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the function which should have configuration copied for upgrade.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetupFunctionUpgradeConfigRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig ::
  -- |  Required. The name of the function which should have configuration copied for upgrade. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetupFunctionUpgradeConfigRequest ->
  CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig
newCloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig
  name
  payload =
    CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig
  where
  type
    Rs
      CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig =
      Operation
  type
    Scopes
      CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudFunctionsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfigResource
            )
            Core.mempty
