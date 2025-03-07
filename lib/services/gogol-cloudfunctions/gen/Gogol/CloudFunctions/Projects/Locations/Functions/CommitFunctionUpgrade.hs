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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.CommitFunctionUpgrade
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finalizes the upgrade after which function upgrade can not be rolled back. This is the last step of the multi step process to upgrade 1st Gen functions to 2nd Gen. Deletes all original 1st Gen related configuration and resources.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.commitFunctionUpgrade@.
module Gogol.CloudFunctions.Projects.Locations.Functions.CommitFunctionUpgrade
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgradeResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade (..),
    newCloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade,
  )
where

import Gogol.CloudFunctions.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.commitFunctionUpgrade@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgradeResource =
  "v2"
    Core.:> Core.CaptureMode "name" "commitFunctionUpgrade" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CommitFunctionUpgradeRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Finalizes the upgrade after which function upgrade can not be rolled back. This is the last step of the multi step process to upgrade 1st Gen functions to 2nd Gen. Deletes all original 1st Gen related configuration and resources.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade = CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the function for which upgrade should be finalized.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CommitFunctionUpgradeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade ::
  -- |  Required. The name of the function for which upgrade should be finalized. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CommitFunctionUpgradeRequest ->
  CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade
newCloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade
  name
  payload =
    CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade
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
    CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade
  where
  type
    Rs
      CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade =
      Operation
  type
    Scopes
      CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade {..} =
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
                  CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgradeResource
            )
            Core.mempty
