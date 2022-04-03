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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.Items.Poll
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Polls for unreserved items from the indexing queue and marks a set as reserved, starting with items that have the oldest timestamp from the highest priority ItemStatus. The priority order is as follows: ERROR MODIFIED NEW_ITEM ACCEPTED Reserving items ensures that polling from other threads cannot create overlapping sets. After handling the reserved items, the client should put items back into the unreserved state, either by calling index, or by calling push with the type REQUEUE. Items automatically become available (unreserved) after 4 hours even if no update or push method is called. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.poll@.
module Gogol.CloudSearch.Indexing.Datasources.Items.Poll
  ( -- * Resource
    CloudSearchIndexingDatasourcesItemsPollResource,

    -- ** Constructing a Request
    CloudSearchIndexingDatasourcesItemsPoll (..),
    newCloudSearchIndexingDatasourcesItemsPoll,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.indexing.datasources.items.poll@ method which the
-- 'CloudSearchIndexingDatasourcesItemsPoll' request conforms to.
type CloudSearchIndexingDatasourcesItemsPollResource =
  "v1"
    Core.:> "indexing"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "items:poll"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PollItemsRequest
    Core.:> Core.Post '[Core.JSON] PollItemsResponse

-- | Polls for unreserved items from the indexing queue and marks a set as reserved, starting with items that have the oldest timestamp from the highest priority ItemStatus. The priority order is as follows: ERROR MODIFIED NEW_ITEM ACCEPTED Reserving items ensures that polling from other threads cannot create overlapping sets. After handling the reserved items, the client should put items back into the unreserved state, either by calling index, or by calling push with the type REQUEUE. Items automatically become available (unreserved) after 4 hours even if no update or push method is called. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesItemsPoll' smart constructor.
data CloudSearchIndexingDatasourcesItemsPoll = CloudSearchIndexingDatasourcesItemsPoll
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the Data Source to poll items. Format: datasources\/{source_id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PollItemsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesItemsPoll' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesItemsPoll ::
  -- |  Name of the Data Source to poll items. Format: datasources\/{source_id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PollItemsRequest ->
  CloudSearchIndexingDatasourcesItemsPoll
newCloudSearchIndexingDatasourcesItemsPoll name payload =
  CloudSearchIndexingDatasourcesItemsPoll
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
    CloudSearchIndexingDatasourcesItemsPoll
  where
  type
    Rs CloudSearchIndexingDatasourcesItemsPoll =
      PollItemsResponse
  type
    Scopes CloudSearchIndexingDatasourcesItemsPoll =
      '[CloudSearch'FullControl, CloudSearch'Indexing]
  requestClient
    CloudSearchIndexingDatasourcesItemsPoll {..} =
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
                  CloudSearchIndexingDatasourcesItemsPollResource
            )
            Core.mempty
