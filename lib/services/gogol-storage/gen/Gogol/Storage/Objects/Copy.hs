{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Objects.Copy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a source object to a destination object. Optionally overrides metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.copy@.
module Gogol.Storage.Objects.Copy
    (
    -- * Resource
      StorageObjectsCopyResource

    -- ** Constructing a Request
    , StorageObjectsCopy (..)
    , newStorageObjectsCopy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.copy@ method which the
-- 'StorageObjectsCopy' request conforms to.
type StorageObjectsCopyResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "sourceBucket" Core.Text Core.:>
             "o" Core.:>
               Core.Capture "sourceObject" Core.Text Core.:>
                 "copyTo" Core.:>
                   "b" Core.:>
                     Core.Capture "destinationBucket" Core.Text Core.:>
                       "o" Core.:>
                         Core.Capture "destinationObject" Core.Text Core.:>
                           Core.QueryParam "destinationKmsKeyName" Core.Text
                             Core.:>
                             Core.QueryParam "destinationPredefinedAcl"
                               ObjectsCopyDestinationPredefinedAcl
                               Core.:>
                               Core.QueryParam "ifGenerationMatch" Core.Int64
                                 Core.:>
                                 Core.QueryParam "ifGenerationNotMatch"
                                   Core.Int64
                                   Core.:>
                                   Core.QueryParam "ifMetagenerationMatch"
                                     Core.Int64
                                     Core.:>
                                     Core.QueryParam "ifMetagenerationNotMatch"
                                       Core.Int64
                                       Core.:>
                                       Core.QueryParam "ifSourceGenerationMatch"
                                         Core.Int64
                                         Core.:>
                                         Core.QueryParam
                                           "ifSourceGenerationNotMatch"
                                           Core.Int64
                                           Core.:>
                                           Core.QueryParam
                                             "ifSourceMetagenerationMatch"
                                             Core.Int64
                                             Core.:>
                                             Core.QueryParam
                                               "ifSourceMetagenerationNotMatch"
                                               Core.Int64
                                               Core.:>
                                               Core.QueryParam "projection"
                                                 ObjectsCopyProjection
                                                 Core.:>
                                                 Core.QueryParam
                                                   "sourceGeneration"
                                                   Core.Int64
                                                   Core.:>
                                                   Core.QueryParam "uploadType"
                                                     Core.Text
                                                     Core.:>
                                                     Core.QueryParam
                                                       "userProject"
                                                       Core.Text
                                                       Core.:>
                                                       Core.QueryParam "alt"
                                                         Core.AltJSON
                                                         Core.:>
                                                         Core.ReqBody
                                                           '[Core.JSON]
                                                           Object
                                                           Core.:>
                                                           Core.Post
                                                             '[Core.JSON]
                                                             Object

-- | Copies a source object to a destination object. Optionally overrides metadata.
--
-- /See:/ 'newStorageObjectsCopy' smart constructor.
data StorageObjectsCopy = StorageObjectsCopy
    {
      -- | Name of the bucket in which to store the new object. Overrides the provided object metadata\'s bucket value, if any.For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>.
      destinationBucket :: Core.Text
      -- | Resource name of the Cloud KMS key, of the form projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key, that will be used to encrypt the object. Overrides the object metadata\'s kms/key/name value, if any.
    , destinationKmsKeyName :: (Core.Maybe Core.Text)
      -- | Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata\'s name value, if any.
    , destinationObject :: Core.Text
      -- | Apply a predefined set of access controls to the destination object.
    , destinationPredefinedAcl :: (Core.Maybe ObjectsCopyDestinationPredefinedAcl)
      -- | Makes the operation conditional on whether the destination object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    , ifGenerationMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether the destination object\'s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
    , ifGenerationNotMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether the destination object\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether the destination object\'s current metageneration does not match the given value.
    , ifMetagenerationNotMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether the source object\'s current generation matches the given value.
    , ifSourceGenerationMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether the source object\'s current generation does not match the given value.
    , ifSourceGenerationNotMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether the source object\'s current metageneration matches the given value.
    , ifSourceMetagenerationMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether the source object\'s current metageneration does not match the given value.
    , ifSourceMetagenerationNotMatch :: (Core.Maybe Core.Int64)
      -- | Multipart request metadata.
    , payload :: Object
      -- | Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
    , projection :: (Core.Maybe ObjectsCopyProjection)
      -- | Name of the bucket in which to find the source object.
    , sourceBucket :: Core.Text
      -- | If present, selects a specific revision of the source object (as opposed to the latest version, the default).
    , sourceGeneration :: (Core.Maybe Core.Int64)
      -- | Name of the source object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>.
    , sourceObject :: Core.Text
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsCopy' with the minimum fields required to make a request.
newStorageObjectsCopy 
    ::  Core.Text
       -- ^  Name of the bucket in which to store the new object. Overrides the provided object metadata\'s bucket value, if any.For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>. See 'destinationBucket'.
    -> Core.Text
       -- ^  Name of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata\'s name value, if any. See 'destinationObject'.
    -> Object
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Name of the bucket in which to find the source object. See 'sourceBucket'.
    -> Core.Text
       -- ^  Name of the source object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>. See 'sourceObject'.
    -> StorageObjectsCopy
newStorageObjectsCopy destinationBucket destinationObject payload sourceBucket sourceObject =
  StorageObjectsCopy
    { destinationBucket = destinationBucket
    , destinationKmsKeyName = Core.Nothing
    , destinationObject = destinationObject
    , destinationPredefinedAcl = Core.Nothing
    , ifGenerationMatch = Core.Nothing
    , ifGenerationNotMatch = Core.Nothing
    , ifMetagenerationMatch = Core.Nothing
    , ifMetagenerationNotMatch = Core.Nothing
    , ifSourceGenerationMatch = Core.Nothing
    , ifSourceGenerationNotMatch = Core.Nothing
    , ifSourceMetagenerationMatch = Core.Nothing
    , ifSourceMetagenerationNotMatch = Core.Nothing
    , payload = payload
    , projection = Core.Nothing
    , sourceBucket = sourceBucket
    , sourceGeneration = Core.Nothing
    , sourceObject = sourceObject
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsCopy where
        type Rs StorageObjectsCopy = Object
        type Scopes StorageObjectsCopy =
             '[CloudPlatform'FullControl, Devstorage'FullControl,
               Devstorage'ReadWrite]
        requestClient StorageObjectsCopy{..}
          = go sourceBucket sourceObject destinationBucket
              destinationObject
              destinationKmsKeyName
              destinationPredefinedAcl
              ifGenerationMatch
              ifGenerationNotMatch
              ifMetagenerationMatch
              ifMetagenerationNotMatch
              ifSourceGenerationMatch
              ifSourceGenerationNotMatch
              ifSourceMetagenerationMatch
              ifSourceMetagenerationNotMatch
              projection
              sourceGeneration
              uploadType
              userProject
              (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy StorageObjectsCopyResource)
                      Core.mempty

