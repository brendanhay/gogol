-- |
-- Module      : Gogol.Storage.Objects.Compose
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.compose@.
module Gogol.Storage.Objects.Compose
    (
    -- * Constructing a Request
    StorageObjectsCompose (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectsCompose (..),
#endif
    mkStorageObjectsCompose,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Concatenates a list of existing objects into a new object in the same bucket.
--
-- Construct a default value using the 'MkStorageObjectsCompose' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectsCompose = StorageObjectsCompose
    {
      -- | Name of the bucket containing the source objects. The destination object is stored in this bucket.
      destinationBucket :: Core.Text
      -- | Name of the new object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , destinationObject :: Core.Text
      -- | 
    , destinationPredefinedAcl :: Core.Maybe DestinationPredefinedAcl
      -- | Makes the operation conditional on whether the object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    , ifGenerationMatch :: Core.Maybe Core.Int64
      -- | Makes the operation conditional on whether the object\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: Core.Maybe Core.Int64
      -- | Resource name of the Cloud KMS key, of the form projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key, that will be used to encrypt the object. Overrides the object metadata\'s kms/key/name value, if any.
    , kmsKeyName :: Core.Maybe Core.Text
      -- | Multipart request metadata.
    , meta :: ComposeRequest
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectsCompose' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectsCompose :: Core.Text -> Core.Text -> ComposeRequest -> StorageObjectsCompose
pattern MkStorageObjectsCompose{destinationBucket, destinationObject, meta} =
        StorageObjectsCompose{destinationBucket = destinationBucket, destinationObject = destinationObject,
                              destinationPredefinedAcl = Core.Nothing, ifGenerationMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing,
                              kmsKeyName = Core.Nothing, meta = meta, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectsCompose "Please use MkStorageObjectsCompose instead" #-}
#endif

-- | Create 'StorageObjectsCompose' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectsCompose :: Core.Text -> Core.Text -> ComposeRequest -> StorageObjectsCompose
mkStorageObjectsCompose destinationBucket destinationObject meta
  = StorageObjectsCompose{destinationBucket = destinationBucket, destinationObject = destinationObject,
                          destinationPredefinedAcl = Core.Nothing, ifGenerationMatch = Core.Nothing, ifMetagenerationMatch = Core.Nothing,
                          kmsKeyName = Core.Nothing, meta = meta, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectsCompose where
        type Core.Scopes StorageObjectsCompose = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageObjectsCompose = StorageService
        type Core.Response StorageObjectsCompose = Object
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectsCompose{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/storage/v1/b/", Core.toPathBuilder destinationBucket, "/o/", Core.toPathBuilder destinationObject, "/compose"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("destinationPredefinedAcl",) Core.. Core.toQueryParam Core.<$> destinationPredefinedAcl,
                                  ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("ifGenerationMatch",) Core.. Core.toQueryParam Core.<$> ifGenerationMatch,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("kmsKeyName",) Core.. Core.toQueryParam Core.<$> kmsKeyName,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
