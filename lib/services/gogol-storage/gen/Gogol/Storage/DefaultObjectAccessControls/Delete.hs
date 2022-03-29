-- |
-- Module      : Gogol.Storage.DefaultObjectAccessControls.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.delete@.
module Gogol.Storage.DefaultObjectAccessControls.Delete
    (
    -- * Constructing a Request
    StorageDefaultObjectAccessControlsDelete (..),
#ifdef NOFIELDSELECTORS
    MkStorageDefaultObjectAccessControlsDelete (..),
#endif
    mkStorageDefaultObjectAccessControlsDelete,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Permanently deletes the default object ACL entry for the specified entity on the specified bucket.
--
-- Construct a default value using the 'MkStorageDefaultObjectAccessControlsDelete' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageDefaultObjectAccessControlsDelete = StorageDefaultObjectAccessControlsDelete
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
-- | Create 'StorageDefaultObjectAccessControlsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageDefaultObjectAccessControlsDelete :: Core.Text -> Core.Text -> StorageDefaultObjectAccessControlsDelete
pattern MkStorageDefaultObjectAccessControlsDelete{bucket, entity} =
        StorageDefaultObjectAccessControlsDelete{bucket = bucket, entity = entity, provisionalUserProject = Core.Nothing,
                                                 userProject = Core.Nothing}

{-# DEPRECATED mkStorageDefaultObjectAccessControlsDelete "Please use MkStorageDefaultObjectAccessControlsDelete instead" #-}
#endif

-- | Create 'StorageDefaultObjectAccessControlsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageDefaultObjectAccessControlsDelete :: Core.Text -> Core.Text -> StorageDefaultObjectAccessControlsDelete
mkStorageDefaultObjectAccessControlsDelete bucket entity
  = StorageDefaultObjectAccessControlsDelete{bucket = bucket, entity = entity, provisionalUserProject = Core.Nothing,
                                             userProject = Core.Nothing}
instance Core.GoogleRequest StorageDefaultObjectAccessControlsDelete where
        type Core.Scopes StorageDefaultObjectAccessControlsDelete = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageDefaultObjectAccessControlsDelete = StorageService
        type Core.Response StorageDefaultObjectAccessControlsDelete = ()
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageDefaultObjectAccessControlsDelete{..}
          = serviceRequest{Core.method = "DELETE",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/defaultObjectAcl/", Core.toPathBuilder entity],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
