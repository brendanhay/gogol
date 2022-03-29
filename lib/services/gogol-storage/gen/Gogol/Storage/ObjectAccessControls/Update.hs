-- |
-- Module      : Gogol.Storage.ObjectAccessControls.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.update@.
module Gogol.Storage.ObjectAccessControls.Update
    (
    -- * Constructing a Request
    StorageObjectAccessControlsUpdate (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectAccessControlsUpdate (..),
#endif
    mkStorageObjectAccessControlsUpdate,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Updates an ACL entry on the specified object.
--
-- Construct a default value using the 'MkStorageObjectAccessControlsUpdate' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectAccessControlsUpdate = StorageObjectAccessControlsUpdate
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    , entity :: Core.Text
      -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    , generation :: Core.Maybe Core.Int64
      -- | Multipart request metadata.
    , meta :: ObjectAccessControl
      -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , object :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectAccessControlsUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectAccessControlsUpdate ::
        Core.Text -> Core.Text -> ObjectAccessControl -> Core.Text -> StorageObjectAccessControlsUpdate
pattern MkStorageObjectAccessControlsUpdate{bucket, entity, meta, object} =
        StorageObjectAccessControlsUpdate{bucket = bucket, entity = entity, generation = Core.Nothing, meta = meta, object = object,
                                          provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectAccessControlsUpdate "Please use MkStorageObjectAccessControlsUpdate instead" #-}
#endif

-- | Create 'StorageObjectAccessControlsUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectAccessControlsUpdate ::
                                    Core.Text -> Core.Text -> ObjectAccessControl -> Core.Text -> StorageObjectAccessControlsUpdate
mkStorageObjectAccessControlsUpdate bucket entity meta object
  = StorageObjectAccessControlsUpdate{bucket = bucket, entity = entity, generation = Core.Nothing, meta = meta, object = object,
                                      provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectAccessControlsUpdate where
        type Core.Scopes StorageObjectAccessControlsUpdate = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageObjectAccessControlsUpdate = StorageService
        type Core.Response StorageObjectAccessControlsUpdate = ObjectAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectAccessControlsUpdate{..}
          = serviceRequest{Core.method = "PUT",
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
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
