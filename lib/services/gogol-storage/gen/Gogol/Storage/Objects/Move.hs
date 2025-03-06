{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Objects.Move
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the source object to the destination object in the same bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.move@.
module Gogol.Storage.Objects.Move
  ( -- * Resource
    StorageObjectsMoveResource,

    -- ** Constructing a Request
    StorageObjectsMove (..),
    newStorageObjectsMove,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.move@ method which the
-- 'StorageObjectsMove' request conforms to.
type StorageObjectsMoveResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.Capture "sourceObject" Core.Text
    Core.:> "moveTo"
    Core.:> "o"
    Core.:> Core.Capture "destinationObject" Core.Text
    Core.:> Core.QueryParam "ifGenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifGenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "ifSourceGenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifSourceGenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "ifSourceMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifSourceMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Object

-- | Moves the source object to the destination object in the same bucket.
--
-- /See:/ 'newStorageObjectsMove' smart constructor.
data StorageObjectsMove = StorageObjectsMove
  { -- | Name of the bucket in which the object resides.
    bucket :: Core.Text,
    -- | Name of the destination object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>.
    destinationObject :: Core.Text,
    -- | Makes the operation conditional on whether the destination object\'s current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object. @ifGenerationMatch@ and @ifGenerationNotMatch@ conditions are mutually exclusive: it\'s an error for both of them to be set in the request.
    ifGenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the destination object\'s current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.@ifGenerationMatch@ and @ifGenerationNotMatch@ conditions are mutually exclusive: it\'s an error for both of them to be set in the request.
    ifGenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the destination object\'s current metageneration matches the given value. @ifMetagenerationMatch@ and @ifMetagenerationNotMatch@ conditions are mutually exclusive: it\'s an error for both of them to be set in the request.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the destination object\'s current metageneration does not match the given value. @ifMetagenerationMatch@ and @ifMetagenerationNotMatch@ conditions are mutually exclusive: it\'s an error for both of them to be set in the request.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the source object\'s current generation matches the given value. @ifSourceGenerationMatch@ and @ifSourceGenerationNotMatch@ conditions are mutually exclusive: it\'s an error for both of them to be set in the request.
    ifSourceGenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the source object\'s current generation does not match the given value. @ifSourceGenerationMatch@ and @ifSourceGenerationNotMatch@ conditions are mutually exclusive: it\'s an error for both of them to be set in the request.
    ifSourceGenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the source object\'s current metageneration matches the given value. @ifSourceMetagenerationMatch@ and @ifSourceMetagenerationNotMatch@ conditions are mutually exclusive: it\'s an error for both of them to be set in the request.
    ifSourceMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the operation conditional on whether the source object\'s current metageneration does not match the given value. @ifSourceMetagenerationMatch@ and @ifSourceMetagenerationNotMatch@ conditions are mutually exclusive: it\'s an error for both of them to be set in the request.
    ifSourceMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Name of the source object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>.
    sourceObject :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsMove' with the minimum fields required to make a request.
newStorageObjectsMove ::
  -- |  Name of the bucket in which the object resides. See 'bucket'.
  Core.Text ->
  -- |  Name of the destination object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>. See 'destinationObject'.
  Core.Text ->
  -- |  Name of the source object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>. See 'sourceObject'.
  Core.Text ->
  StorageObjectsMove
newStorageObjectsMove bucket destinationObject sourceObject =
  StorageObjectsMove
    { bucket = bucket,
      destinationObject = destinationObject,
      ifGenerationMatch = Core.Nothing,
      ifGenerationNotMatch = Core.Nothing,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      ifSourceGenerationMatch = Core.Nothing,
      ifSourceGenerationNotMatch = Core.Nothing,
      ifSourceMetagenerationMatch = Core.Nothing,
      ifSourceMetagenerationNotMatch = Core.Nothing,
      sourceObject = sourceObject,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsMove where
  type Rs StorageObjectsMove = Object
  type
    Scopes StorageObjectsMove =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageObjectsMove {..} =
    go
      bucket
      sourceObject
      destinationObject
      ifGenerationMatch
      ifGenerationNotMatch
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      ifSourceGenerationMatch
      ifSourceGenerationNotMatch
      ifSourceMetagenerationMatch
      ifSourceMetagenerationNotMatch
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageObjectsMoveResource)
          Core.mempty
