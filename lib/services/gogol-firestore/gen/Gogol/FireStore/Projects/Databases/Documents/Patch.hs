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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or inserts a document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.patch@.
module Gogol.FireStore.Projects.Databases.Documents.Patch
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsPatchResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesDocumentsPatch (..),
    newFireStoreProjectsDatabasesDocumentsPatch,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.documents.patch@ method which the
-- 'FireStoreProjectsDatabasesDocumentsPatch' request conforms to.
type FireStoreProjectsDatabasesDocumentsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "currentDocument.exists" Core.Bool
    Core.:> Core.QueryParam "currentDocument.updateTime" Core.DateTime
    Core.:> Core.QueryParams "mask.fieldPaths" Core.Text
    Core.:> Core.QueryParams "updateMask.fieldPaths" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Document
    Core.:> Core.Patch '[Core.JSON] Document

-- | Updates or inserts a document.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsPatch' smart constructor.
data FireStoreProjectsDatabasesDocumentsPatch = FireStoreProjectsDatabasesDocumentsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When set to @true@, the target document must exist. When set to @false@, the target document must not exist.
    currentDocumentExists :: (Core.Maybe Core.Bool),
    -- | When set, the target document must exist and have been last updated at that time. Timestamp must be microsecond aligned.
    currentDocumentUpdateTime :: (Core.Maybe Core.DateTime),
    -- | The list of field paths in the mask. See Document.fields for a field path syntax reference.
    maskFieldPaths :: (Core.Maybe [Core.Text]),
    -- | The resource name of the document, for example @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Document,
    -- | The list of field paths in the mask. See Document.fields for a field path syntax reference.
    updateMaskFieldPaths :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsPatch' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsPatch ::
  -- |  The resource name of the document, for example @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Document ->
  FireStoreProjectsDatabasesDocumentsPatch
newFireStoreProjectsDatabasesDocumentsPatch name payload =
  FireStoreProjectsDatabasesDocumentsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      currentDocumentExists = Core.Nothing,
      currentDocumentUpdateTime = Core.Nothing,
      maskFieldPaths = Core.Nothing,
      name = name,
      payload = payload,
      updateMaskFieldPaths = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesDocumentsPatch
  where
  type Rs FireStoreProjectsDatabasesDocumentsPatch = Document
  type
    Scopes FireStoreProjectsDatabasesDocumentsPatch =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesDocumentsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      currentDocumentExists
      currentDocumentUpdateTime
      (maskFieldPaths Core.^. Core._Default)
      (updateMaskFieldPaths Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fireStoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FireStoreProjectsDatabasesDocumentsPatchResource
          )
          Core.mempty
