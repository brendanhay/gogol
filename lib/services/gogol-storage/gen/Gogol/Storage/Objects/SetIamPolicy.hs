-- |
-- Module      : Gogol.Storage.Objects.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.setIamPolicy@.
module Gogol.Storage.Objects.SetIamPolicy
    (
    -- * Constructing a Request
    StorageObjectsSetIamPolicy (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsSetIamPolicy (..),
#endif
    mkStorageObjectsSetIamPolicy,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Updates an IAM policy for the specified object.
--
-- Construct a default value using the 'MkStorageObjectsSetIamPolicy' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsSetIamPolicy = StorageObjectsSetIamPolicy
    {
      -- | Name of the bucket in which the object resides.
      bucket :: Core.Text
      -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    , generation :: Core.Maybe Core.Int64
      -- | Multipart request metadata.
    , meta :: Policy
      -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , object :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectsSetIamPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsSetIamPolicy :: Core.Text -> Policy -> Core.Text -> StorageObjectsSetIamPolicy
pattern MkStorageObjectsSetIamPolicy{bucket, meta, object} =
        StorageObjectsSetIamPolicy{bucket = bucket, generation = Core.Nothing, meta = meta, object = object,
                                   provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsSetIamPolicy "Please use MkStorageObjectsSetIamPolicy instead" #-}
#endif

-- | Create 'StorageObjectsSetIamPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsSetIamPolicy :: Core.Text -> Policy -> Core.Text -> StorageObjectsSetIamPolicy
mkStorageObjectsSetIamPolicy bucket meta object
  = StorageObjectsSetIamPolicy{bucket = bucket, generation = Core.Nothing, meta = meta, object = object,
                               provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsSetIamPolicy where
        type Core.Scopes StorageObjectsSetIamPolicy = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageObjectsSetIamPolicy = StorageService
        type Core.Response StorageObjectsSetIamPolicy = Policy
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsSetIamPolicy{..}
          = serviceRequest{Core.method = "PUT",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/o/", Core.toPathBuilder object, "/iam"],
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
