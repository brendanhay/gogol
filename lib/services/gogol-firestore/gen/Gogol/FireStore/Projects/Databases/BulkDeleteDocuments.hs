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
-- Module      : Gogol.FireStore.Projects.Databases.BulkDeleteDocuments
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Bulk deletes a subset of documents from Google Cloud Firestore. Documents created or updated after the underlying system starts to process the request will not be deleted. The bulk delete occurs in the background and its progress can be monitored and managed via the Operation resource that is created. For more details on bulk delete behavior, refer to: https:\/\/cloud.google.com\/firestore\/docs\/manage-data\/bulk-delete
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.bulkDeleteDocuments@.
module Gogol.FireStore.Projects.Databases.BulkDeleteDocuments
  ( -- * Resource
    FireStoreProjectsDatabasesBulkDeleteDocumentsResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesBulkDeleteDocuments (..),
    newFireStoreProjectsDatabasesBulkDeleteDocuments,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.bulkDeleteDocuments@ method which the
-- 'FireStoreProjectsDatabasesBulkDeleteDocuments' request conforms to.
type FireStoreProjectsDatabasesBulkDeleteDocumentsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "bulkDeleteDocuments" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleFirestoreAdminV1BulkDeleteDocumentsRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Bulk deletes a subset of documents from Google Cloud Firestore. Documents created or updated after the underlying system starts to process the request will not be deleted. The bulk delete occurs in the background and its progress can be monitored and managed via the Operation resource that is created. For more details on bulk delete behavior, refer to: https:\/\/cloud.google.com\/firestore\/docs\/manage-data\/bulk-delete
--
-- /See:/ 'newFireStoreProjectsDatabasesBulkDeleteDocuments' smart constructor.
data FireStoreProjectsDatabasesBulkDeleteDocuments = FireStoreProjectsDatabasesBulkDeleteDocuments
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Database to operate. Should be of the form: @projects\/{project_id}\/databases\/{database_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleFirestoreAdminV1BulkDeleteDocumentsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesBulkDeleteDocuments' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesBulkDeleteDocuments ::
  -- |  Required. Database to operate. Should be of the form: @projects\/{project_id}\/databases\/{database_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleFirestoreAdminV1BulkDeleteDocumentsRequest ->
  FireStoreProjectsDatabasesBulkDeleteDocuments
newFireStoreProjectsDatabasesBulkDeleteDocuments name payload =
  FireStoreProjectsDatabasesBulkDeleteDocuments
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
    FireStoreProjectsDatabasesBulkDeleteDocuments
  where
  type
    Rs FireStoreProjectsDatabasesBulkDeleteDocuments =
      GoogleLongrunningOperation
  type
    Scopes FireStoreProjectsDatabasesBulkDeleteDocuments =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesBulkDeleteDocuments {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fireStoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FireStoreProjectsDatabasesBulkDeleteDocumentsResource
          )
          Core.mempty
