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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.delete@.
module Gogol.FireStore.Projects.Databases.Documents.Delete
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsDeleteResource,

    -- ** Constructing a Request
    newFireStoreProjectsDatabasesDocumentsDelete,
    FireStoreProjectsDatabasesDocumentsDelete,
  )
where

import Gogol.FireStore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firestore.projects.databases.documents.delete@ method which the
-- 'FireStoreProjectsDatabasesDocumentsDelete' request conforms to.
type FireStoreProjectsDatabasesDocumentsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "currentDocument.exists" Core.Bool
    Core.:> Core.QueryParam
              "currentDocument.updateTime"
              Core.DateTime'
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a document.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsDelete' smart constructor.
data FireStoreProjectsDatabasesDocumentsDelete = FireStoreProjectsDatabasesDocumentsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When set to @true@, the target document must exist. When set to @false@, the target document must not exist.
    currentDocumentExists :: (Core.Maybe Core.Bool),
    -- | When set, the target document must exist and have been last updated at that time. Timestamp must be microsecond aligned.
    currentDocumentUpdateTime :: (Core.Maybe Core.DateTime'),
    -- | Required. The resource name of the Document to delete. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsDelete' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsDelete ::
  -- |  Required. The resource name of the Document to delete. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. See 'name'.
  Core.Text ->
  FireStoreProjectsDatabasesDocumentsDelete
newFireStoreProjectsDatabasesDocumentsDelete name =
  FireStoreProjectsDatabasesDocumentsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      currentDocumentExists = Core.Nothing,
      currentDocumentUpdateTime = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesDocumentsDelete
  where
  type
    Rs FireStoreProjectsDatabasesDocumentsDelete =
      Empty
  type
    Scopes FireStoreProjectsDatabasesDocumentsDelete =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient
    FireStoreProjectsDatabasesDocumentsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        currentDocumentExists
        currentDocumentUpdateTime
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fireStoreService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FireStoreProjectsDatabasesDocumentsDeleteResource
            )
            Core.mempty
