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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists documents.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.list@.
module Gogol.FireStore.Projects.Databases.Documents.List
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsListResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesDocumentsList (..),
    newFireStoreProjectsDatabasesDocumentsList,
  )
where

import Gogol.FireStore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firestore.projects.databases.documents.list@ method which the
-- 'FireStoreProjectsDatabasesDocumentsList' request conforms to.
type FireStoreProjectsDatabasesDocumentsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> Core.Capture "collectionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "mask.fieldPaths" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "readTime" Core.DateTime
    Core.:> Core.QueryParam "showMissing" Core.Bool
    Core.:> Core.QueryParam "transaction" Core.Base64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDocumentsResponse

-- | Lists documents.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsList' smart constructor.
data FireStoreProjectsDatabasesDocumentsList = FireStoreProjectsDatabasesDocumentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The collection ID, relative to @parent@, to list. For example: @chatrooms@ or @messages@. This is optional, and when not provided, Firestore will list documents from all collections under the provided @parent@.
    collectionId :: Core.Text,
    -- | The list of field paths in the mask. See Document.fields for a field path syntax reference.
    maskFieldPaths :: (Core.Maybe [Core.Text]),
    -- | Optional. The optional ordering of the documents to return. For example: @priority desc, __name__ desc@. This mirrors the @ORDER BY@ used in Firestore queries but in a string representation. When absent, documents are ordered based on @__name__ ASC@.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of documents to return in a single response. Firestore may return fewer than this value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous @ListDocuments@ response. Provide this to retrieve the subsequent page. When paginating, all other parameters (with the exception of @page_size@) must match the values set in the request that generated the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@
    parent :: Core.Text,
    -- | Perform the read at the provided time. This may not be older than 270 seconds.
    readTime :: (Core.Maybe Core.DateTime),
    -- | If the list should show missing documents. A document is missing if it does not exist, but there are sub-documents nested underneath it. When true, such missing documents will be returned with a key but will not have fields, @create_time@, or @update_time@ set. Requests with @show_missing@ may not specify @where@ or @order_by@.
    showMissing :: (Core.Maybe Core.Bool),
    -- | Perform the read as part of an already active transaction.
    transaction :: (Core.Maybe Core.Base64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsList' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsList ::
  -- |  Optional. The collection ID, relative to @parent@, to list. For example: @chatrooms@ or @messages@. This is optional, and when not provided, Firestore will list documents from all collections under the provided @parent@. See 'collectionId'.
  Core.Text ->
  -- |  Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@ See 'parent'.
  Core.Text ->
  FireStoreProjectsDatabasesDocumentsList
newFireStoreProjectsDatabasesDocumentsList collectionId parent =
  FireStoreProjectsDatabasesDocumentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      collectionId = collectionId,
      maskFieldPaths = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      readTime = Core.Nothing,
      showMissing = Core.Nothing,
      transaction = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesDocumentsList
  where
  type
    Rs FireStoreProjectsDatabasesDocumentsList =
      ListDocumentsResponse
  type
    Scopes FireStoreProjectsDatabasesDocumentsList =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient
    FireStoreProjectsDatabasesDocumentsList {..} =
      go
        parent
        collectionId
        xgafv
        accessToken
        callback
        (maskFieldPaths Core.^. Core._Default)
        orderBy
        pageSize
        pageToken
        readTime
        showMissing
        transaction
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fireStoreService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FireStoreProjectsDatabasesDocumentsListResource
            )
            Core.mempty
