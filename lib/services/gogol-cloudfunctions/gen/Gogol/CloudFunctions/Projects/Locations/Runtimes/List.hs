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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Runtimes.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of runtimes that are supported for the requested project.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.runtimes.list@.
module Gogol.CloudFunctions.Projects.Locations.Runtimes.List
  ( -- * Resource
    CloudFunctionsProjectsLocationsRuntimesListResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsRuntimesList (..),
    newCloudFunctionsProjectsLocationsRuntimesList,
  )
where

import Gogol.CloudFunctions.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudfunctions.projects.locations.runtimes.list@ method which the
-- 'CloudFunctionsProjectsLocationsRuntimesList' request conforms to.
type CloudFunctionsProjectsLocationsRuntimesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "runtimes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListRuntimesResponse

-- | Returns a list of runtimes that are supported for the requested project.
--
-- /See:/ 'newCloudFunctionsProjectsLocationsRuntimesList' smart constructor.
data CloudFunctionsProjectsLocationsRuntimesList = CloudFunctionsProjectsLocationsRuntimesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The filter for Runtimes that match the filter expression, following the syntax outlined in https:\/\/google.aip.dev\/160.
    filter :: (Core.Maybe Core.Text),
    -- | Required. The project and location from which the runtimes should be listed, specified in the format @projects\/*\/locations\/*@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsRuntimesList' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsRuntimesList ::
  -- |  Required. The project and location from which the runtimes should be listed, specified in the format @projects\/*\/locations\/*@ See 'parent'.
  Core.Text ->
  CloudFunctionsProjectsLocationsRuntimesList
newCloudFunctionsProjectsLocationsRuntimesList parent =
  CloudFunctionsProjectsLocationsRuntimesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudFunctionsProjectsLocationsRuntimesList
  where
  type
    Rs CloudFunctionsProjectsLocationsRuntimesList =
      ListRuntimesResponse
  type
    Scopes CloudFunctionsProjectsLocationsRuntimesList =
      '[CloudPlatform'FullControl]
  requestClient CloudFunctionsProjectsLocationsRuntimesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudFunctionsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudFunctionsProjectsLocationsRuntimesListResource
          )
          Core.mempty
