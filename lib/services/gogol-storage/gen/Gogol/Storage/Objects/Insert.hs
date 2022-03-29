-- |
-- Module      : Gogol.Storage.Objects.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.insert@.
module Gogol.Storage.Objects.Insert
    (
    -- * Constructing a Request
    StorageObjectsInsert (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsInsert (..),
#endif
    mkStorageObjectsInsert,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Stores a new object and metadata.
--
-- Construct a default value using the 'MkStorageObjectsInsert' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsInsert = StorageObjectsInsert
    {
      -- | Name of the bucket in which to store the new object. Overrides the provided object metadata\'s bucket value, if any.
      bucket :: Core.Text
      -- | If set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded.
    , contentEncoding :: Core.Maybe Core.Text
      -- | Makes the operation conditional on whether the object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    , ifGenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
    , ifGenerationNotMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current metageneration does not match the given value.
    , ifMetagenerationNotMatch :: Core.Maybe Core.Int64
      -- | Resource name of the Cloud KMS key, of the form projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key, that will be used to encrypt the object. Overrides the object metadata\'s kms/key/name value, if any.
    , kmsKeyName :: Core.Maybe Core.Text
      -- | Multipart request metadata.
    , meta :: Object
      -- | Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata\'s name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , name :: Core.Maybe Core.Text
      -- | 
    , predefinedAcl :: Core.Maybe InsertPredefinedAcl
      -- | 
    , projection :: Core.Maybe InsertProjection
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsInsert :: Core.Text -> Object -> StorageObjectsInsert
pattern MkStorageObjectsInsert{bucket, meta} =
        StorageObjectsInsert{bucket = bucket, contentEncoding = Core.Nothing, ifGenerationMatch = Core.Nothing,
                             ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                             kmsKeyName = Core.Nothing, meta = meta, name = Core.Nothing, predefinedAcl = Core.Nothing, projection = Core.Nothing,
                             provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsInsert "Please use MkStorageObjectsInsert instead" #-}
#endif

-- | Create 'StorageObjectsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsInsert :: Core.Text -> Object -> StorageObjectsInsert
mkStorageObjectsInsert bucket meta
  = StorageObjectsInsert{bucket = bucket, contentEncoding = Core.Nothing, ifGenerationMatch = Core.Nothing,
                         ifGenerationNotMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing, ifMetagenerationNotMatch = Core.Nothing,
                         kmsKeyName = Core.Nothing, meta = meta, name = Core.Nothing, predefinedAcl = Core.Nothing, projection = Core.Nothing,
                         provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsInsert where
        type Core.Scopes StorageObjectsInsert = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageObjectsInsert = StorageService
        type Core.Response StorageObjectsInsert = Object
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsInsert{..}
          = serviceRequest{Core.method = "POST", Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/o"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("contentEncoding",) Core.. Core.toQueryParam Core.<$> contentEncoding, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("ifGenerationMatch",) Core.. Core.toQueryParam Core.<$> ifGenerationMatch,
                                  ("ifGenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifGenerationNotMatch,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch,
                                  ("ifMetagenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationNotMatch,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("kmsKeyName",) Core.. Core.toQueryParam Core.<$> kmsKeyName,
                                  ("name",) Core.. Core.toQueryParam Core.<$> name, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  ("predefinedAcl",) Core.. Core.toQueryParam Core.<$> predefinedAcl, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("projection",) Core.. Core.toQueryParam Core.<$> projection,
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
instance Core.GoogleMultipartRequest media StorageObjectsInsert
instance Core.GoogleResumableRequest media StorageObjectsInsert
