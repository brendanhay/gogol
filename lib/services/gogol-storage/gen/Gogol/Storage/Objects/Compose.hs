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
-- Module      : Gogol.Storage.Objects.Compose
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Concatenates a list of existing objects into a new object in the same bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.compose@.
module Gogol.Storage.Objects.Compose
  ( -- * Resource
    StorageObjectsComposeResource,

    -- ** Constructing a Request
    StorageObjectsCompose (..),
    newStorageObjectsCompose,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.compose@ method which the
-- 'StorageObjectsCompose' request conforms to.
type StorageObjectsComposeResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "destinationBucket" Core.Text
    Core.:> "o"
    Core.:> Core.Capture "destinationObject" Core.Text
    Core.:> "compose"
    Core.:> Core.QueryParam
              "destinationPredefinedAcl"
              ObjectsComposeDestinationPredefinedAcl
    Core.:> Core.QueryParam "ifGenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "kmsKeyName" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ComposeRequest
    Core.:> Core.Post '[Core.JSON] Object

-- | Concatenates a list of existing objects into a new object in the same bucket.
--
-- /See:/ 'newStorageObjectsCompose' smart constructor.
data StorageObjectsCompose = StorageObjectsCompose
  { -- | Name of the bucket containing the source objects. The destination object is stored in this bucket.
    destinationBucket :: Core.Text,
    -- | Name of the new object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    destinationObject :: Core.Text,
    -- | Apply a predefined set of access controls to the destination object.
    destinationPredefinedAcl :: (Core.Maybe ObjectsComposeDestinationPredefinedAcl),
    -- | Makes the operation conditional on whether the object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    ifGenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the object\'s current metageneration matches the given value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Resource name of the Cloud KMS key, of the form projects\/my-project\/locations\/global\/keyRings\/my-kr\/cryptoKeys\/my-key, that will be used to encrypt the object. Overrides the object metadata\'s kms/key/name value, if any.
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ComposeRequest,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsCompose' with the minimum fields required to make a request.
newStorageObjectsCompose ::
  -- |  Name of the bucket containing the source objects. The destination object is stored in this bucket. See 'destinationBucket'.
  Core.Text ->
  -- |  Name of the new object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts. See 'destinationObject'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ComposeRequest ->
  StorageObjectsCompose
newStorageObjectsCompose destinationBucket destinationObject payload =
  StorageObjectsCompose
    { destinationBucket = destinationBucket,
      destinationObject = destinationObject,
      destinationPredefinedAcl = Core.Nothing,
      ifGenerationMatch = Core.Nothing,
      ifMetagenerationMatch = Core.Nothing,
      kmsKeyName = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsCompose where
  type Rs StorageObjectsCompose = Object
  type
    Scopes StorageObjectsCompose =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageObjectsCompose {..} =
    go
      destinationBucket
      destinationObject
      destinationPredefinedAcl
      ifGenerationMatch
      ifMetagenerationMatch
      kmsKeyName
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageObjectsComposeResource
          )
          Core.mempty
