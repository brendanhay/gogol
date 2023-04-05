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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.RunAggregationQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs an aggregation query. Rather than producing Document results like Firestore.RunQuery, this API allows running an aggregation to produce a series of AggregationResult server-side. High-Level Example: @-- Return the number of documents in table given a filter. SELECT COUNT(*) FROM ( SELECT * FROM k where a = true );@
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.runAggregationQuery@.
module Gogol.FireStore.Projects.Databases.Documents.RunAggregationQuery
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsRunAggregationQueryResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesDocumentsRunAggregationQuery (..),
    newFireStoreProjectsDatabasesDocumentsRunAggregationQuery,
  )
where

import Gogol.FireStore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firestore.projects.databases.documents.runAggregationQuery@ method which the
-- 'FireStoreProjectsDatabasesDocumentsRunAggregationQuery' request conforms to.
type FireStoreProjectsDatabasesDocumentsRunAggregationQueryResource =
  "v1"
    Core.:> Core.CaptureMode
              "parent"
              "runAggregationQuery"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RunAggregationQueryRequest
    Core.:> Core.Post '[Core.JSON] RunAggregationQueryResponse

-- | Runs an aggregation query. Rather than producing Document results like Firestore.RunQuery, this API allows running an aggregation to produce a series of AggregationResult server-side. High-Level Example: @-- Return the number of documents in table given a filter. SELECT COUNT(*) FROM ( SELECT * FROM k where a = true );@
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsRunAggregationQuery' smart constructor.
data FireStoreProjectsDatabasesDocumentsRunAggregationQuery = FireStoreProjectsDatabasesDocumentsRunAggregationQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: RunAggregationQueryRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsRunAggregationQuery' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsRunAggregationQuery ::
  -- |  Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RunAggregationQueryRequest ->
  FireStoreProjectsDatabasesDocumentsRunAggregationQuery
newFireStoreProjectsDatabasesDocumentsRunAggregationQuery parent payload =
  FireStoreProjectsDatabasesDocumentsRunAggregationQuery
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
    FireStoreProjectsDatabasesDocumentsRunAggregationQuery
  where
  type
    Rs
      FireStoreProjectsDatabasesDocumentsRunAggregationQuery =
      RunAggregationQueryResponse
  type
    Scopes
      FireStoreProjectsDatabasesDocumentsRunAggregationQuery =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient
    FireStoreProjectsDatabasesDocumentsRunAggregationQuery {..} =
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
                  FireStoreProjectsDatabasesDocumentsRunAggregationQueryResource
            )
            Core.mempty
