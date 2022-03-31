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
-- Module      : Gogol.Datastore.Projects.Export
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a copy of all or a subset of entities from Google Cloud Datastore to another storage system, such as Google Cloud Storage. Recent updates to entities may not be reflected in the export. The export occurs in the background and its progress can be monitored and managed via the Operation resource that is created. The output of an export may only be used once the associated operation is done. If an export operation is cancelled before completion it may leave partial data behind in Google Cloud Storage.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.export@.
module Gogol.Datastore.Projects.Export
  ( -- * Resource
    DatastoreProjectsExportResource,

    -- ** Constructing a Request
    newDatastoreProjectsExport,
    DatastoreProjectsExport,
  )
where

import Gogol.Datastore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datastore.projects.export@ method which the
-- 'DatastoreProjectsExport' request conforms to.
type DatastoreProjectsExportResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.CaptureMode "projectId" "export" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleDatastoreAdminV1ExportEntitiesRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Exports a copy of all or a subset of entities from Google Cloud Datastore to another storage system, such as Google Cloud Storage. Recent updates to entities may not be reflected in the export. The export occurs in the background and its progress can be monitored and managed via the Operation resource that is created. The output of an export may only be used once the associated operation is done. If an export operation is cancelled before completion it may leave partial data behind in Google Cloud Storage.
--
-- /See:/ 'newDatastoreProjectsExport' smart constructor.
data DatastoreProjectsExport = DatastoreProjectsExport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleDatastoreAdminV1ExportEntitiesRequest,
    -- | Required. Project ID against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsExport' with the minimum fields required to make a request.
newDatastoreProjectsExport ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleDatastoreAdminV1ExportEntitiesRequest ->
  -- |  Required. Project ID against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsExport
newDatastoreProjectsExport payload projectId =
  DatastoreProjectsExport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DatastoreProjectsExport where
  type
    Rs DatastoreProjectsExport =
      GoogleLongrunningOperation
  type
    Scopes DatastoreProjectsExport =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient DatastoreProjectsExport {..} =
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
              Core.Proxy DatastoreProjectsExportResource
          )
          Core.mempty
