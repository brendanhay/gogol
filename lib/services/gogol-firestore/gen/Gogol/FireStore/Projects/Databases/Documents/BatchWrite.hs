{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FireStore.Projects.Databases.Documents.BatchWrite
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a batch of write operations. The BatchWrite method does not apply the write operations atomically and can apply them out of order. Method does not allow more than one write per document. Each write succeeds or fails independently. See the BatchWriteResponse for the success status of each write. If you require an atomically applied set of writes, use Commit instead.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.batchWrite@.
module Gogol.FireStore.Projects.Databases.Documents.BatchWrite
    (
    -- * Resource
      FireStoreProjectsDatabasesDocumentsBatchWriteResource

    -- ** Constructing a Request
    , newFireStoreProjectsDatabasesDocumentsBatchWrite
    , FireStoreProjectsDatabasesDocumentsBatchWrite
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.documents.batchWrite@ method which the
-- 'FireStoreProjectsDatabasesDocumentsBatchWrite' request conforms to.
type FireStoreProjectsDatabasesDocumentsBatchWriteResource
     =
     "v1" Core.:>
       Core.Capture "database" Core.Text Core.:>
         "documents:batchWrite" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BatchWriteRequest Core.:>
                         Core.Post '[Core.JSON] BatchWriteResponse

-- | Applies a batch of write operations. The BatchWrite method does not apply the write operations atomically and can apply them out of order. Method does not allow more than one write per document. Each write succeeds or fails independently. See the BatchWriteResponse for the success status of each write. If you require an atomically applied set of writes, use Commit instead.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsBatchWrite' smart constructor.
data FireStoreProjectsDatabasesDocumentsBatchWrite = FireStoreProjectsDatabasesDocumentsBatchWrite
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@.
    , database :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchWriteRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsBatchWrite' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsBatchWrite 
    ::  Core.Text
       -- ^  Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@. See 'database'.
    -> BatchWriteRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FireStoreProjectsDatabasesDocumentsBatchWrite
newFireStoreProjectsDatabasesDocumentsBatchWrite database payload =
  FireStoreProjectsDatabasesDocumentsBatchWrite
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , database = database
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           FireStoreProjectsDatabasesDocumentsBatchWrite
         where
        type Rs FireStoreProjectsDatabasesDocumentsBatchWrite
             = BatchWriteResponse
        type Scopes
               FireStoreProjectsDatabasesDocumentsBatchWrite
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          FireStoreProjectsDatabasesDocumentsBatchWrite{..}
          = go database xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           FireStoreProjectsDatabasesDocumentsBatchWriteResource)
                      Core.mempty

