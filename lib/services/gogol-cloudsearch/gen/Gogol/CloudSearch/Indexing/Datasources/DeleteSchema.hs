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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.DeleteSchema
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the schema of a data source. __Note:__ This API requires an admin or service account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.deleteSchema@.
module Gogol.CloudSearch.Indexing.Datasources.DeleteSchema
  ( -- * Resource
    CloudSearchIndexingDatasourcesDeleteSchemaResource,

    -- ** Constructing a Request
    CloudSearchIndexingDatasourcesDeleteSchema (..),
    newCloudSearchIndexingDatasourcesDeleteSchema,
  )
where

import Gogol.CloudSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudsearch.indexing.datasources.deleteSchema@ method which the
-- 'CloudSearchIndexingDatasourcesDeleteSchema' request conforms to.
type CloudSearchIndexingDatasourcesDeleteSchemaResource =
  "v1"
    Core.:> "indexing"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "schema"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "debugOptions.enableDebugging" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes the schema of a data source. __Note:__ This API requires an admin or service account to execute.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesDeleteSchema' smart constructor.
data CloudSearchIndexingDatasourcesDeleteSchema = CloudSearchIndexingDatasourcesDeleteSchema
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    debugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    -- | The name of the data source to delete Schema. Format: datasources\/{source_id}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesDeleteSchema' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesDeleteSchema ::
  -- |  The name of the data source to delete Schema. Format: datasources\/{source_id} See 'name'.
  Core.Text ->
  CloudSearchIndexingDatasourcesDeleteSchema
newCloudSearchIndexingDatasourcesDeleteSchema name =
  CloudSearchIndexingDatasourcesDeleteSchema
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      debugOptionsEnableDebugging = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchIndexingDatasourcesDeleteSchema
  where
  type Rs CloudSearchIndexingDatasourcesDeleteSchema = Operation
  type
    Scopes CloudSearchIndexingDatasourcesDeleteSchema =
      '[ CloudSearch'FullControl,
         CloudSearch'Settings,
         CloudSearch'Settings'Indexing
       ]
  requestClient CloudSearchIndexingDatasourcesDeleteSchema {..} =
    go
      name
      xgafv
      accessToken
      callback
      debugOptionsEnableDebugging
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudSearchIndexingDatasourcesDeleteSchemaResource
          )
          Core.mempty
