-- |
-- Module      : Gogol.Storage.BucketAccessControls.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.insert@.
module Gogol.Storage.BucketAccessControls.Insert
    (
    -- * Constructing a Request
    StorageBucketAccessControlsInsert (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketAccessControlsInsert (..),
#endif
    mkStorageBucketAccessControlsInsert,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Creates a new ACL entry on the specified bucket.
--
-- Construct a default value using the 'MkStorageBucketAccessControlsInsert' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketAccessControlsInsert = StorageBucketAccessControlsInsert
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Multipart request metadata.
    , meta :: BucketAccessControl
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketAccessControlsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketAccessControlsInsert :: Core.Text -> BucketAccessControl -> StorageBucketAccessControlsInsert
pattern MkStorageBucketAccessControlsInsert{bucket, meta} =
        StorageBucketAccessControlsInsert{bucket = bucket, meta = meta, provisionalUserProject = Core.Nothing,
                                          userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketAccessControlsInsert "Please use MkStorageBucketAccessControlsInsert instead" #-}
#endif

-- | Create 'StorageBucketAccessControlsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketAccessControlsInsert :: Core.Text -> BucketAccessControl -> StorageBucketAccessControlsInsert
mkStorageBucketAccessControlsInsert bucket meta
  = StorageBucketAccessControlsInsert{bucket = bucket, meta = meta, provisionalUserProject = Core.Nothing,
                                      userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketAccessControlsInsert where
        type Core.Scopes StorageBucketAccessControlsInsert = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageBucketAccessControlsInsert = StorageService
        type Core.Response StorageBucketAccessControlsInsert = BucketAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketAccessControlsInsert{..}
          = serviceRequest{Core.method = "POST", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/acl"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
