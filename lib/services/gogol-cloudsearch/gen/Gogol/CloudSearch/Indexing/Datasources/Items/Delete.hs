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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.Items.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes Item resource for the specified resource name. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.delete@.
module Gogol.CloudSearch.Indexing.Datasources.Items.Delete
  ( -- * Resource
    CloudSearchIndexingDatasourcesItemsDeleteResource,

    -- ** Constructing a Request
    CloudSearchIndexingDatasourcesItemsDelete (..),
    newCloudSearchIndexingDatasourcesItemsDelete,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.indexing.datasources.items.delete@ method which the
-- 'CloudSearchIndexingDatasourcesItemsDelete' request conforms to.
type CloudSearchIndexingDatasourcesItemsDeleteResource =
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
    Core.:> Core.QueryParam
              "mode"
              IndexingDatasourcesItemsDeleteMode
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "version" Core.Base64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes Item resource for the specified resource name. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesItemsDelete' smart constructor.
data CloudSearchIndexingDatasourcesItemsDelete = CloudSearchIndexingDatasourcesItemsDelete
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
    -- | Required. The RequestMode for this request.
    mode :: (Core.Maybe IndexingDatasourcesItemsDeleteMode),
    -- | Required. Name of the item to delete. Format: datasources\/{source/id}\/items\/{item/id}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Required. The incremented version of the item to delete from the index. The indexing system stores the version from the datasource as a byte string and compares the Item version in the index to the version of the queued Item using lexical ordering. Cloud Search Indexing won\'t delete any queued item with a version value that is less than or equal to the version of the currently indexed item. The maximum length for this field is 1024 bytes. For information on how item version affects the deletion process, refer to <https://developers.google.com/cloud-search/docs/guides/operations Handle revisions after manual deletes>.
    version :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesItemsDelete' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesItemsDelete ::
  -- |  Required. Name of the item to delete. Format: datasources\/{source/id}\/items\/{item/id} See 'name'.
  Core.Text ->
  CloudSearchIndexingDatasourcesItemsDelete
newCloudSearchIndexingDatasourcesItemsDelete name =
  CloudSearchIndexingDatasourcesItemsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      connectorName = Core.Nothing,
      debugOptionsEnableDebugging = Core.Nothing,
      mode = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchIndexingDatasourcesItemsDelete
  where
  type
    Rs CloudSearchIndexingDatasourcesItemsDelete =
      Operation
  type
    Scopes CloudSearchIndexingDatasourcesItemsDelete =
      '[CloudSearch'FullControl, CloudSearch'Indexing]
  requestClient
    CloudSearchIndexingDatasourcesItemsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        connectorName
        debugOptionsEnableDebugging
        mode
        uploadType
        uploadProtocol
        version
        (Core.Just Core.AltJSON)
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchIndexingDatasourcesItemsDeleteResource
            )
            Core.mempty
