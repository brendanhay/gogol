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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.Listen
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Listens to changes. This method is only available via gRPC or WebChannel (not REST).
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.listen@.
module Gogol.FireStore.Projects.Databases.Documents.Listen
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsListenResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesDocumentsListen (..),
    newFireStoreProjectsDatabasesDocumentsListen,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

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

-- | Listens to changes. This method is only available via gRPC or WebChannel (not REST).
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
  type Rs FireStoreProjectsDatabasesDocumentsListen = ListenResponse
  type
    Scopes FireStoreProjectsDatabasesDocumentsListen =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesDocumentsListen {..} =
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
              Core.Proxy FireStoreProjectsDatabasesDocumentsListenResource
          )
          Core.mempty
