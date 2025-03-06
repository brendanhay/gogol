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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.get@.
module Gogol.FireStore.Projects.Databases.Documents.Get
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsGetResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesDocumentsGet (..),
    newFireStoreProjectsDatabasesDocumentsGet,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.documents.get@ method which the
-- 'FireStoreProjectsDatabasesDocumentsGet' request conforms to.
type FireStoreProjectsDatabasesDocumentsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "mask.fieldPaths" Core.Text
    Core.:> Core.QueryParam "readTime" Core.DateTime
    Core.:> Core.QueryParam "transaction" Core.Base64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Document

-- | Gets a single document.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsGet' smart constructor.
data FireStoreProjectsDatabasesDocumentsGet = FireStoreProjectsDatabasesDocumentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The list of field paths in the mask. See Document.fields for a field path syntax reference.
    maskFieldPaths :: (Core.Maybe [Core.Text]),
    -- | Required. The resource name of the Document to get. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@.
    name :: Core.Text,
    -- | Reads the version of the document at the given time. This must be a microsecond precision timestamp within the past one hour, or if Point-in-Time Recovery is enabled, can additionally be a whole minute timestamp within the past 7 days.
    readTime :: (Core.Maybe Core.DateTime),
    -- | Reads the document in a transaction.
    transaction :: (Core.Maybe Core.Base64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsGet' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsGet ::
  -- |  Required. The resource name of the Document to get. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. See 'name'.
  Core.Text ->
  FireStoreProjectsDatabasesDocumentsGet
newFireStoreProjectsDatabasesDocumentsGet name =
  FireStoreProjectsDatabasesDocumentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maskFieldPaths = Core.Nothing,
      name = name,
      readTime = Core.Nothing,
      transaction = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FireStoreProjectsDatabasesDocumentsGet where
  type Rs FireStoreProjectsDatabasesDocumentsGet = Document
  type
    Scopes FireStoreProjectsDatabasesDocumentsGet =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesDocumentsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      (maskFieldPaths Core.^. Core._Default)
      readTime
      transaction
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fireStoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FireStoreProjectsDatabasesDocumentsGetResource
          )
          Core.mempty
