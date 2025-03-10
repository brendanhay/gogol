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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.Write
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Streams batches of document updates and deletes, in order. This method is only available via gRPC or WebChannel (not REST).
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.write@.
module Gogol.FireStore.Projects.Databases.Documents.Write
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsWriteResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesDocumentsWrite (..),
    newFireStoreProjectsDatabasesDocumentsWrite,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.documents.write@ method which the
-- 'FireStoreProjectsDatabasesDocumentsWrite' request conforms to.
type FireStoreProjectsDatabasesDocumentsWriteResource =
  "v1"
    Core.:> Core.Capture "database" Core.Text
    Core.:> "documents:write"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WriteRequest
    Core.:> Core.Post '[Core.JSON] WriteResponse

-- | Streams batches of document updates and deletes, in order. This method is only available via gRPC or WebChannel (not REST).
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsWrite' smart constructor.
data FireStoreProjectsDatabasesDocumentsWrite = FireStoreProjectsDatabasesDocumentsWrite
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@. This is only required in the first message.
    database :: Core.Text,
    -- | Multipart request metadata.
    payload :: WriteRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsWrite' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsWrite ::
  -- |  Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@. This is only required in the first message. See 'database'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WriteRequest ->
  FireStoreProjectsDatabasesDocumentsWrite
newFireStoreProjectsDatabasesDocumentsWrite database payload =
  FireStoreProjectsDatabasesDocumentsWrite
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
    FireStoreProjectsDatabasesDocumentsWrite
  where
  type Rs FireStoreProjectsDatabasesDocumentsWrite = WriteResponse
  type
    Scopes FireStoreProjectsDatabasesDocumentsWrite =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesDocumentsWrite {..} =
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
              Core.Proxy FireStoreProjectsDatabasesDocumentsWriteResource
          )
          Core.mempty
