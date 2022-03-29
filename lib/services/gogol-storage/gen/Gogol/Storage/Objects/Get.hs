-- |
-- Module      : Gogol.Storage.Objects.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.get@.
module Gogol.Storage.Objects.Get
    (
    -- * Constructing a Request
    StorageObjectsGet (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsGet (..),
#endif
    mkStorageObjectsGet,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Retrieves an object or its metadata.
--
-- Construct a default value using the 'MkStorageObjectsGet' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsGet = StorageObjectsGet
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
      -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , object :: Core.Text
      -- | 
    , projection :: Core.Maybe GetProjection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsGet :: Core.Text -> Core.Text -> StorageObjectsGet
pattern MkStorageObjectsGet{bucket, object} =
        StorageObjectsGet{bucket = bucket, generation = Core.Nothing, ifGenerationMatch = Core.Nothing,
                          ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                          object = object, projection = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsGet "Please use MkStorageObjectsGet instead" #-}
#endif

-- | Create 'StorageObjectsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsGet :: Core.Text -> Core.Text -> StorageObjectsGet
mkStorageObjectsGet bucket object
  = StorageObjectsGet{bucket = bucket, generation = Core.Nothing, ifGenerationMatch = Core.Nothing,
                      ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                      object = object, projection = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsGet where
        type Core.Scopes StorageObjectsGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageObjectsGet = StorageService
        type Core.Response StorageObjectsGet = Object
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsGet{..}
          = serviceRequest{Core.method = "GET",
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
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
instance Core.GoogleMediaRequest StorageObjectsGet
