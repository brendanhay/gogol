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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.DnsPeerings.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists DNS peerings for a given resource.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.dnsPeerings.list@.
module Gogol.DataFusion.Projects.Locations.Instances.DnsPeerings.List
  ( -- * Resource
    DataFusionProjectsLocationsInstancesDnsPeeringsListResource,

    -- ** Constructing a Request
    DataFusionProjectsLocationsInstancesDnsPeeringsList (..),
    newDataFusionProjectsLocationsInstancesDnsPeeringsList,
  )
where

import Gogol.DataFusion.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @datafusion.projects.locations.instances.dnsPeerings.list@ method which the
-- 'DataFusionProjectsLocationsInstancesDnsPeeringsList' request conforms to.
type DataFusionProjectsLocationsInstancesDnsPeeringsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dnsPeerings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDnsPeeringsResponse

-- | Lists DNS peerings for a given resource.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesDnsPeeringsList' smart constructor.
data DataFusionProjectsLocationsInstancesDnsPeeringsList = DataFusionProjectsLocationsInstancesDnsPeeringsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of dns peerings to return. The service may return fewer than this value. If unspecified, at most 50 dns peerings will be returned. The maximum value is 200; values above 200 will be coerced to 200.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListDnsPeerings@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListDnsPeerings@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent, which owns this collection of dns peerings. Format: projects\/{project}\/locations\/{location}\/instances\/{instance}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesDnsPeeringsList' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesDnsPeeringsList ::
  -- |  Required. The parent, which owns this collection of dns peerings. Format: projects\/{project}\/locations\/{location}\/instances\/{instance} See 'parent'.
  Core.Text ->
  DataFusionProjectsLocationsInstancesDnsPeeringsList
newDataFusionProjectsLocationsInstancesDnsPeeringsList parent =
  DataFusionProjectsLocationsInstancesDnsPeeringsList
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
    DataFusionProjectsLocationsInstancesDnsPeeringsList
  where
  type
    Rs DataFusionProjectsLocationsInstancesDnsPeeringsList =
      ListDnsPeeringsResponse
  type
    Scopes DataFusionProjectsLocationsInstancesDnsPeeringsList =
      '[CloudPlatform'FullControl]
  requestClient
    DataFusionProjectsLocationsInstancesDnsPeeringsList {..} =
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
        dataFusionService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataFusionProjectsLocationsInstancesDnsPeeringsListResource
            )
            Core.mempty
