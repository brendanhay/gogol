-- |
-- Module      : Gogol.Storage.BucketAccessControls.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.delete@.
module Gogol.Storage.BucketAccessControls.Delete
    (
    -- * Constructing a Request
    StorageBucketAccessControlsDelete (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketAccessControlsDelete (..),
#endif
    mkStorageBucketAccessControlsDelete,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Permanently deletes the ACL entry for the specified entity on the specified bucket.
--
-- Construct a default value using the 'MkStorageBucketAccessControlsDelete' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketAccessControlsDelete = StorageBucketAccessControlsDelete
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    , entity :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketAccessControlsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketAccessControlsDelete :: Core.Text -> Core.Text -> StorageBucketAccessControlsDelete
pattern MkStorageBucketAccessControlsDelete{bucket, entity} =
        StorageBucketAccessControlsDelete{bucket = bucket, entity = entity, provisionalUserProject = Core.Nothing,
                                          userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketAccessControlsDelete "Please use MkStorageBucketAccessControlsDelete instead" #-}
#endif

-- | Create 'StorageBucketAccessControlsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketAccessControlsDelete :: Core.Text -> Core.Text -> StorageBucketAccessControlsDelete
mkStorageBucketAccessControlsDelete bucket entity
  = StorageBucketAccessControlsDelete{bucket = bucket, entity = entity, provisionalUserProject = Core.Nothing,
                                      userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketAccessControlsDelete where
        type Core.Scopes StorageBucketAccessControlsDelete = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageBucketAccessControlsDelete = StorageService
        type Core.Response StorageBucketAccessControlsDelete = ()
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketAccessControlsDelete{..}
          = serviceRequest{Core.method = "DELETE",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/acl/", Core.toPathBuilder entity],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
