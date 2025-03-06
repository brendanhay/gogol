{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Storage.Objects.WatchAll
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes on all objects in a bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.watchAll@.
module Gogol.Storage.Objects.WatchAll
  ( -- * Resource
    StorageObjectsWatchAllResource,

    -- ** Constructing a Request
    StorageObjectsWatchAll (..),
    newStorageObjectsWatchAll,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.watchAll@ method which the
-- 'StorageObjectsWatchAll' request conforms to.
type StorageObjectsWatchAllResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> "watch"
    Core.:> Core.QueryParam "delimiter" Core.Text
    Core.:> Core.QueryParam "endOffset" Core.Text
    Core.:> Core.QueryParam "includeTrailingDelimiter" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "prefix" Core.Text
    Core.:> Core.QueryParam "projection" ObjectsWatchAllProjection
    Core.:> Core.QueryParam "startOffset" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "versions" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Channel
    Core.:> Core.Post '[Core.JSON] Channel

-- | Watch for changes on all objects in a bucket.
--
-- /See:/ 'newStorageObjectsWatchAll' smart constructor.
data StorageObjectsWatchAll = StorageObjectsWatchAll
  { -- | Name of the bucket in which to look for objects.
    bucket :: Core.Text,
    -- | Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
    delimiter :: (Core.Maybe Core.Text),
    -- | Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
    endOffset :: (Core.Maybe Core.Text),
    -- | If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes.
    includeTrailingDelimiter :: (Core.Maybe Core.Bool),
    -- | Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller.
    maxResults :: Core.Word32,
    -- | A previously-returned page token representing part of the larger set of results to view.
    pageToken :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Channel,
    -- | Filter results to objects whose names begin with this prefix.
    prefix :: (Core.Maybe Core.Text),
    -- | Set of properties to return. Defaults to noAcl.
    projection :: (Core.Maybe ObjectsWatchAllProjection),
    -- | Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
    startOffset :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text),
    -- | If true, lists all versions of an object as distinct results. The default is false. For more information, see <https://cloud.google.com/storage/docs/object-versioning Object Versioning>.
    versions :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsWatchAll' with the minimum fields required to make a request.
newStorageObjectsWatchAll ::
  -- |  Name of the bucket in which to look for objects. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Channel ->
  StorageObjectsWatchAll
newStorageObjectsWatchAll bucket payload =
  StorageObjectsWatchAll
    { bucket = bucket,
      delimiter = Core.Nothing,
      endOffset = Core.Nothing,
      includeTrailingDelimiter = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      payload = payload,
      prefix = Core.Nothing,
      projection = Core.Nothing,
      startOffset = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing,
      versions = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsWatchAll where
  type Rs StorageObjectsWatchAll = Channel
  type
    Scopes StorageObjectsWatchAll =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageObjectsWatchAll {..} =
    go
      bucket
      delimiter
      endOffset
      includeTrailingDelimiter
      (Core.Just maxResults)
      pageToken
      prefix
      projection
      startOffset
      uploadType
      userProject
      versions
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageObjectsWatchAllResource)
          Core.mempty
