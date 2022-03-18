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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.get@.
module Gogol.FireStore.Projects.Databases.Documents.Get
    (
    -- * Resource
      FireStoreProjectsDatabasesDocumentsGetResource

    -- ** Constructing a Request
    , newFireStoreProjectsDatabasesDocumentsGet
    , FireStoreProjectsDatabasesDocumentsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Types

-- | A resource alias for @firestore.projects.databases.documents.get@ method which the
-- 'FireStoreProjectsDatabasesDocumentsGet' request conforms to.
type FireStoreProjectsDatabasesDocumentsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParams "mask.fieldPaths" Core.Text Core.:>
                 Core.QueryParam "readTime" Core.DateTime' Core.:>
                   Core.QueryParam "transaction" Core.Base64 Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Document

-- | Gets a single document.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsGet' smart constructor.
data FireStoreProjectsDatabasesDocumentsGet = FireStoreProjectsDatabasesDocumentsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The list of field paths in the mask. See Document.fields for a field path syntax reference.
    , maskFieldPaths :: (Core.Maybe [Core.Text])
      -- | Required. The resource name of the Document to get. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@.
    , name :: Core.Text
      -- | Reads the version of the document at the given time. This may not be older than 270 seconds.
    , readTime :: (Core.Maybe Core.DateTime')
      -- | Reads the document in a transaction.
    , transaction :: (Core.Maybe Core.Base64)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsGet' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsGet 
    ::  Core.Text
       -- ^  Required. The resource name of the Document to get. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. See 'name'.
    -> FireStoreProjectsDatabasesDocumentsGet
newFireStoreProjectsDatabasesDocumentsGet name =
  FireStoreProjectsDatabasesDocumentsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , maskFieldPaths = Core.Nothing
    , name = name
    , readTime = Core.Nothing
    , transaction = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           FireStoreProjectsDatabasesDocumentsGet
         where
        type Rs FireStoreProjectsDatabasesDocumentsGet =
             Document
        type Scopes FireStoreProjectsDatabasesDocumentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          FireStoreProjectsDatabasesDocumentsGet{..}
          = go name xgafv accessToken callback
              (maskFieldPaths Core.^. Core._Default)
              readTime
              transaction
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              fireStoreService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           FireStoreProjectsDatabasesDocumentsGetResource)
                      Core.mempty

