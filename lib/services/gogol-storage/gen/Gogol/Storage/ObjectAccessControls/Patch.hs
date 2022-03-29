-- |
-- Module      : Gogol.Storage.ObjectAccessControls.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.patch@.
module Gogol.Storage.ObjectAccessControls.Patch
    (
    -- * Constructing a Request
    StorageObjectAccessControlsPatch (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectAccessControlsPatch (..),
#endif
    mkStorageObjectAccessControlsPatch,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Patches an ACL entry on the specified object.
--
-- Construct a default value using the 'MkStorageObjectAccessControlsPatch' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectAccessControlsPatch = StorageObjectAccessControlsPatch
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
-- | Create 'StorageObjectAccessControlsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectAccessControlsPatch ::
        Core.Text -> Core.Text -> ObjectAccessControl -> Core.Text -> StorageObjectAccessControlsPatch
pattern MkStorageObjectAccessControlsPatch{bucket, entity, meta, object} =
        StorageObjectAccessControlsPatch{bucket = bucket, entity = entity, generation = Core.Nothing, meta = meta, object = object,
                                         provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectAccessControlsPatch "Please use MkStorageObjectAccessControlsPatch instead" #-}
#endif

-- | Create 'StorageObjectAccessControlsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectAccessControlsPatch ::
                                   Core.Text -> Core.Text -> ObjectAccessControl -> Core.Text -> StorageObjectAccessControlsPatch
mkStorageObjectAccessControlsPatch bucket entity meta object
  = StorageObjectAccessControlsPatch{bucket = bucket, entity = entity, generation = Core.Nothing, meta = meta, object = object,
                                     provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectAccessControlsPatch where
        type Core.Scopes StorageObjectAccessControlsPatch = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageObjectAccessControlsPatch = StorageService
        type Core.Response StorageObjectAccessControlsPatch = ObjectAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectAccessControlsPatch{..}
          = serviceRequest{Core.method = "PATCH",
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
