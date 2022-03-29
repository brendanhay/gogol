-- |
-- Module      : Gogol.Storage.Objects.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.getIamPolicy@.
module Gogol.Storage.Objects.GetIamPolicy
    (
    -- * Constructing a Request
    StorageObjectsGetIamPolicy (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsGetIamPolicy (..),
#endif
    mkStorageObjectsGetIamPolicy,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Returns an IAM policy for the specified object.
--
-- Construct a default value using the 'MkStorageObjectsGetIamPolicy' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsGetIamPolicy = StorageObjectsGetIamPolicy
    {
      -- | Name of the bucket in which the object resides.
      bucket :: Core.Text
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
-- | Create 'StorageObjectsGetIamPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsGetIamPolicy :: Core.Text -> Core.Text -> StorageObjectsGetIamPolicy
pattern MkStorageObjectsGetIamPolicy{bucket, object} =
        StorageObjectsGetIamPolicy{bucket = bucket, generation = Core.Nothing, object = object, provisionalUserProject = Core.Nothing,
                                   userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsGetIamPolicy "Please use MkStorageObjectsGetIamPolicy instead" #-}
#endif

-- | Create 'StorageObjectsGetIamPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsGetIamPolicy :: Core.Text -> Core.Text -> StorageObjectsGetIamPolicy
mkStorageObjectsGetIamPolicy bucket object
  = StorageObjectsGetIamPolicy{bucket = bucket, generation = Core.Nothing, object = object, provisionalUserProject = Core.Nothing,
                               userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsGetIamPolicy where
        type Core.Scopes StorageObjectsGetIamPolicy =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageObjectsGetIamPolicy = StorageService
        type Core.Response StorageObjectsGetIamPolicy = Policy
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsGetIamPolicy{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/o/", Core.toPathBuilder object, "/iam"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("generation",) Core.. Core.toQueryParam Core.<$> generation,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
