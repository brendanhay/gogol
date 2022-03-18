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
-- Module      : Network.Google.FireStore.Projects.Databases.Documents.RunQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a query.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.runQuery@.
module Network.Google.FireStore.Projects.Databases.Documents.RunQuery
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsRunQueryResource,

    -- ** Constructing a Request
    newFireStoreProjectsDatabasesDocumentsRunQuery,
    FireStoreProjectsDatabasesDocumentsRunQuery,
  )
where

import Network.Google.FireStore.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @firestore.projects.databases.documents.runQuery@ method which the
-- 'FireStoreProjectsDatabasesDocumentsRunQuery' request conforms to.
type FireStoreProjectsDatabasesDocumentsRunQueryResource =
  "v1"
    Core.:> Core.CaptureMode "parent" "runQuery" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RunQueryRequest
    Core.:> Core.Post '[Core.JSON] RunQueryResponse

-- | Runs a query.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsRunQuery' smart constructor.
data FireStoreProjectsDatabasesDocumentsRunQuery = FireStoreProjectsDatabasesDocumentsRunQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: RunQueryRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsRunQuery' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsRunQuery ::
  -- |  Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RunQueryRequest ->
  FireStoreProjectsDatabasesDocumentsRunQuery
newFireStoreProjectsDatabasesDocumentsRunQuery parent payload =
  FireStoreProjectsDatabasesDocumentsRunQuery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesDocumentsRunQuery
  where
  type
    Rs FireStoreProjectsDatabasesDocumentsRunQuery =
      RunQueryResponse
  type
    Scopes
      FireStoreProjectsDatabasesDocumentsRunQuery =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient
    FireStoreProjectsDatabasesDocumentsRunQuery {..} =
      go
        parent
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
                  FireStoreProjectsDatabasesDocumentsRunQueryResource
            )
            Core.mempty
