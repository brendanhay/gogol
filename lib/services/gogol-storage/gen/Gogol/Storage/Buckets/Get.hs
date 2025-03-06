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
-- Module      : Gogol.Storage.Buckets.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.get@.
module Gogol.Storage.Buckets.Get
  ( -- * Resource
    StorageBucketsGetResource,

    -- ** Constructing a Request
    StorageBucketsGet (..),
    newStorageBucketsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.get@ method which the
-- 'StorageBucketsGet' request conforms to.
type StorageBucketsGetResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> Core.QueryParam "generation" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "projection" BucketsGetProjection
    Core.:> Core.QueryParam "softDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Bucket

-- | Returns metadata for the specified bucket.
--
-- /See:/ 'newStorageBucketsGet' smart constructor.
data StorageBucketsGet = StorageBucketsGet
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | If present, specifies the generation of the bucket. This is required if softDeleted is true.
    generation :: (Core.Maybe Core.Int64),
    -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration matches the given value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration does not match the given value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Set of properties to return. Defaults to noAcl.
    projection :: (Core.Maybe BucketsGetProjection),
    -- | If true, return the soft-deleted version of this bucket. The default is false. For more information, see <https://cloud.google.com/storage/docs/soft-delete Soft Delete>.
    softDeleted :: (Core.Maybe Core.Bool),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsGet' with the minimum fields required to make a request.
newStorageBucketsGet ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  StorageBucketsGet
newStorageBucketsGet bucket =
  StorageBucketsGet
    { bucket = bucket,
      generation = Core.Nothing,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      projection = Core.Nothing,
      softDeleted = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsGet where
  type Rs StorageBucketsGet = Bucket
  type
    Scopes StorageBucketsGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageBucketsGet {..} =
    go
      bucket
      generation
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      projection
      softDeleted
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageBucketsGetResource)
          Core.mempty
