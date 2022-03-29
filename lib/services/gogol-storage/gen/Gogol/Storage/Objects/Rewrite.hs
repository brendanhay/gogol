-- |
-- Module      : Gogol.Storage.Objects.Rewrite
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.rewrite@.
module Gogol.Storage.Objects.Rewrite
    (
    -- * Constructing a Request
    StorageObjectsRewrite (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsRewrite (..),
#endif
    mkStorageObjectsRewrite,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Rewrites a source object to a destination object. Optionally overrides metadata.
--
-- Construct a default value using the 'MkStorageObjectsRewrite' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsRewrite = StorageObjectsRewrite
    {
      -- | Name of the bucket in which to store the new object. Overrides the provided object metadata\'s bucket value, if any.
      destinationBucket :: Core.Text
      -- | Resource name of the Cloud KMS key, of the form projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key, that will be used to encrypt the object. Overrides the object metadata\'s kms/key/name value, if any.
    , destinationKmsKeyName :: Core.Maybe Core.Text
      -- | Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata\'s name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , destinationObject :: Core.Text
      -- | 
    , destinationPredefinedAcl :: Core.Maybe DestinationPredefinedAcl
      -- | Makes the operation conditional on whether the object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    , ifGenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
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
      -- | The maximum number of bytes that will be rewritten per rewrite request. Most callers shouldn\'t need to specify this parameter - it is primarily in place to support testing. If specified the value must be an integral multiple of 1 MiB (1048576). Also, this only applies to requests where the source and destination span locations and\/or storage classes. Finally, this value must not change across rewrite calls else you\'ll get an error that the rewriteToken is invalid.
    , maxBytesRewrittenPerCall :: Core.Maybe Core.Int64
      -- | Multipart request metadata.
    , meta :: Object
      -- | 
    , projection :: Core.Maybe RewriteProjection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | Include this field (from the previous rewrite response) on each rewrite request after the first one, until the rewrite response \'done\' flag is true. Calls that provide a rewriteToken can omit all other request fields, but if included those fields must match the values provided in the first rewrite request.
    , rewriteToken :: Core.Maybe Core.Text
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
-- | Create 'StorageObjectsRewrite' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsRewrite :: Core.Text -> Core.Text -> Object -> Core.Text -> Core.Text -> StorageObjectsRewrite
pattern MkStorageObjectsRewrite{destinationBucket, destinationObject, meta, sourceBucket, sourceObject} =
        StorageObjectsRewrite{destinationBucket = destinationBucket, destinationKmsKeyName = Core.Nothing,
                              destinationObject = destinationObject, destinationPredefinedAcl = Core.Nothing, ifGenerationMatch = Core.Nothing,
                              ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                              ifSourceGenerationMatch = Core.Nothing, ifSourceGenerationNotMatch = Core.Nothing, ifSourceMetagenerationMatch = Core.Nothing,
                              ifSourceMetagenerationNotMatch = Core.Nothing, maxBytesRewrittenPerCall = Core.Nothing, meta = meta, projection = Core.Nothing,
                              provisionalUserProject = Core.Nothing, rewriteToken = Core.Nothing, sourceBucket = sourceBucket,
                              sourceGeneration = Core.Nothing, sourceObject = sourceObject, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsRewrite "Please use MkStorageObjectsRewrite instead" #-}
#endif

-- | Create 'StorageObjectsRewrite' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsRewrite :: Core.Text -> Core.Text -> Object -> Core.Text -> Core.Text -> StorageObjectsRewrite
mkStorageObjectsRewrite destinationBucket destinationObject meta sourceBucket sourceObject
  = StorageObjectsRewrite{destinationBucket = destinationBucket, destinationKmsKeyName = Core.Nothing,
                          destinationObject = destinationObject, destinationPredefinedAcl = Core.Nothing, ifGenerationMatch = Core.Nothing,
                          ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                          ifSourceGenerationMatch = Core.Nothing, ifSourceGenerationNotMatch = Core.Nothing, ifSourceMetagenerationMatch = Core.Nothing,
                          ifSourceMetagenerationNotMatch = Core.Nothing, maxBytesRewrittenPerCall = Core.Nothing, meta = meta, projection = Core.Nothing,
                          provisionalUserProject = Core.Nothing, rewriteToken = Core.Nothing, sourceBucket = sourceBucket,
                          sourceGeneration = Core.Nothing, sourceObject = sourceObject, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsRewrite where
        type Core.Scopes StorageObjectsRewrite = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageObjectsRewrite = StorageService
        type Core.Response StorageObjectsRewrite = RewriteResponse
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsRewrite{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/storage/v1/b/", Core.toPathBuilder sourceBucket, "/o/", Core.toPathBuilder sourceObject, "/rewriteTo/b/",
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
                                  ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("maxBytesRewrittenPerCall",) Core.. Core.toQueryParam Core.<$> maxBytesRewrittenPerCall,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("rewriteToken",) Core.. Core.toQueryParam Core.<$> rewriteToken,
                                  ("sourceGeneration",) Core.. Core.toQueryParam Core.<$> sourceGeneration,
                                  ("userProject",) Core.. Core.toQueryParam Core.<$> userProject, Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
