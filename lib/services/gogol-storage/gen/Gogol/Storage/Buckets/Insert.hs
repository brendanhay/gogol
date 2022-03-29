-- |
-- Module      : Gogol.Storage.Buckets.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.insert@.
module Gogol.Storage.Buckets.Insert
    (
    -- * Constructing a Request
    StorageBucketsInsert (..),
#ifdef NOFIELDSELECTORS
    MkStorageBucketsInsert (..),
#endif
    mkStorageBucketsInsert,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Creates a new bucket.
--
-- Construct a default value using the 'MkStorageBucketsInsert' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageBucketsInsert = StorageBucketsInsert
    {
      -- | Multipart request metadata.
      meta :: Bucket
      -- | 
    , predefinedAcl :: Core.Maybe PredefinedAcl
      -- | 
    , predefinedDefaultObjectAcl :: Core.Maybe PredefinedDefaultObjectAcl
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
-- | Create 'StorageBucketsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageBucketsInsert :: Bucket -> Core.Text -> StorageBucketsInsert
pattern MkStorageBucketsInsert{meta, project} =
        StorageBucketsInsert{meta = meta, predefinedAcl = Core.Nothing, predefinedDefaultObjectAcl = Core.Nothing, project = project,
                             projection = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageBucketsInsert "Please use MkStorageBucketsInsert instead" #-}
#endif

-- | Create 'StorageBucketsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageBucketsInsert :: Bucket -> Core.Text -> StorageBucketsInsert
mkStorageBucketsInsert meta project
  = StorageBucketsInsert{meta = meta, predefinedAcl = Core.Nothing, predefinedDefaultObjectAcl = Core.Nothing, project = project,
                         projection = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageBucketsInsert where
        type Core.Scopes StorageBucketsInsert = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageBucketsInsert = StorageService
        type Core.Response StorageBucketsInsert = Bucket
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageBucketsInsert{..}
          = serviceRequest{Core.method = "POST", Core.path = Core.toRequestPath ["/storage/v1/b"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  ("predefinedAcl",) Core.. Core.toQueryParam Core.<$> predefinedAcl,
                                  ("predefinedDefaultObjectAcl",) Core.. Core.toQueryParam Core.<$> predefinedDefaultObjectAcl,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  ("project",) Core.. Core.toQueryParam Core.<$> project, Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
