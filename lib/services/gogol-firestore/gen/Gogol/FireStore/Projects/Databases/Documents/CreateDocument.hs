{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FireStore.Projects.Databases.Documents.CreateDocument
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.createDocument@.
module Gogol.FireStore.Projects.Databases.Documents.CreateDocument
    (
    -- * Resource
      FireStoreProjectsDatabasesDocumentsCreateDocumentResource

    -- ** Constructing a Request
    , FireStoreProjectsDatabasesDocumentsCreateDocument (..)
    , newFireStoreProjectsDatabasesDocumentsCreateDocument
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.documents.createDocument@ method which the
-- 'FireStoreProjectsDatabasesDocumentsCreateDocument' request conforms to.
type FireStoreProjectsDatabasesDocumentsCreateDocumentResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         Core.Capture "collectionId" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "documentId" Core.Text Core.:>
                   Core.QueryParams "mask.fieldPaths" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Document Core.:>
                             Core.Post '[Core.JSON] Document

-- | Creates a new document.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsCreateDocument' smart constructor.
data FireStoreProjectsDatabasesDocumentsCreateDocument = FireStoreProjectsDatabasesDocumentsCreateDocument
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The collection ID, relative to @parent@, to list. For example: @chatrooms@.
    , collectionId :: Core.Text
      -- | The client-assigned document ID to use for this document. Optional. If not specified, an ID will be assigned by the service.
    , documentId :: (Core.Maybe Core.Text)
      -- | The list of field paths in the mask. See Document.fields for a field path syntax reference.
    , maskFieldPaths :: (Core.Maybe [Core.Text])
      -- | Required. The parent resource. For example: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/chatrooms\/{chatroom_id}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Document
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsCreateDocument' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsCreateDocument 
    ::  Core.Text
       -- ^  Required. The collection ID, relative to @parent@, to list. For example: @chatrooms@. See 'collectionId'.
    -> Core.Text
       -- ^  Required. The parent resource. For example: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/chatrooms\/{chatroom_id}@ See 'parent'.
    -> Document
       -- ^  Multipart request metadata. See 'payload'.
    -> FireStoreProjectsDatabasesDocumentsCreateDocument
newFireStoreProjectsDatabasesDocumentsCreateDocument collectionId parent payload =
  FireStoreProjectsDatabasesDocumentsCreateDocument
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , collectionId = collectionId
    , documentId = Core.Nothing
    , maskFieldPaths = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           FireStoreProjectsDatabasesDocumentsCreateDocument
         where
        type Rs
               FireStoreProjectsDatabasesDocumentsCreateDocument
             = Document
        type Scopes
               FireStoreProjectsDatabasesDocumentsCreateDocument
             = '[CloudPlatform'FullControl, Datastore'FullControl]
        requestClient
          FireStoreProjectsDatabasesDocumentsCreateDocument{..}
          = go parent collectionId xgafv accessToken callback
              documentId
              (maskFieldPaths Core.^. Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           FireStoreProjectsDatabasesDocumentsCreateDocumentResource)
                      Core.mempty

