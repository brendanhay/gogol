-- |
-- Module      : Gogol.Storage.Buckets.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.setIamPolicy@.
module Gogol.Storage.Buckets.SetIamPolicy
    (
    -- * Constructing a Request
    StorageBucketsSetIamPolicy (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsSetIamPolicy (..),
#endif
    mkStorageBucketsSetIamPolicy,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Updates an IAM policy for the specified bucket.
--
-- Construct a default value using the 'MkStorageBucketsSetIamPolicy' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsSetIamPolicy = StorageBucketsSetIamPolicy
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Multipart request metadata.
    , meta :: Policy
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketsSetIamPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsSetIamPolicy :: Core.Text -> Policy -> StorageBucketsSetIamPolicy
pattern MkStorageBucketsSetIamPolicy{bucket, meta} =
        StorageBucketsSetIamPolicy{bucket = bucket, meta = meta, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsSetIamPolicy "Please use MkStorageBucketsSetIamPolicy instead" #-}
#endif

-- | Create 'StorageBucketsSetIamPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsSetIamPolicy :: Core.Text -> Policy -> StorageBucketsSetIamPolicy
mkStorageBucketsSetIamPolicy bucket meta
  = StorageBucketsSetIamPolicy{bucket = bucket, meta = meta, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsSetIamPolicy where
        type Core.Scopes StorageBucketsSetIamPolicy = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageBucketsSetIamPolicy = StorageService
        type Core.Response StorageBucketsSetIamPolicy = Policy
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsSetIamPolicy{..}
          = serviceRequest{Core.method = "PUT", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/iam"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
