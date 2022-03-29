-- |
-- Module      : Gogol.Storage.Objects.WatchAll
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.watchAll@.
module Gogol.Storage.Objects.WatchAll
    (
    -- * Constructing a Request
    StorageObjectsWatchAll (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsWatchAll (..),
#endif
    mkStorageObjectsWatchAll,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Watch for changes on all objects in a bucket.
--
-- Construct a default value using the 'MkStorageObjectsWatchAll' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsWatchAll = StorageObjectsWatchAll
    {
      -- | Name of the bucket in which to look for objects.
      bucket :: Core.Text
      -- | Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
    , delimiter :: Core.Maybe Core.Text
      -- | Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
    , endOffset :: Core.Maybe Core.Text
      -- | If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes.
    , includeTrailingDelimiter :: Core.Maybe Core.Bool
      -- | Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller.
    , maxResults :: Core.Word32
      -- | Multipart request metadata.
    , meta :: Channel
      -- | A previously-returned page token representing part of the larger set of results to view.
    , pageToken :: Core.Maybe Core.Text
      -- | Filter results to objects whose names begin with this prefix.
    , prefix :: Core.Maybe Core.Text
      -- | 
    , projection :: Core.Maybe WatchAllProjection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
    , startOffset :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
      -- | If true, lists all versions of an object as distinct results. The default is false. For more information, see Object Versioning.
    , versions :: Core.Maybe Core.Bool
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectsWatchAll' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsWatchAll :: Core.Text -> Channel -> StorageObjectsWatchAll
pattern MkStorageObjectsWatchAll{bucket, meta} =
        StorageObjectsWatchAll{bucket = bucket, delimiter = Core.Nothing, endOffset = Core.Nothing,
                               includeTrailingDelimiter = Core.Nothing, maxResults = 1000, meta = meta, pageToken = Core.Nothing, prefix = Core.Nothing,
                               projection = Core.Nothing, provisionalUserProject = Core.Nothing, startOffset = Core.Nothing, userProject = Core.Nothing,
                               versions = Core.Nothing}

{-# DEPRECATED mkStorageObjectsWatchAll "Please use MkStorageObjectsWatchAll instead" #-}
#endif

-- | Create 'StorageObjectsWatchAll' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsWatchAll :: Core.Text -> Channel -> StorageObjectsWatchAll
mkStorageObjectsWatchAll bucket meta
  = StorageObjectsWatchAll{bucket = bucket, delimiter = Core.Nothing, endOffset = Core.Nothing,
                           includeTrailingDelimiter = Core.Nothing, maxResults = 1000, meta = meta, pageToken = Core.Nothing, prefix = Core.Nothing,
                           projection = Core.Nothing, provisionalUserProject = Core.Nothing, startOffset = Core.Nothing, userProject = Core.Nothing,
                           versions = Core.Nothing}
instance Core.GoogleRequest StorageObjectsWatchAll where
        type Core.Scopes StorageObjectsWatchAll =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageObjectsWatchAll = StorageService
        type Core.Response StorageObjectsWatchAll = Channel
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsWatchAll{..}
          = serviceRequest{Core.method = "POST", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/o/watch"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("delimiter",) Core.. Core.toQueryParam Core.<$> delimiter, ("endOffset",) Core.. Core.toQueryParam Core.<$> endOffset,
                                  ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("includeTrailingDelimiter",) Core.. Core.toQueryParam Core.<$> includeTrailingDelimiter,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, Core.Just ("maxResults", Core.toQueryParam maxResults),
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, ("pageToken",) Core.. Core.toQueryParam Core.<$> pageToken,
                                  ("prefix",) Core.. Core.toQueryParam Core.<$> prefix, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("startOffset",) Core.. Core.toQueryParam Core.<$> startOffset,
                                  ("userProject",) Core.. Core.toQueryParam Core.<$> userProject, ("versions",) Core.. Core.toQueryParam Core.<$> versions,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
