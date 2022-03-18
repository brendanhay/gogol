{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.DataFusion.Projects.Locations.Versions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists possible versions for Data Fusion instances in the specified project and location.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.versions.list@.
module Network.Google.DataFusion.Projects.Locations.Versions.List
  ( -- * Resource
    DataFusionProjectsLocationsVersionsListResource,

    -- ** Constructing a Request
    newDataFusionProjectsLocationsVersionsList,
    DataFusionProjectsLocationsVersionsList,
  )
where

import Network.Google.DataFusion.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @datafusion.projects.locations.versions.list@ method which the
-- 'DataFusionProjectsLocationsVersionsList' request conforms to.
type DataFusionProjectsLocationsVersionsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "versions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "latestPatchOnly" Core.Bool
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAvailableVersionsResponse

-- | Lists possible versions for Data Fusion instances in the specified project and location.
--
-- /See:/ 'newDataFusionProjectsLocationsVersionsList' smart constructor.
data DataFusionProjectsLocationsVersionsList = DataFusionProjectsLocationsVersionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether or not to return the latest patch of every available minor version. If true, only the latest patch will be returned. Ex. if allowed versions is [6.1.1, 6.1.2, 6.2.0] then response will be [6.1.2, 6.2.0]
    latestPatchOnly :: (Core.Maybe Core.Bool),
    -- | The maximum number of items to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value to use if there are additional results to retrieve for this list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The project and location for which to retrieve instance information in the format projects\/{project}\/locations\/{location}.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsVersionsList' with the minimum fields required to make a request.
newDataFusionProjectsLocationsVersionsList ::
  -- |  Required. The project and location for which to retrieve instance information in the format projects\/{project}\/locations\/{location}. See 'parent'.
  Core.Text ->
  DataFusionProjectsLocationsVersionsList
newDataFusionProjectsLocationsVersionsList parent =
  DataFusionProjectsLocationsVersionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      latestPatchOnly = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataFusionProjectsLocationsVersionsList
  where
  type
    Rs DataFusionProjectsLocationsVersionsList =
      ListAvailableVersionsResponse
  type
    Scopes DataFusionProjectsLocationsVersionsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DataFusionProjectsLocationsVersionsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        latestPatchOnly
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataFusionService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataFusionProjectsLocationsVersionsListResource
            )
            Core.mempty
