-- |
-- Module      : Gogol.Storage.DefaultObjectAccessControls.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.get@.
module Gogol.Storage.DefaultObjectAccessControls.Get
    (
    -- * Constructing a Request
    StorageDefaultObjectAccessControlsGet (..),
#ifdef NOFIELDSELECTORS
    MkStorageDefaultObjectAccessControlsGet (..),
#endif
    mkStorageDefaultObjectAccessControlsGet,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Returns the default object ACL entry for the specified entity on the specified bucket.
--
-- Construct a default value using the 'MkStorageDefaultObjectAccessControlsGet' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageDefaultObjectAccessControlsGet = StorageDefaultObjectAccessControlsGet
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
-- | Create 'StorageDefaultObjectAccessControlsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageDefaultObjectAccessControlsGet :: Core.Text -> Core.Text -> StorageDefaultObjectAccessControlsGet
pattern MkStorageDefaultObjectAccessControlsGet{bucket, entity} =
        StorageDefaultObjectAccessControlsGet{bucket = bucket, entity = entity, provisionalUserProject = Core.Nothing,
                                              userProject = Core.Nothing}

{-# DEPRECATED mkStorageDefaultObjectAccessControlsGet "Please use MkStorageDefaultObjectAccessControlsGet instead" #-}
#endif

-- | Create 'StorageDefaultObjectAccessControlsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageDefaultObjectAccessControlsGet :: Core.Text -> Core.Text -> StorageDefaultObjectAccessControlsGet
mkStorageDefaultObjectAccessControlsGet bucket entity
  = StorageDefaultObjectAccessControlsGet{bucket = bucket, entity = entity, provisionalUserProject = Core.Nothing,
                                          userProject = Core.Nothing}
instance Core.GoogleRequest StorageDefaultObjectAccessControlsGet where
        type Core.Scopes StorageDefaultObjectAccessControlsGet = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageDefaultObjectAccessControlsGet = StorageService
        type Core.Response StorageDefaultObjectAccessControlsGet = ObjectAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageDefaultObjectAccessControlsGet{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/defaultObjectAcl/", Core.toPathBuilder entity],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
