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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.PartitionQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Partitions a query by returning partition cursors that can be used to run the query in parallel. The returned partition cursors are split points that can be used by RunQuery as starting\/end points for the query results.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.partitionQuery@.
module Gogol.FireStore.Projects.Databases.Documents.PartitionQuery
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsPartitionQueryResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesDocumentsPartitionQuery (..),
    newFireStoreProjectsDatabasesDocumentsPartitionQuery,
  )
where

import Gogol.FireStore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firestore.projects.databases.documents.partitionQuery@ method which the
-- 'FireStoreProjectsDatabasesDocumentsPartitionQuery' request conforms to.
type FireStoreProjectsDatabasesDocumentsPartitionQueryResource =
  "v1"
    Core.:> Core.CaptureMode "parent" "partitionQuery" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PartitionQueryRequest
    Core.:> Core.Post '[Core.JSON] PartitionQueryResponse

-- | Partitions a query by returning partition cursors that can be used to run the query in parallel. The returned partition cursors are split points that can be used by RunQuery as starting\/end points for the query results.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsPartitionQuery' smart constructor.
data FireStoreProjectsDatabasesDocumentsPartitionQuery = FireStoreProjectsDatabasesDocumentsPartitionQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@. Document resource names are not supported; only database resource names can be specified.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: PartitionQueryRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsPartitionQuery' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsPartitionQuery ::
  -- |  Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@. Document resource names are not supported; only database resource names can be specified. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PartitionQueryRequest ->
  FireStoreProjectsDatabasesDocumentsPartitionQuery
newFireStoreProjectsDatabasesDocumentsPartitionQuery parent payload =
  FireStoreProjectsDatabasesDocumentsPartitionQuery
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
    FireStoreProjectsDatabasesDocumentsPartitionQuery
  where
  type
    Rs
      FireStoreProjectsDatabasesDocumentsPartitionQuery =
      PartitionQueryResponse
  type
    Scopes
      FireStoreProjectsDatabasesDocumentsPartitionQuery =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient
    FireStoreProjectsDatabasesDocumentsPartitionQuery {..} =
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
                  FireStoreProjectsDatabasesDocumentsPartitionQueryResource
            )
            Core.mempty
