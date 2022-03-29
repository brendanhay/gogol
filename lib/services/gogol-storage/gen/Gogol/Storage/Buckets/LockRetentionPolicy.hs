-- |
-- Module      : Gogol.Storage.Buckets.LockRetentionPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.lockRetentionPolicy@.
module Gogol.Storage.Buckets.LockRetentionPolicy
    (
    -- * Constructing a Request
    StorageBucketsLockRetentionPolicy (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsLockRetentionPolicy (..),
#endif
    mkStorageBucketsLockRetentionPolicy,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Locks retention policy on a bucket.
--
-- Construct a default value using the 'MkStorageBucketsLockRetentionPolicy' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsLockRetentionPolicy = StorageBucketsLockRetentionPolicy
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Makes the operation conditional on whether bucket\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: Core.Int64
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketsLockRetentionPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsLockRetentionPolicy :: Core.Text -> Core.Int64 -> StorageBucketsLockRetentionPolicy
pattern MkStorageBucketsLockRetentionPolicy{bucket, ifMetagenerationMatch} =
        StorageBucketsLockRetentionPolicy{bucket = bucket, ifMetagenerationMatch = ifMetagenerationMatch,
                                          provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsLockRetentionPolicy "Please use MkStorageBucketsLockRetentionPolicy instead" #-}
#endif

-- | Create 'StorageBucketsLockRetentionPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsLockRetentionPolicy :: Core.Text -> Core.Int64 -> StorageBucketsLockRetentionPolicy
mkStorageBucketsLockRetentionPolicy bucket ifMetagenerationMatch
  = StorageBucketsLockRetentionPolicy{bucket = bucket, ifMetagenerationMatch = ifMetagenerationMatch,
                                      provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsLockRetentionPolicy where
        type Core.Scopes StorageBucketsLockRetentionPolicy = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageBucketsLockRetentionPolicy = StorageService
        type Core.Response StorageBucketsLockRetentionPolicy = Bucket
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsLockRetentionPolicy{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/lockRetentionPolicy"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch, Core.Just ("alt", "json")]}
