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
-- Module      : Gogol.CloudSearch.Indexing.Datasources.Items.Push
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pushes an item onto a queue for later polling and updating. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.push@.
module Gogol.CloudSearch.Indexing.Datasources.Items.Push
  ( -- * Resource
    CloudSearchIndexingDatasourcesItemsPushResource,

    -- ** Constructing a Request
    CloudSearchIndexingDatasourcesItemsPush (..),
    newCloudSearchIndexingDatasourcesItemsPush,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.indexing.datasources.items.push@ method which the
-- 'CloudSearchIndexingDatasourcesItemsPush' request conforms to.
type CloudSearchIndexingDatasourcesItemsPushResource =
  "v1"
    Core.:> "indexing"
    Core.:> Core.CaptureMode "name" "push" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PushItemRequest
    Core.:> Core.Post '[Core.JSON] Item

-- | Pushes an item onto a queue for later polling and updating. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.
--
-- /See:/ 'newCloudSearchIndexingDatasourcesItemsPush' smart constructor.
data CloudSearchIndexingDatasourcesItemsPush = CloudSearchIndexingDatasourcesItemsPush
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the item to push into the indexing queue. Format: datasources\/{source_id}\/items\/{ID} This is a required field. The maximum length is 1536 characters.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PushItemRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchIndexingDatasourcesItemsPush' with the minimum fields required to make a request.
newCloudSearchIndexingDatasourcesItemsPush ::
  -- |  Name of the item to push into the indexing queue. Format: datasources\/{source_id}\/items\/{ID} This is a required field. The maximum length is 1536 characters. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PushItemRequest ->
  CloudSearchIndexingDatasourcesItemsPush
newCloudSearchIndexingDatasourcesItemsPush name payload =
  CloudSearchIndexingDatasourcesItemsPush
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
    CloudSearchIndexingDatasourcesItemsPush
  where
  type
    Rs CloudSearchIndexingDatasourcesItemsPush =
      Item
  type
    Scopes CloudSearchIndexingDatasourcesItemsPush =
      '[CloudSearch'FullControl, CloudSearch'Indexing]
  requestClient
    CloudSearchIndexingDatasourcesItemsPush {..} =
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
                  CloudSearchIndexingDatasourcesItemsPushResource
            )
            Core.mempty
