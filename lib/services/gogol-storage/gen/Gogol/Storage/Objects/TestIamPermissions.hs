-- |
-- Module      : Gogol.Storage.Objects.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.testIamPermissions@.
module Gogol.Storage.Objects.TestIamPermissions
    (
    -- * Constructing a Request
    StorageObjectsTestIamPermissions (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsTestIamPermissions (..),
#endif
    mkStorageObjectsTestIamPermissions,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Tests a set of permissions on the given object to see which, if any, are held by the caller.
--
-- Construct a default value using the 'MkStorageObjectsTestIamPermissions' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsTestIamPermissions = StorageObjectsTestIamPermissions
    {
      -- | Name of the bucket in which the object resides.
      bucket :: Core.Text
      -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    , generation :: Core.Maybe Core.Int64
      -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , object :: Core.Text
      -- | Permissions to test.
    , permissions :: [Core.Text]
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectsTestIamPermissions' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsTestIamPermissions :: Core.Text -> Core.Text -> [Core.Text] -> StorageObjectsTestIamPermissions
pattern MkStorageObjectsTestIamPermissions{bucket, object, permissions} =
        StorageObjectsTestIamPermissions{bucket = bucket, generation = Core.Nothing, object = object, permissions = permissions,
                                         provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsTestIamPermissions "Please use MkStorageObjectsTestIamPermissions instead" #-}
#endif

-- | Create 'StorageObjectsTestIamPermissions' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsTestIamPermissions :: Core.Text -> Core.Text -> [Core.Text] -> StorageObjectsTestIamPermissions
mkStorageObjectsTestIamPermissions bucket object permissions
  = StorageObjectsTestIamPermissions{bucket = bucket, generation = Core.Nothing, object = object, permissions = permissions,
                                     provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsTestIamPermissions where
        type Core.Scopes StorageObjectsTestIamPermissions =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageObjectsTestIamPermissions = StorageService
        type Core.Response StorageObjectsTestIamPermissions = TestIamPermissionsResponse
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsTestIamPermissions{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/o/", Core.toPathBuilder object, "/iam/testPermissions"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("generation",) Core.. Core.toQueryParam Core.<$> generation,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  ("permissions",) Core.. Core.toQueryParams Core.<$> permissions, Core.Just ("alt", "json")]}
