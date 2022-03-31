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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.Items.Unreserve
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unreserves all items from a queue, making them all eligible to be polled. This method is useful for resetting the indexing queue after a connector has been restarted. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.unreserve@.
module Gogol.CloudSearch.Indexing.Datasources.Items.Unreserve
  ( -- * Resource
    CloudSearchIndexingDatasourcesItemsUnreserveResource,

    -- ** Constructing a Request
    newCloudSearchIndexingDatasourcesItemsUnreserve,
    CloudSearchIndexingDatasourcesItemsUnreserve,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.indexing.datasources.items.unreserve@ method which the
-- 'CloudSearchIndexingDatasourcesItemsUnreserve' request conforms to.
type CloudSearchIndexingDatasourcesItemsUnreserveResource =
  "v1"
    Core.:> "indexing"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "items:unreserve"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UnreserveItemsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Unreserves all items from a queue, making them all eligible to be polled. This method is useful for resetting the indexing queue after a connector has been restarted. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesItemsUnreserve' smart constructor.
data CloudSearchIndexingDatasourcesItemsUnreserve = CloudSearchIndexingDatasourcesItemsUnreserve
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the Data Source to unreserve all items. Format: datasources\/{source_id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UnreserveItemsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesItemsUnreserve' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesItemsUnreserve ::
  -- |  Name of the Data Source to unreserve all items. Format: datasources\/{source_id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UnreserveItemsRequest ->
  CloudSearchIndexingDatasourcesItemsUnreserve
newCloudSearchIndexingDatasourcesItemsUnreserve name payload =
  CloudSearchIndexingDatasourcesItemsUnreserve
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
    CloudSearchIndexingDatasourcesItemsUnreserve
  where
  type
    Rs CloudSearchIndexingDatasourcesItemsUnreserve =
      Operation
  type
    Scopes
      CloudSearchIndexingDatasourcesItemsUnreserve =
      '[CloudSearch'FullControl, CloudSearch'Indexing]
  requestClient
    CloudSearchIndexingDatasourcesItemsUnreserve {..} =
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
                  CloudSearchIndexingDatasourcesItemsUnreserveResource
            )
            Core.mempty
