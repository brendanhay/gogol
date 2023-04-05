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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.DnsPeerings.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates DNS peering on the given resource.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.dnsPeerings.create@.
module Gogol.DataFusion.Projects.Locations.Instances.DnsPeerings.Create
  ( -- * Resource
    DataFusionProjectsLocationsInstancesDnsPeeringsCreateResource,

    -- ** Constructing a Request
    DataFusionProjectsLocationsInstancesDnsPeeringsCreate (..),
    newDataFusionProjectsLocationsInstancesDnsPeeringsCreate,
  )
where

import Gogol.DataFusion.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datafusion.projects.locations.instances.dnsPeerings.create@ method which the
-- 'DataFusionProjectsLocationsInstancesDnsPeeringsCreate' request conforms to.
type DataFusionProjectsLocationsInstancesDnsPeeringsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dnsPeerings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "dnsPeeringId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DnsPeering
    Core.:> Core.Post '[Core.JSON] DnsPeering

-- | Creates DNS peering on the given resource.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesDnsPeeringsCreate' smart constructor.
data DataFusionProjectsLocationsInstancesDnsPeeringsCreate = DataFusionProjectsLocationsInstancesDnsPeeringsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the peering to create.
    dnsPeeringId :: (Core.Maybe Core.Text),
    -- | Required. The resource on which DNS peering will be created.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: DnsPeering,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesDnsPeeringsCreate' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesDnsPeeringsCreate ::
  -- |  Required. The resource on which DNS peering will be created. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DnsPeering ->
  DataFusionProjectsLocationsInstancesDnsPeeringsCreate
newDataFusionProjectsLocationsInstancesDnsPeeringsCreate parent payload =
  DataFusionProjectsLocationsInstancesDnsPeeringsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dnsPeeringId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataFusionProjectsLocationsInstancesDnsPeeringsCreate
  where
  type
    Rs
      DataFusionProjectsLocationsInstancesDnsPeeringsCreate =
      DnsPeering
  type
    Scopes
      DataFusionProjectsLocationsInstancesDnsPeeringsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    DataFusionProjectsLocationsInstancesDnsPeeringsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        dnsPeeringId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataFusionService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataFusionProjectsLocationsInstancesDnsPeeringsCreateResource
            )
            Core.mempty
