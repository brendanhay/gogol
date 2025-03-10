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
-- Module      : Gogol.CloudSearch.Debug.Datasources.Items.Unmappedids.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all unmapped identities for a specific item. __Note:__ This API requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.debug.datasources.items.unmappedids.list@.
module Gogol.CloudSearch.Debug.Datasources.Items.Unmappedids.List
  ( -- * Resource
    CloudSearchDebugDatasourcesItemsUnmappedidsListResource,

    -- ** Constructing a Request
    CloudSearchDebugDatasourcesItemsUnmappedidsList (..),
    newCloudSearchDebugDatasourcesItemsUnmappedidsList,
  )
where

import Gogol.CloudSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudsearch.debug.datasources.items.unmappedids.list@ method which the
-- 'CloudSearchDebugDatasourcesItemsUnmappedidsList' request conforms to.
type CloudSearchDebugDatasourcesItemsUnmappedidsListResource =
  "v1"
    Core.:> "debug"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "unmappedids"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "debugOptions.enableDebugging" Core.Bool
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUnmappedIdentitiesResponse

-- | List all unmapped identities for a specific item. __Note:__ This API requires an admin account to execute.
--
-- /See:/ 'newCloudSearchDebugDatasourcesItemsUnmappedidsList' smart constructor.
data CloudSearchDebugDatasourcesItemsUnmappedidsList = CloudSearchDebugDatasourcesItemsUnmappedidsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    debugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    -- | Maximum number of items to fetch in a request. Defaults to 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | The name of the item, in the following format: datasources\/{source_id}\/items\/{ID}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchDebugDatasourcesItemsUnmappedidsList' with the minimum fields required to make a request.
newCloudSearchDebugDatasourcesItemsUnmappedidsList ::
  -- |  The name of the item, in the following format: datasources\/{source_id}\/items\/{ID} See 'parent'.
  Core.Text ->
  CloudSearchDebugDatasourcesItemsUnmappedidsList
newCloudSearchDebugDatasourcesItemsUnmappedidsList parent =
  CloudSearchDebugDatasourcesItemsUnmappedidsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      debugOptionsEnableDebugging = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchDebugDatasourcesItemsUnmappedidsList
  where
  type
    Rs CloudSearchDebugDatasourcesItemsUnmappedidsList =
      ListUnmappedIdentitiesResponse
  type
    Scopes CloudSearchDebugDatasourcesItemsUnmappedidsList =
      '[CloudSearch'FullControl, CloudSearch'Debug]
  requestClient CloudSearchDebugDatasourcesItemsUnmappedidsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      debugOptionsEnableDebugging
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudSearchDebugDatasourcesItemsUnmappedidsListResource
          )
          Core.mempty
