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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.Items.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets Item resource by item name. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.get@.
module Gogol.CloudSearch.Indexing.Datasources.Items.Get
  ( -- * Resource
    CloudSearchIndexingDatasourcesItemsGetResource,

    -- ** Constructing a Request
    CloudSearchIndexingDatasourcesItemsGet (..),
    newCloudSearchIndexingDatasourcesItemsGet,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.indexing.datasources.items.get@ method which the
-- 'CloudSearchIndexingDatasourcesItemsGet' request conforms to.
type CloudSearchIndexingDatasourcesItemsGetResource =
  "v1"
    Core.:> "indexing"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "connectorName" Core.Text
    Core.:> Core.QueryParam
              "debugOptions.enableDebugging"
              Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Item

-- | Gets Item resource by item name. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesItemsGet' smart constructor.
data CloudSearchIndexingDatasourcesItemsGet = CloudSearchIndexingDatasourcesItemsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of connector making this call. Format: datasources\/{source_id}\/connectors\/{ID}
    connectorName :: (Core.Maybe Core.Text),
    -- | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field.
    debugOptionsEnableDebugging :: (Core.Maybe Core.Bool),
    -- | Name of the item to get info. Format: datasources\/{source/id}\/items\/{item/id}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesItemsGet' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesItemsGet ::
  -- |  Name of the item to get info. Format: datasources\/{source/id}\/items\/{item/id} See 'name'.
  Core.Text ->
  CloudSearchIndexingDatasourcesItemsGet
newCloudSearchIndexingDatasourcesItemsGet name =
  CloudSearchIndexingDatasourcesItemsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      connectorName = Core.Nothing,
      debugOptionsEnableDebugging = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchIndexingDatasourcesItemsGet
  where
  type Rs CloudSearchIndexingDatasourcesItemsGet = Item
  type
    Scopes CloudSearchIndexingDatasourcesItemsGet =
      '[CloudSearch'FullControl, CloudSearch'Indexing]
  requestClient
    CloudSearchIndexingDatasourcesItemsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        connectorName
        debugOptionsEnableDebugging
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchIndexingDatasourcesItemsGetResource
            )
            Core.mempty
