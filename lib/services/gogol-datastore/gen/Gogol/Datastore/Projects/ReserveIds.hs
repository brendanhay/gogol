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
-- Module      : Gogol.Datastore.Projects.ReserveIds
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Prevents the supplied keys\' IDs from being auto-allocated by Cloud Datastore.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.reserveIds@.
module Gogol.Datastore.Projects.ReserveIds
  ( -- * Resource
    DatastoreProjectsReserveIdsResource,

    -- ** Constructing a Request
    DatastoreProjectsReserveIds (..),
    newDatastoreProjectsReserveIds,
  )
where

import Gogol.Datastore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datastore.projects.reserveIds@ method which the
-- 'DatastoreProjectsReserveIds' request conforms to.
type DatastoreProjectsReserveIdsResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.CaptureMode "projectId" "reserveIds" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReserveIdsRequest
    Core.:> Core.Post '[Core.JSON] ReserveIdsResponse

-- | Prevents the supplied keys\' IDs from being auto-allocated by Cloud Datastore.
--
-- /See:/ 'newDatastoreProjectsReserveIds' smart constructor.
data DatastoreProjectsReserveIds = DatastoreProjectsReserveIds
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ReserveIdsRequest,
    -- | Required. The ID of the project against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsReserveIds' with the minimum fields required to make a request.
newDatastoreProjectsReserveIds ::
  -- |  Multipart request metadata. See 'payload'.
  ReserveIdsRequest ->
  -- |  Required. The ID of the project against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsReserveIds
newDatastoreProjectsReserveIds payload projectId =
  DatastoreProjectsReserveIds
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DatastoreProjectsReserveIds
  where
  type
    Rs DatastoreProjectsReserveIds =
      ReserveIdsResponse
  type
    Scopes DatastoreProjectsReserveIds =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient DatastoreProjectsReserveIds {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      datastoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DatastoreProjectsReserveIdsResource
          )
          Core.mempty
