-- |
-- Module      : Gogol.Storage.DefaultObjectAccessControls.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.patch@.
module Gogol.Storage.DefaultObjectAccessControls.Patch
    (
    -- * Constructing a Request
    StorageDefaultObjectAccessControlsPatch (..),
#ifdef NOFIELDSELECTORS
    MkStorageDefaultObjectAccessControlsPatch (..),
#endif
    mkStorageDefaultObjectAccessControlsPatch,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Patches a default object ACL entry on the specified bucket.
--
-- Construct a default value using the 'MkStorageDefaultObjectAccessControlsPatch' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageDefaultObjectAccessControlsPatch = StorageDefaultObjectAccessControlsPatch
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
    , entity :: Core.Text
      -- | Multipart request metadata.
    , meta :: ObjectAccessControl
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageDefaultObjectAccessControlsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageDefaultObjectAccessControlsPatch ::
        Core.Text -> Core.Text -> ObjectAccessControl -> StorageDefaultObjectAccessControlsPatch
pattern MkStorageDefaultObjectAccessControlsPatch{bucket, entity, meta} =
        StorageDefaultObjectAccessControlsPatch{bucket = bucket, entity = entity, meta = meta, provisionalUserProject = Core.Nothing,
                                                userProject = Core.Nothing}

{-# DEPRECATED mkStorageDefaultObjectAccessControlsPatch "Please use MkStorageDefaultObjectAccessControlsPatch instead" #-}
#endif

-- | Create 'StorageDefaultObjectAccessControlsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageDefaultObjectAccessControlsPatch ::
                                          Core.Text -> Core.Text -> ObjectAccessControl -> StorageDefaultObjectAccessControlsPatch
mkStorageDefaultObjectAccessControlsPatch bucket entity meta
  = StorageDefaultObjectAccessControlsPatch{bucket = bucket, entity = entity, meta = meta, provisionalUserProject = Core.Nothing,
                                            userProject = Core.Nothing}
instance Core.GoogleRequest StorageDefaultObjectAccessControlsPatch where
        type Core.Scopes StorageDefaultObjectAccessControlsPatch = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageDefaultObjectAccessControlsPatch = StorageService
        type Core.Response StorageDefaultObjectAccessControlsPatch = ObjectAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageDefaultObjectAccessControlsPatch{..}
          = serviceRequest{Core.method = "PATCH",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/defaultObjectAcl/", Core.toPathBuilder entity],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
