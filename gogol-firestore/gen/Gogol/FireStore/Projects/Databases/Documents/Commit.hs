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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.Commit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits a transaction, while optionally updating documents.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.commit@.
module Gogol.FireStore.Projects.Databases.Documents.Commit
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsCommitResource,

    -- ** Constructing a Request
    newFireStoreProjectsDatabasesDocumentsCommit,
    FireStoreProjectsDatabasesDocumentsCommit,
  )
where

import Gogol.FireStore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firestore.projects.databases.documents.commit@ method which the
-- 'FireStoreProjectsDatabasesDocumentsCommit' request conforms to.
type FireStoreProjectsDatabasesDocumentsCommitResource =
  "v1"
    Core.:> Core.Capture "database" Core.Text
    Core.:> "documents:commit"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CommitRequest
    Core.:> Core.Post '[Core.JSON] CommitResponse

-- | Commits a transaction, while optionally updating documents.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsCommit' smart constructor.
data FireStoreProjectsDatabasesDocumentsCommit = FireStoreProjectsDatabasesDocumentsCommit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@.
    database :: Core.Text,
    -- | Multipart request metadata.
    payload :: CommitRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsCommit' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsCommit ::
  -- |  Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@. See 'database'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CommitRequest ->
  FireStoreProjectsDatabasesDocumentsCommit
newFireStoreProjectsDatabasesDocumentsCommit database payload =
  FireStoreProjectsDatabasesDocumentsCommit
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      database = database,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesDocumentsCommit
  where
  type
    Rs FireStoreProjectsDatabasesDocumentsCommit =
      CommitResponse
  type
    Scopes FireStoreProjectsDatabasesDocumentsCommit =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient
    FireStoreProjectsDatabasesDocumentsCommit {..} =
      go
        database
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
                  FireStoreProjectsDatabasesDocumentsCommitResource
            )
            Core.mempty
