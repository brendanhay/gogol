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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.UpdateSchema
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the schema of a data source. This method does not perform incremental updates to the schema. Instead, this method updates the schema by overwriting the entire schema. __Note:__ This API requires an admin or service account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.updateSchema@.
module Gogol.CloudSearch.Indexing.Datasources.UpdateSchema
  ( -- * Resource
    CloudSearchIndexingDatasourcesUpdateSchemaResource,

    -- ** Constructing a Request
    newCloudSearchIndexingDatasourcesUpdateSchema,
    CloudSearchIndexingDatasourcesUpdateSchema,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.indexing.datasources.updateSchema@ method which the
-- 'CloudSearchIndexingDatasourcesUpdateSchema' request conforms to.
type CloudSearchIndexingDatasourcesUpdateSchemaResource =
  "v1"
    Core.:> "indexing"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "schema"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateSchemaRequest
    Core.:> Core.Put '[Core.JSON] Operation

-- | Updates the schema of a data source. This method does not perform incremental updates to the schema. Instead, this method updates the schema by overwriting the entire schema. __Note:__ This API requires an admin or service account to execute.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesUpdateSchema' smart constructor.
data CloudSearchIndexingDatasourcesUpdateSchema = CloudSearchIndexingDatasourcesUpdateSchema
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the data source to update Schema. Format: datasources\/{source_id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateSchemaRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesUpdateSchema' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesUpdateSchema ::
  -- |  Name of the data source to update Schema. Format: datasources\/{source_id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateSchemaRequest ->
  CloudSearchIndexingDatasourcesUpdateSchema
newCloudSearchIndexingDatasourcesUpdateSchema name payload =
  CloudSearchIndexingDatasourcesUpdateSchema
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchIndexingDatasourcesUpdateSchema
  where
  type
    Rs CloudSearchIndexingDatasourcesUpdateSchema =
      Operation
  type
    Scopes
      CloudSearchIndexingDatasourcesUpdateSchema =
      '[ "https://www.googleapis.com/auth/cloud_search",
         "https://www.googleapis.com/auth/cloud_search.settings",
         "https://www.googleapis.com/auth/cloud_search.settings.indexing"
       ]
  requestClient
    CloudSearchIndexingDatasourcesUpdateSchema {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchIndexingDatasourcesUpdateSchemaResource
            )
            Core.mempty
