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
-- Module      : Gogol.FireStore.Projects.Databases.ExportDocuments
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a copy of all or a subset of documents from Google Cloud Firestore to another storage system, such as Google Cloud Storage. Recent updates to documents may not be reflected in the export. The export occurs in the background and its progress can be monitored and managed via the Operation resource that is created. The output of an export may only be used once the associated operation is done. If an export operation is cancelled before completion it may leave partial data behind in Google Cloud Storage. For more details on export behavior and output format, refer to: https:\/\/cloud.google.com\/firestore\/docs\/manage-data\/export-import
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.exportDocuments@.
module Gogol.FireStore.Projects.Databases.ExportDocuments
  ( -- * Resource
    FireStoreProjectsDatabasesExportDocumentsResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesExportDocuments (..),
    newFireStoreProjectsDatabasesExportDocuments,
  )
where

import Gogol.FireStore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firestore.projects.databases.exportDocuments@ method which the
-- 'FireStoreProjectsDatabasesExportDocuments' request conforms to.
type FireStoreProjectsDatabasesExportDocumentsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "exportDocuments" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleFirestoreAdminV1ExportDocumentsRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Exports a copy of all or a subset of documents from Google Cloud Firestore to another storage system, such as Google Cloud Storage. Recent updates to documents may not be reflected in the export. The export occurs in the background and its progress can be monitored and managed via the Operation resource that is created. The output of an export may only be used once the associated operation is done. If an export operation is cancelled before completion it may leave partial data behind in Google Cloud Storage. For more details on export behavior and output format, refer to: https:\/\/cloud.google.com\/firestore\/docs\/manage-data\/export-import
--
-- /See:/ 'newFireStoreProjectsDatabasesExportDocuments' smart constructor.
data FireStoreProjectsDatabasesExportDocuments = FireStoreProjectsDatabasesExportDocuments
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Database to export. Should be of the form: @projects\/{project_id}\/databases\/{database_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleFirestoreAdminV1ExportDocumentsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesExportDocuments' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesExportDocuments ::
  -- |  Required. Database to export. Should be of the form: @projects\/{project_id}\/databases\/{database_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleFirestoreAdminV1ExportDocumentsRequest ->
  FireStoreProjectsDatabasesExportDocuments
newFireStoreProjectsDatabasesExportDocuments name payload =
  FireStoreProjectsDatabasesExportDocuments
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesExportDocuments
  where
  type
    Rs FireStoreProjectsDatabasesExportDocuments =
      GoogleLongrunningOperation
  type
    Scopes FireStoreProjectsDatabasesExportDocuments =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient
    FireStoreProjectsDatabasesExportDocuments {..} =
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
                Core.Proxy
                  FireStoreProjectsDatabasesExportDocumentsResource
            )
            Core.mempty
