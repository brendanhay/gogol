-- |
-- Module      : Gogol.Storage.BucketAccessControls.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.get@.
module Gogol.Storage.BucketAccessControls.Get
    (
    -- * Constructing a Request
    StorageBucketAccessControlsGet (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketAccessControlsGet (..),
#endif
    mkStorageBucketAccessControlsGet,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Returns the ACL entry for the specified entity on the specified bucket.
--
-- Construct a default value using the 'MkStorageBucketAccessControlsGet' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketAccessControlsGet = StorageBucketAccessControlsGet
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
-- | Create 'StorageBucketAccessControlsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketAccessControlsGet :: Core.Text -> Core.Text -> StorageBucketAccessControlsGet
pattern MkStorageBucketAccessControlsGet{bucket, entity} =
        StorageBucketAccessControlsGet{bucket = bucket, entity = entity, provisionalUserProject = Core.Nothing,
                                       userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketAccessControlsGet "Please use MkStorageBucketAccessControlsGet instead" #-}
#endif

-- | Create 'StorageBucketAccessControlsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketAccessControlsGet :: Core.Text -> Core.Text -> StorageBucketAccessControlsGet
mkStorageBucketAccessControlsGet bucket entity
  = StorageBucketAccessControlsGet{bucket = bucket, entity = entity, provisionalUserProject = Core.Nothing,
                                   userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketAccessControlsGet where
        type Core.Scopes StorageBucketAccessControlsGet = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageBucketAccessControlsGet = StorageService
        type Core.Response StorageBucketAccessControlsGet = BucketAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketAccessControlsGet{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/acl/", Core.toPathBuilder entity],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
