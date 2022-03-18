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
-- Module      : Network.Google.Datastore.Projects.Import
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports entities into Google Cloud Datastore. Existing entities with the same key are overwritten. The import occurs in the background and its progress can be monitored and managed via the Operation resource that is created. If an ImportEntities operation is cancelled, it is possible that a subset of the data has already been imported to Cloud Datastore.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.import@.
module Network.Google.Datastore.Projects.Import
  ( -- * Resource
    DatastoreProjectsImportResource,

    -- ** Constructing a Request
    newDatastoreProjectsImport,
    DatastoreProjectsImport,
  )
where

import Network.Google.Datastore.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @datastore.projects.import@ method which the
-- 'DatastoreProjectsImport' request conforms to.
type DatastoreProjectsImportResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.CaptureMode "projectId" "import" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleDatastoreAdminV1ImportEntitiesRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Imports entities into Google Cloud Datastore. Existing entities with the same key are overwritten. The import occurs in the background and its progress can be monitored and managed via the Operation resource that is created. If an ImportEntities operation is cancelled, it is possible that a subset of the data has already been imported to Cloud Datastore.
--
-- /See:/ 'newDatastoreProjectsImport' smart constructor.
data DatastoreProjectsImport = DatastoreProjectsImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleDatastoreAdminV1ImportEntitiesRequest,
    -- | Required. Project ID against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsImport' with the minimum fields required to make a request.
newDatastoreProjectsImport ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleDatastoreAdminV1ImportEntitiesRequest ->
  -- |  Required. Project ID against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsImport
newDatastoreProjectsImport payload projectId =
  DatastoreProjectsImport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DatastoreProjectsImport where
  type
    Rs DatastoreProjectsImport =
      GoogleLongrunningOperation
  type
    Scopes DatastoreProjectsImport =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient DatastoreProjectsImport {..} =
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
              Core.Proxy DatastoreProjectsImportResource
          )
          Core.mempty
