-- |
-- Module      : Gogol.Storage.Buckets.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.delete@.
module Gogol.Storage.Buckets.Delete
    (
    -- * Constructing a Request
    StorageBucketsDelete (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsDelete (..),
#endif
    mkStorageBucketsDelete,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Permanently deletes an empty bucket.
--
-- Construct a default value using the 'MkStorageBucketsDelete' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsDelete = StorageBucketsDelete
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | If set, only deletes the bucket if its metageneration matches this value.
    , ifMetagenerationMatch :: Core.Maybe Core.Int64
      -- | If set, only deletes the bucket if its metageneration does not match this value.
    , ifMetagenerationNotMatch :: Core.Maybe Core.Int64
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsDelete :: Core.Text -> StorageBucketsDelete
pattern MkStorageBucketsDelete{bucket} =
        StorageBucketsDelete{bucket = bucket, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                             provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsDelete "Please use MkStorageBucketsDelete instead" #-}
#endif

-- | Create 'StorageBucketsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsDelete :: Core.Text -> StorageBucketsDelete
mkStorageBucketsDelete bucket
  = StorageBucketsDelete{bucket = bucket, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                         provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsDelete where
        type Core.Scopes StorageBucketsDelete = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageBucketsDelete = StorageService
        type Core.Response StorageBucketsDelete = ()
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsDelete{..}
          = serviceRequest{Core.method = "DELETE", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch,
                                  ("ifMetagenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationNotMatch,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
