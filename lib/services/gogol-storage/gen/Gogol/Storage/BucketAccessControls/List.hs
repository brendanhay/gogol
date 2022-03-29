-- |
-- Module      : Gogol.Storage.BucketAccessControls.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.list@.
module Gogol.Storage.BucketAccessControls.List
    (
    -- * Constructing a Request
    StorageBucketAccessControlsList (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketAccessControlsList (..),
#endif
    mkStorageBucketAccessControlsList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Retrieves ACL entries on the specified bucket.
--
-- Construct a default value using the 'MkStorageBucketAccessControlsList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketAccessControlsList = StorageBucketAccessControlsList
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketAccessControlsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketAccessControlsList :: Core.Text -> StorageBucketAccessControlsList
pattern MkStorageBucketAccessControlsList{bucket} =
        StorageBucketAccessControlsList{bucket = bucket, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketAccessControlsList "Please use MkStorageBucketAccessControlsList instead" #-}
#endif

-- | Create 'StorageBucketAccessControlsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketAccessControlsList :: Core.Text -> StorageBucketAccessControlsList
mkStorageBucketAccessControlsList bucket
  = StorageBucketAccessControlsList{bucket = bucket, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketAccessControlsList where
        type Core.Scopes StorageBucketAccessControlsList = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageBucketAccessControlsList = StorageService
        type Core.Response StorageBucketAccessControlsList = BucketAccessControls
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketAccessControlsList{..}
          = serviceRequest{Core.method = "GET", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/acl"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
