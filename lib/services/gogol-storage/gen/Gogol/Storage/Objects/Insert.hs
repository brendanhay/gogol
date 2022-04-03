{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Objects.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores a new object and metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.insert@.
module Gogol.Storage.Objects.Insert
  ( -- * Resource
    StorageObjectsInsertResource,

    -- ** Constructing a Request
    StorageObjectsInsert (..),
    newStorageObjectsInsert,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.insert@ method which the
-- 'StorageObjectsInsert' request conforms to.
type StorageObjectsInsertResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.QueryParam "contentEncoding" Core.Text
    Core.:> Core.QueryParam "ifGenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifGenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "kmsKeyName" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam
              "predefinedAcl"
              ObjectsInsertPredefinedAcl
    Core.:> Core.QueryParam
              "projection"
              ObjectsInsertProjection
    Core.:> Core.QueryParam
              "provisionalUserProject"
              Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Object
    Core.:> Core.Post '[Core.JSON] Object
    Core.:<|> "upload"
      Core.:> "storage"
      Core.:> "v1"
      Core.:> "b"
      Core.:> Core.Capture "bucket" Core.Text
      Core.:> "o"
      Core.:> Core.QueryParam "contentEncoding" Core.Text
      Core.:> Core.QueryParam "ifGenerationMatch" Core.Int64
      Core.:> Core.QueryParam "ifGenerationNotMatch" Core.Int64
      Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
      Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
      Core.:> Core.QueryParam "kmsKeyName" Core.Text
      Core.:> Core.QueryParam "name" Core.Text
      Core.:> Core.QueryParam
                "predefinedAcl"
                ObjectsInsertPredefinedAcl
      Core.:> Core.QueryParam
                "projection"
                ObjectsInsertProjection
      Core.:> Core.QueryParam
                "provisionalUserProject"
                Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "userProject" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam
                "uploadType"
                Core.Multipart
      Core.:> Core.MultipartRelated
                '[Core.JSON]
                Object
      Core.:> Core.Post '[Core.JSON] Object

-- | Stores a new object and metadata.
--
-- /See:/ 'newStorageObjectsInsert' smart constructor.
data StorageObjectsInsert = StorageObjectsInsert
  { -- | Name of the bucket in which to store the new object. Overrides the provided object metadata\'s bucket value, if any.
    bucket :: Core.Text,
    -- | If set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded.
    contentEncoding :: (Core.Maybe Core.Text),
    -- | Makes the operation conditional on whether the object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    ifGenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the object\'s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
    ifGenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the object\'s current metageneration matches the given value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the object\'s current metageneration does not match the given value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Resource name of the Cloud KMS key, of the form projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key, that will be used to encrypt the object. Overrides the object metadata\'s kms/key/name value, if any.
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata\'s name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    name :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Object,
    -- | Apply a predefined set of access controls to this object.
    predefinedAcl :: (Core.Maybe ObjectsInsertPredefinedAcl),
    -- | Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
    projection :: (Core.Maybe ObjectsInsertProjection),
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsInsert' with the minimum fields required to make a request.
newStorageObjectsInsert ::
  -- |  Name of the bucket in which to store the new object. Overrides the provided object metadata\'s bucket value, if any. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Object ->
  StorageObjectsInsert
newStorageObjectsInsert bucket payload =
  StorageObjectsInsert
    { bucket = bucket,
      contentEncoding = Core.Nothing,
      ifGenerationMatch = Core.Nothing,
      ifGenerationNotMatch = Core.Nothing,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      kmsKeyName = Core.Nothing,
      name = Core.Nothing,
      payload = payload,
      predefinedAcl = Core.Nothing,
      projection = Core.Nothing,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsInsert where
  type Rs StorageObjectsInsert = Object
  type
    Scopes StorageObjectsInsert =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageObjectsInsert {..} =
    go
      bucket
      contentEncoding
      ifGenerationMatch
      ifGenerationNotMatch
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      kmsKeyName
      name
      predefinedAcl
      projection
      provisionalUserProject
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageObjectsInsertResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload StorageObjectsInsert)
  where
  type
    Rs (Core.MediaUpload StorageObjectsInsert) =
      Object
  type
    Scopes (Core.MediaUpload StorageObjectsInsert) =
      Core.Scopes StorageObjectsInsert
  requestClient
    (Core.MediaUpload StorageObjectsInsert {..} body) =
      go
        bucket
        contentEncoding
        ifGenerationMatch
        ifGenerationNotMatch
        ifMetagenerationMatch
        ifMetagenerationNotMatch
        kmsKeyName
        name
        predefinedAcl
        projection
        provisionalUserProject
        uploadType
        userProject
        (Core.Just Core.AltJSON)
        (Core.Just Core.Multipart)
        payload
        body
        storageService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy StorageObjectsInsertResource
            )
            Core.mempty
