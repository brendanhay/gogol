-- |
-- Module      : Gogol.Storage.Buckets.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.testIamPermissions@.
module Gogol.Storage.Buckets.TestIamPermissions
    (
    -- * Constructing a Request
    StorageBucketsTestIamPermissions (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsTestIamPermissions (..),
#endif
    mkStorageBucketsTestIamPermissions,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Tests a set of permissions on the given bucket to see which, if any, are held by the caller.
--
-- Construct a default value using the 'MkStorageBucketsTestIamPermissions' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsTestIamPermissions = StorageBucketsTestIamPermissions
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Permissions to test.
    , permissions :: [Core.Text]
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketsTestIamPermissions' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsTestIamPermissions :: Core.Text -> [Core.Text] -> StorageBucketsTestIamPermissions
pattern MkStorageBucketsTestIamPermissions{bucket, permissions} =
        StorageBucketsTestIamPermissions{bucket = bucket, permissions = permissions, provisionalUserProject = Core.Nothing,
                                         userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsTestIamPermissions "Please use MkStorageBucketsTestIamPermissions instead" #-}
#endif

-- | Create 'StorageBucketsTestIamPermissions' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsTestIamPermissions :: Core.Text -> [Core.Text] -> StorageBucketsTestIamPermissions
mkStorageBucketsTestIamPermissions bucket permissions
  = StorageBucketsTestIamPermissions{bucket = bucket, permissions = permissions, provisionalUserProject = Core.Nothing,
                                     userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsTestIamPermissions where
        type Core.Scopes StorageBucketsTestIamPermissions =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageBucketsTestIamPermissions = StorageService
        type Core.Response StorageBucketsTestIamPermissions = TestIamPermissionsResponse
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsTestIamPermissions{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/iam/testPermissions"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  ("permissions",) Core.. Core.toQueryParams Core.<$> permissions, Core.Just ("alt", "json")]}
