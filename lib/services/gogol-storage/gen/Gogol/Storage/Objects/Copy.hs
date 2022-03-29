-- |
-- Module      : Gogol.Storage.Objects.Copy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.copy@.
module Gogol.Storage.Objects.Copy
    (
    -- * Constructing a Request
    StorageObjectsCopy (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsCopy (..),
#endif
    mkStorageObjectsCopy,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Copies a source object to a destination object. Optionally overrides metadata.
--
-- Construct a default value using the 'MkStorageObjectsCopy' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsCopy = StorageObjectsCopy
    {
      -- | Name of the bucket in which to store the new object. Overrides the provided object metadata\'s bucket value, if any.For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
      destinationBucket :: Core.Text
      -- | Resource name of the Cloud KMS key, of the form projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key, that will be used to encrypt the object. Overrides the object metadata\'s kms/key/name value, if any.
    , destinationKmsKeyName :: Core.Maybe Core.Text
      -- | Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata\'s name value, if any.
    , destinationObject :: Core.Text
      -- | 
    , destinationPredefinedAcl :: Core.Maybe DestinationPredefinedAcl
      -- | Makes the operation conditional on whether the destination object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    , ifGenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the destination object\'s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
    , ifGenerationNotMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the destination object\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the destination object\'s current metageneration does not match the given value.
    , ifMetagenerationNotMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the source object\'s current generation matches the given value.
    , ifSourceGenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the source object\'s current generation does not match the given value.
    , ifSourceGenerationNotMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the source object\'s current metageneration matches the given value.
    , ifSourceMetagenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the source object\'s current metageneration does not match the given value.
    , ifSourceMetagenerationNotMatch :: Core.Maybe Core.Int64
      -- | Multipart request metadata.
    , meta :: Object
      -- | 
    , projection :: Core.Maybe CopyProjection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | Name of the bucket in which to find the source object.
    , sourceBucket :: Core.Text
      -- | If present, selects a specific revision of the source object (as opposed to the latest version, the default).
    , sourceGeneration :: Core.Maybe Core.Int64
      -- | Name of the source object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , sourceObject :: Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectsCopy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsCopy :: Core.Text -> Core.Text -> Object -> Core.Text -> Core.Text -> StorageObjectsCopy
pattern MkStorageObjectsCopy{destinationBucket, destinationObject, meta, sourceBucket, sourceObject} =
        StorageObjectsCopy{destinationBucket = destinationBucket, destinationKmsKeyName = Core.Nothing,
                           destinationObject = destinationObject, destinationPredefinedAcl = Core.Nothing, ifGenerationMatch = Core.Nothing,
                           ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                           ifSourceGenerationMatch = Core.Nothing, ifSourceGenerationNotMatch = Core.Nothing, ifSourceMetagenerationMatch = Core.Nothing,
                           ifSourceMetagenerationNotMatch = Core.Nothing, meta = meta, projection = Core.Nothing, provisionalUserProject = Core.Nothing,
                           sourceBucket = sourceBucket, sourceGeneration = Core.Nothing, sourceObject = sourceObject, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsCopy "Please use MkStorageObjectsCopy instead" #-}
#endif

-- | Create 'StorageObjectsCopy' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsCopy :: Core.Text -> Core.Text -> Object -> Core.Text -> Core.Text -> StorageObjectsCopy
mkStorageObjectsCopy destinationBucket destinationObject meta sourceBucket sourceObject
  = StorageObjectsCopy{destinationBucket = destinationBucket, destinationKmsKeyName = Core.Nothing,
                       destinationObject = destinationObject, destinationPredefinedAcl = Core.Nothing, ifGenerationMatch = Core.Nothing,
                       ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                       ifSourceGenerationMatch = Core.Nothing, ifSourceGenerationNotMatch = Core.Nothing, ifSourceMetagenerationMatch = Core.Nothing,
                       ifSourceMetagenerationNotMatch = Core.Nothing, meta = meta, projection = Core.Nothing, provisionalUserProject = Core.Nothing,
                       sourceBucket = sourceBucket, sourceGeneration = Core.Nothing, sourceObject = sourceObject, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsCopy where
        type Core.Scopes StorageObjectsCopy = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageObjectsCopy = StorageService
        type Core.Response StorageObjectsCopy = Object
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsCopy{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/storage/v1/b/", Core.toPathBuilder sourceBucket, "/o/", Core.toPathBuilder sourceObject, "/copyTo/b/",
                                Core.toPathBuilder destinationBucket, "/o/", Core.toPathBuilder destinationObject],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("destinationKmsKeyName",) Core.. Core.toQueryParam Core.<$> destinationKmsKeyName,
                                  ("destinationPredefinedAcl",) Core.. Core.toQueryParam Core.<$> destinationPredefinedAcl,
                                  ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("ifGenerationMatch",) Core.. Core.toQueryParam Core.<$> ifGenerationMatch,
                                  ("ifGenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifGenerationNotMatch,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch,
                                  ("ifMetagenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationNotMatch,
                                  ("ifSourceGenerationMatch",) Core.. Core.toQueryParam Core.<$> ifSourceGenerationMatch,
                                  ("ifSourceGenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifSourceGenerationNotMatch,
                                  ("ifSourceMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifSourceMetagenerationMatch,
                                  ("ifSourceMetagenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifSourceMetagenerationNotMatch,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  ("sourceGeneration",) Core.. Core.toQueryParam Core.<$> sourceGeneration,
                                  ("userProject",) Core.. Core.toQueryParam Core.<$> userProject, Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
