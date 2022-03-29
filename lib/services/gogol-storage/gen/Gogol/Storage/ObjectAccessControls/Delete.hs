-- |
-- Module      : Gogol.Storage.ObjectAccessControls.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.delete@.
module Gogol.Storage.ObjectAccessControls.Delete
    (
    -- * Constructing a Request
    StorageObjectAccessControlsDelete (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectAccessControlsDelete (..),
#endif
    mkStorageObjectAccessControlsDelete,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Permanently deletes the ACL entry for the specified entity on the specified object.
--
-- Construct a default value using the 'MkStorageObjectAccessControlsDelete' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectAccessControlsDelete = StorageObjectAccessControlsDelete
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    , entity :: Core.Text
      -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    , generation :: Core.Maybe Core.Int64
      -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , object :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectAccessControlsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectAccessControlsDelete :: Core.Text -> Core.Text -> Core.Text -> StorageObjectAccessControlsDelete
pattern MkStorageObjectAccessControlsDelete{bucket, entity, object} =
        StorageObjectAccessControlsDelete{bucket = bucket, entity = entity, generation = Core.Nothing, object = object,
                                          provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectAccessControlsDelete "Please use MkStorageObjectAccessControlsDelete instead" #-}
#endif

-- | Create 'StorageObjectAccessControlsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectAccessControlsDelete :: Core.Text -> Core.Text -> Core.Text -> StorageObjectAccessControlsDelete
mkStorageObjectAccessControlsDelete bucket entity object
  = StorageObjectAccessControlsDelete{bucket = bucket, entity = entity, generation = Core.Nothing, object = object,
                                      provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectAccessControlsDelete where
        type Core.Scopes StorageObjectAccessControlsDelete = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageObjectAccessControlsDelete = StorageService
        type Core.Response StorageObjectAccessControlsDelete = ()
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectAccessControlsDelete{..}
          = serviceRequest{Core.method = "DELETE",
                           Core.path =
                             Core.toRequestPath
                               ["/storage/v1/b/", Core.toPathBuilder bucket, "/o/", Core.toPathBuilder object, "/acl/", Core.toPathBuilder entity],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("generation",) Core.. Core.toQueryParam Core.<$> generation,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
