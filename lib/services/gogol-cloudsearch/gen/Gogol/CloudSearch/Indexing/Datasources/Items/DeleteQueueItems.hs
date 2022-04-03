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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.Items.DeleteQueueItems
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all items in a queue. This method is useful for deleting stale items. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.deleteQueueItems@.
module Gogol.CloudSearch.Indexing.Datasources.Items.DeleteQueueItems
  ( -- * Resource
    CloudSearchIndexingDatasourcesItemsDeleteQueueItemsResource,

    -- ** Constructing a Request
    CloudSearchIndexingDatasourcesItemsDeleteQueueItems (..),
    newCloudSearchIndexingDatasourcesItemsDeleteQueueItems,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.indexing.datasources.items.deleteQueueItems@ method which the
-- 'CloudSearchIndexingDatasourcesItemsDeleteQueueItems' request conforms to.
type CloudSearchIndexingDatasourcesItemsDeleteQueueItemsResource =
  "v1"
    Core.:> "indexing"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "items:deleteQueueItems"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeleteQueueItemsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Deletes all items in a queue. This method is useful for deleting stale items. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesItemsDeleteQueueItems' smart constructor.
data CloudSearchIndexingDatasourcesItemsDeleteQueueItems = CloudSearchIndexingDatasourcesItemsDeleteQueueItems
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the Data Source to delete items in a queue. Format: datasources\/{source_id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeleteQueueItemsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesItemsDeleteQueueItems' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesItemsDeleteQueueItems ::
  -- |  Name of the Data Source to delete items in a queue. Format: datasources\/{source_id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeleteQueueItemsRequest ->
  CloudSearchIndexingDatasourcesItemsDeleteQueueItems
newCloudSearchIndexingDatasourcesItemsDeleteQueueItems name payload =
  CloudSearchIndexingDatasourcesItemsDeleteQueueItems
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
    CloudSearchIndexingDatasourcesItemsDeleteQueueItems
  where
  type
    Rs
      CloudSearchIndexingDatasourcesItemsDeleteQueueItems =
      Operation
  type
    Scopes
      CloudSearchIndexingDatasourcesItemsDeleteQueueItems =
      '[CloudSearch'FullControl, CloudSearch'Indexing]
  requestClient
    CloudSearchIndexingDatasourcesItemsDeleteQueueItems {..} =
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
                  CloudSearchIndexingDatasourcesItemsDeleteQueueItemsResource
            )
            Core.mempty
