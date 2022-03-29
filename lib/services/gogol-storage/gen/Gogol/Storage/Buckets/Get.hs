-- |
-- Module      : Gogol.Storage.Buckets.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.get@.
module Gogol.Storage.Buckets.Get
    (
    -- * Constructing a Request
    StorageBucketsGet (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsGet (..),
#endif
    mkStorageBucketsGet,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Returns metadata for the specified bucket.
--
-- Construct a default value using the 'MkStorageBucketsGet' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsGet = StorageBucketsGet
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration does not match the given value.
    , ifMetagenerationNotMatch :: Core.Maybe Core.Int64
      -- | 
    , projection :: Core.Maybe Projection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsGet :: Core.Text -> StorageBucketsGet
pattern MkStorageBucketsGet{bucket} =
        StorageBucketsGet{bucket = bucket, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                          projection = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsGet "Please use MkStorageBucketsGet instead" #-}
#endif

-- | Create 'StorageBucketsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsGet :: Core.Text -> StorageBucketsGet
mkStorageBucketsGet bucket
  = StorageBucketsGet{bucket = bucket, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                      projection = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsGet where
        type Core.Scopes StorageBucketsGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageBucketsGet = StorageService
        type Core.Response StorageBucketsGet = Bucket
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsGet{..}
          = serviceRequest{Core.method = "GET", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch,
                                  ("ifMetagenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationNotMatch,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
