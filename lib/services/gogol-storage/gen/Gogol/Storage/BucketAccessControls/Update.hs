-- |
-- Module      : Gogol.Storage.BucketAccessControls.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.update@.
module Gogol.Storage.BucketAccessControls.Update
    (
    -- * Constructing a Request
    StorageBucketAccessControlsUpdate (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketAccessControlsUpdate (..),
#endif
    mkStorageBucketAccessControlsUpdate,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Updates an ACL entry on the specified bucket.
--
-- Construct a default value using the 'MkStorageBucketAccessControlsUpdate' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketAccessControlsUpdate = StorageBucketAccessControlsUpdate
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    , entity :: Core.Text
      -- | Multipart request metadata.
    , meta :: BucketAccessControl
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketAccessControlsUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketAccessControlsUpdate ::
        Core.Text -> Core.Text -> BucketAccessControl -> StorageBucketAccessControlsUpdate
pattern MkStorageBucketAccessControlsUpdate{bucket, entity, meta} =
        StorageBucketAccessControlsUpdate{bucket = bucket, entity = entity, meta = meta, provisionalUserProject = Core.Nothing,
                                          userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketAccessControlsUpdate "Please use MkStorageBucketAccessControlsUpdate instead" #-}
#endif

-- | Create 'StorageBucketAccessControlsUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketAccessControlsUpdate :: Core.Text -> Core.Text -> BucketAccessControl -> StorageBucketAccessControlsUpdate
mkStorageBucketAccessControlsUpdate bucket entity meta
  = StorageBucketAccessControlsUpdate{bucket = bucket, entity = entity, meta = meta, provisionalUserProject = Core.Nothing,
                                      userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketAccessControlsUpdate where
        type Core.Scopes StorageBucketAccessControlsUpdate = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageBucketAccessControlsUpdate = StorageService
        type Core.Response StorageBucketAccessControlsUpdate = BucketAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketAccessControlsUpdate{..}
          = serviceRequest{Core.method = "PUT",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/acl/", Core.toPathBuilder entity],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
