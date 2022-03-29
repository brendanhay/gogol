-- |
-- Module      : Gogol.Storage.Buckets.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.patch@.
module Gogol.Storage.Buckets.Patch
    (
    -- * Constructing a Request
    StorageBucketsPatch (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsPatch (..),
#endif
    mkStorageBucketsPatch,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Patches a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.
--
-- Construct a default value using the 'MkStorageBucketsPatch' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsPatch = StorageBucketsPatch
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration does not match the given value.
    , ifMetagenerationNotMatch :: Core.Maybe Core.Int64
      -- | Multipart request metadata.
    , meta :: Bucket
      -- | 
    , predefinedAcl :: Core.Maybe PredefinedAcl
      -- | 
    , predefinedDefaultObjectAcl :: Core.Maybe PredefinedDefaultObjectAcl
      -- | 
    , projection :: Core.Maybe Projection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsPatch :: Core.Text -> Bucket -> StorageBucketsPatch
pattern MkStorageBucketsPatch{bucket, meta} =
        StorageBucketsPatch{bucket = bucket, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing, meta = meta,
                            predefinedAcl = Core.Nothing, predefinedDefaultObjectAcl = Core.Nothing, projection = Core.Nothing,
                            provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsPatch "Please use MkStorageBucketsPatch instead" #-}
#endif

-- | Create 'StorageBucketsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsPatch :: Core.Text -> Bucket -> StorageBucketsPatch
mkStorageBucketsPatch bucket meta
  = StorageBucketsPatch{bucket = bucket, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                        meta = meta, predefinedAcl = Core.Nothing, predefinedDefaultObjectAcl = Core.Nothing, projection = Core.Nothing,
                        provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsPatch where
        type Core.Scopes StorageBucketsPatch = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageBucketsPatch = StorageService
        type Core.Response StorageBucketsPatch = Bucket
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsPatch{..}
          = serviceRequest{Core.method = "PATCH", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch,
                                  ("ifMetagenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationNotMatch,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  ("predefinedAcl",) Core.. Core.toQueryParam Core.<$> predefinedAcl,
                                  ("predefinedDefaultObjectAcl",) Core.. Core.toQueryParam Core.<$> predefinedDefaultObjectAcl,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
