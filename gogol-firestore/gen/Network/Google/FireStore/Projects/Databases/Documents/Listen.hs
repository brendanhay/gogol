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
-- Module      : Network.Google.FireStore.Projects.Databases.Documents.Listen
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Listens to changes.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.listen@.
module Network.Google.FireStore.Projects.Databases.Documents.Listen
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsListenResource,

    -- ** Constructing a Request
    newFireStoreProjectsDatabasesDocumentsListen,
    FireStoreProjectsDatabasesDocumentsListen,
  )
where

import Network.Google.FireStore.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @firestore.projects.databases.documents.listen@ method which the
-- 'FireStoreProjectsDatabasesDocumentsListen' request conforms to.
type FireStoreProjectsDatabasesDocumentsListenResource =
  "v1"
    Core.:> Core.Capture "database" Core.Text
    Core.:> "documents:listen"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ListenRequest
    Core.:> Core.Post '[Core.JSON] ListenResponse

-- | Listens to changes.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsListen' smart constructor.
data FireStoreProjectsDatabasesDocumentsListen = FireStoreProjectsDatabasesDocumentsListen
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@.
    database :: Core.Text,
    -- | Multipart request metadata.
    payload :: ListenRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsListen' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsListen ::
  -- |  Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@. See 'database'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ListenRequest ->
  FireStoreProjectsDatabasesDocumentsListen
newFireStoreProjectsDatabasesDocumentsListen database payload =
  FireStoreProjectsDatabasesDocumentsListen
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
    FireStoreProjectsDatabasesDocumentsListen
  where
  type
    Rs FireStoreProjectsDatabasesDocumentsListen =
      ListenResponse
  type
    Scopes FireStoreProjectsDatabasesDocumentsListen =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient
    FireStoreProjectsDatabasesDocumentsListen {..} =
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
                  FireStoreProjectsDatabasesDocumentsListenResource
            )
            Core.mempty
