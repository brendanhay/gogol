-- |
-- Module      : Gogol.Storage.Buckets.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.getIamPolicy@.
module Gogol.Storage.Buckets.GetIamPolicy
    (
    -- * Constructing a Request
    StorageBucketsGetIamPolicy (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsGetIamPolicy (..),
#endif
    mkStorageBucketsGetIamPolicy,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Returns an IAM policy for the specified bucket.
--
-- Construct a default value using the 'MkStorageBucketsGetIamPolicy' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsGetIamPolicy = StorageBucketsGetIamPolicy
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | The IAM policy format version to be returned. If the optionsRequestedPolicyVersion is for an older version that doesn\'t support part of the requested IAM policy, the request fails.
    , optionsRequestedPolicyVersion :: Core.Maybe Core.Int32
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketsGetIamPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsGetIamPolicy :: Core.Text -> StorageBucketsGetIamPolicy
pattern MkStorageBucketsGetIamPolicy{bucket} =
        StorageBucketsGetIamPolicy{bucket = bucket, optionsRequestedPolicyVersion = Core.Nothing, provisionalUserProject = Core.Nothing,
                                   userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsGetIamPolicy "Please use MkStorageBucketsGetIamPolicy instead" #-}
#endif

-- | Create 'StorageBucketsGetIamPolicy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsGetIamPolicy :: Core.Text -> StorageBucketsGetIamPolicy
mkStorageBucketsGetIamPolicy bucket
  = StorageBucketsGetIamPolicy{bucket = bucket, optionsRequestedPolicyVersion = Core.Nothing,
                               provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsGetIamPolicy where
        type Core.Scopes StorageBucketsGetIamPolicy = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageBucketsGetIamPolicy = StorageService
        type Core.Response StorageBucketsGetIamPolicy = Policy
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsGetIamPolicy{..}
          = serviceRequest{Core.method = "GET", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/iam"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  ("optionsRequestedPolicyVersion",) Core.. Core.toQueryParam Core.<$> optionsRequestedPolicyVersion,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
