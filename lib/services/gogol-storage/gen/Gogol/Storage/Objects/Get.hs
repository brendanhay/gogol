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
-- Module      : Gogol.Storage.Objects.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an object or its metadata.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.get@.
module Gogol.Storage.Objects.Get
  ( -- * Resource
    StorageObjectsGetResource,

    -- ** Constructing a Request
    StorageObjectsGet (..),
    newStorageObjectsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.get@ method which the
-- 'StorageObjectsGet' request conforms to.
type StorageObjectsGetResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.Capture "object" Core.Text
    Core.:> Core.QueryParam "generation" Core.Int64
    Core.:> Core.QueryParam "ifGenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifGenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "projection" ObjectsGetProjection
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Object
    Core.:<|> "storage"
      Core.:> "v1"
      Core.:> "b"
      Core.:> Core.Capture "bucket" Core.Text
      Core.:> "o"
      Core.:> Core.Capture "object" Core.Text
      Core.:> Core.QueryParam "generation" Core.Int64
      Core.:> Core.QueryParam "ifGenerationMatch" Core.Int64
      Core.:> Core.QueryParam "ifGenerationNotMatch" Core.Int64
      Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
      Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
      Core.:> Core.QueryParam "projection" ObjectsGetProjection
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "userProject" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Retrieves an object or its metadata.
--
-- /See:/ 'newStorageObjectsGet' smart constructor.
data StorageObjectsGet = StorageObjectsGet
  { -- | Name of the bucket in which the object resides.
    bucket :: Core.Text,
    -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    generation :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    ifGenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the object\'s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
    ifGenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the object\'s current metageneration matches the given value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the object\'s current metageneration does not match the given value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    object :: Core.Text,
    -- | Set of properties to return. Defaults to noAcl.
    projection :: (Core.Maybe ObjectsGetProjection),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsGet' with the minimum fields required to make a request.
newStorageObjectsGet ::
  -- |  Name of the bucket in which the object resides. See 'bucket'.
  Core.Text ->
  -- |  Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts. See 'object'.
  Core.Text ->
  StorageObjectsGet
newStorageObjectsGet bucket object =
  StorageObjectsGet
    { bucket = bucket,
      generation = Core.Nothing,
      ifGenerationMatch = Core.Nothing,
      ifGenerationNotMatch = Core.Nothing,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      object = object,
      projection = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsGet where
  type Rs StorageObjectsGet = Object
  type
    Scopes StorageObjectsGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageObjectsGet {..} =
    go
      bucket
      object
      generation
      ifGenerationMatch
      ifGenerationNotMatch
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      projection
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageObjectsGetResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload StorageObjectsGet)
  where
  type
    Rs (Core.MediaDownload StorageObjectsGet) =
      Core.Stream
  type
    Scopes (Core.MediaDownload StorageObjectsGet) =
      Core.Scopes StorageObjectsGet
  requestClient
    (Core.MediaDownload StorageObjectsGet {..}) =
      go
        bucket
        object
        generation
        ifGenerationMatch
        ifGenerationNotMatch
        ifMetagenerationMatch
        ifMetagenerationNotMatch
        projection
        uploadType
        userProject
        (Core.Just Core.AltMedia)
        storageService
      where
        _ Core.:<|> go =
          Core.buildClient
            (Core.Proxy :: Core.Proxy StorageObjectsGetResource)
            Core.mempty
