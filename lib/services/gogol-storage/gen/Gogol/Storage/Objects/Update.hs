-- |
-- Module      : Gogol.Storage.Objects.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.update@.
module Gogol.Storage.Objects.Update
    (
    -- * Constructing a Request
    StorageObjectsUpdate (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsUpdate (..),
#endif
    mkStorageObjectsUpdate,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Updates an object\'s metadata.
--
-- Construct a default value using the 'MkStorageObjectsUpdate' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsUpdate = StorageObjectsUpdate
    {
      -- | Name of the bucket in which the object resides.
      bucket :: Core.Text
      -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    , generation :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    , ifGenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
    , ifGenerationNotMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current metageneration does not match the given value.
    , ifMetagenerationNotMatch :: Core.Maybe Core.Int64
      -- | Multipart request metadata.
    , meta :: Object
      -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , object :: Core.Text
      -- | 
    , predefinedAcl :: Core.Maybe UpdatePredefinedAcl
      -- | 
    , projection :: Core.Maybe UpdateProjection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectsUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsUpdate :: Core.Text -> Object -> Core.Text -> StorageObjectsUpdate
pattern MkStorageObjectsUpdate{bucket, meta, object} =
        StorageObjectsUpdate{bucket = bucket, generation = Core.Nothing, ifGenerationMatch = Core.Nothing,
                             ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing, meta = meta,
                             object = object, predefinedAcl = Core.Nothing, projection = Core.Nothing, provisionalUserProject = Core.Nothing,
                             userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsUpdate "Please use MkStorageObjectsUpdate instead" #-}
#endif

-- | Create 'StorageObjectsUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsUpdate :: Core.Text -> Object -> Core.Text -> StorageObjectsUpdate
mkStorageObjectsUpdate bucket meta object
  = StorageObjectsUpdate{bucket = bucket, generation = Core.Nothing, ifGenerationMatch = Core.Nothing,
                         ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing, meta = meta,
                         object = object, predefinedAcl = Core.Nothing, projection = Core.Nothing, provisionalUserProject = Core.Nothing,
                         userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsUpdate where
        type Core.Scopes StorageObjectsUpdate = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageObjectsUpdate = StorageService
        type Core.Response StorageObjectsUpdate = Object
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsUpdate{..}
          = serviceRequest{Core.method = "PUT",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/o/", Core.toPathBuilder object],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("generation",) Core.. Core.toQueryParam Core.<$> generation,
                                  ("ifGenerationMatch",) Core.. Core.toQueryParam Core.<$> ifGenerationMatch,
                                  ("ifGenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifGenerationNotMatch,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch,
                                  ("ifMetagenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationNotMatch,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  ("predefinedAcl",) Core.. Core.toQueryParam Core.<$> predefinedAcl, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
