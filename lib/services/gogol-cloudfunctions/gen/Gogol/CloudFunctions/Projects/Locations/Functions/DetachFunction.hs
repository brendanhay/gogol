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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.DetachFunction
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches 2nd Gen function to Cloud Run function.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.detachFunction@.
module Gogol.CloudFunctions.Projects.Locations.Functions.DetachFunction
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsDetachFunctionResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsFunctionsDetachFunction (..),
    newCloudFunctionsProjectsLocationsFunctionsDetachFunction,
  )
where

import Gogol.CloudFunctions.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.detachFunction@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsDetachFunction' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsDetachFunctionResource =
  "v2"
    Core.:> Core.CaptureMode "name" "detachFunction" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DetachFunctionRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Detaches 2nd Gen function to Cloud Run function.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsDetachFunction' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsDetachFunction = CloudFunctionsProjectsLocationsFunctionsDetachFunction
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the function for which should be detached.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: DetachFunctionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsDetachFunction' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsDetachFunction ::
  -- |  Required. The name of the function for which should be detached. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DetachFunctionRequest ->
  CloudFunctionsProjectsLocationsFunctionsDetachFunction
newCloudFunctionsProjectsLocationsFunctionsDetachFunction
  name
  payload =
    CloudFunctionsProjectsLocationsFunctionsDetachFunction
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
    CloudFunctionsProjectsLocationsFunctionsDetachFunction
  where
  type
    Rs CloudFunctionsProjectsLocationsFunctionsDetachFunction =
      Operation
  type
    Scopes CloudFunctionsProjectsLocationsFunctionsDetachFunction =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsFunctionsDetachFunction {..} =
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
                  CloudFunctionsProjectsLocationsFunctionsDetachFunctionResource
            )
            Core.mempty
