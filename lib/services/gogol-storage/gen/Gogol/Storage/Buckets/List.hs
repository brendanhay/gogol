-- |
-- Module      : Gogol.Storage.Buckets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.list@.
module Gogol.Storage.Buckets.List
    (
    -- * Constructing a Request
    StorageBucketsList (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsList (..),
#endif
    mkStorageBucketsList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Retrieves a list of buckets for a given project.
--
-- Construct a default value using the 'MkStorageBucketsList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsList = StorageBucketsList
    {
      -- | Maximum number of buckets to return in a single response. The service will use this parameter or 1,000 items, whichever is smaller.
      maxResults :: Core.Word32
      -- | A previously-returned page token representing part of the larger set of results to view.
    , pageToken :: Core.Maybe Core.Text
      -- | Filter results to buckets whose names begin with this prefix.
    , prefix :: Core.Maybe Core.Text
      -- | A valid API project identifier.
    , project :: Core.Text
      -- | 
    , projection :: Core.Maybe Projection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageBucketsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsList :: Core.Text -> StorageBucketsList
pattern MkStorageBucketsList{project} =
        StorageBucketsList{maxResults = 1000, pageToken = Core.Nothing, prefix = Core.Nothing, project = project,
                           projection = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsList "Please use MkStorageBucketsList instead" #-}
#endif

-- | Create 'StorageBucketsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsList :: Core.Text -> StorageBucketsList
mkStorageBucketsList project
  = StorageBucketsList{maxResults = 1000, pageToken = Core.Nothing, prefix = Core.Nothing, project = project,
                       projection = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsList where
        type Core.Scopes StorageBucketsList =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageBucketsList = StorageService
        type Core.Response StorageBucketsList = Buckets
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsList{..}
          = serviceRequest{Core.method = "GET", Core.path = Core.toRequestPath ["/storage/v1/b"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  Core.Just ("maxResults", Core.toQueryParam maxResults), ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  ("pageToken",) Core.. Core.toQueryParam Core.<$> pageToken, ("prefix",) Core.. Core.toQueryParam Core.<$> prefix,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  ("project",) Core.. Core.toQueryParam Core.<$> project, Core.Just ("alt", "json")]}
