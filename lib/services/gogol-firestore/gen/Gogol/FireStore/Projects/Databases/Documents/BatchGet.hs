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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.BatchGet
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets multiple documents. Documents returned by this method are not guaranteed to be returned in the same order that they were requested.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.batchGet@.
module Gogol.FireStore.Projects.Databases.Documents.BatchGet
    (
    -- * Resource
      FireStoreProjectsDatabasesDocumentsBatchGetResource

    -- ** Constructing a Request
    , newFireStoreProjectsDatabasesDocumentsBatchGet
    , FireStoreProjectsDatabasesDocumentsBatchGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.documents.batchGet@ method which the
-- 'FireStoreProjectsDatabasesDocumentsBatchGet' request conforms to.
type FireStoreProjectsDatabasesDocumentsBatchGetResource
     =
     "v1" Core.:>
       Core.Capture "database" Core.Text Core.:>
         "documents:batchGet" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BatchGetDocumentsRequest
                         Core.:>
                         Core.Post '[Core.JSON] BatchGetDocumentsResponse

-- | Gets multiple documents. Documents returned by this method are not guaranteed to be returned in the same order that they were requested.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsBatchGet' smart constructor.
data FireStoreProjectsDatabasesDocumentsBatchGet = FireStoreProjectsDatabasesDocumentsBatchGet
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
    , payload :: BatchGetDocumentsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsBatchGet' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsBatchGet 
    ::  Core.Text
       -- ^  Required. The database name. In the format: @projects\/{project_id}\/databases\/{database_id}@. See 'database'.
    -> BatchGetDocumentsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> FireStoreProjectsDatabasesDocumentsBatchGet
newFireStoreProjectsDatabasesDocumentsBatchGet database payload =
  FireStoreProjectsDatabasesDocumentsBatchGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , database = database
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           FireStoreProjectsDatabasesDocumentsBatchGet
         where
        type Rs FireStoreProjectsDatabasesDocumentsBatchGet =
             BatchGetDocumentsResponse
        type Scopes
               FireStoreProjectsDatabasesDocumentsBatchGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          FireStoreProjectsDatabasesDocumentsBatchGet{..}
          = go database xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           FireStoreProjectsDatabasesDocumentsBatchGetResource)
                      Core.mempty

