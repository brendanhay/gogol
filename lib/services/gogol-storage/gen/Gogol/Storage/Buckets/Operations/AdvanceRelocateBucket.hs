{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Storage.Buckets.Operations.AdvanceRelocateBucket
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous advancement of the relocate bucket operation in the case of required write downtime, to allow it to lock the bucket at the source location, and proceed with the bucket location swap. The server makes a best effort to advance the relocate bucket operation, but success is not guaranteed.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.operations.advanceRelocateBucket@.
module Gogol.Storage.Buckets.Operations.AdvanceRelocateBucket
  ( -- * Resource
    StorageBucketsOperationsAdvanceRelocateBucketResource,

    -- ** Constructing a Request
    StorageBucketsOperationsAdvanceRelocateBucket (..),
    newStorageBucketsOperationsAdvanceRelocateBucket,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.operations.advanceRelocateBucket@ method which the
-- 'StorageBucketsOperationsAdvanceRelocateBucket' request conforms to.
type StorageBucketsOperationsAdvanceRelocateBucketResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "operations"
    Core.:> Core.Capture "operationId" Core.Text
    Core.:> "advanceRelocateBucket"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AdvanceRelocateBucketOperationRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Starts asynchronous advancement of the relocate bucket operation in the case of required write downtime, to allow it to lock the bucket at the source location, and proceed with the bucket location swap. The server makes a best effort to advance the relocate bucket operation, but success is not guaranteed.
--
-- /See:/ 'newStorageBucketsOperationsAdvanceRelocateBucket' smart constructor.
data StorageBucketsOperationsAdvanceRelocateBucket = StorageBucketsOperationsAdvanceRelocateBucket
  { -- | Name of the bucket to advance the relocate for.
    bucket :: Core.Text,
    -- | ID of the operation resource.
    operationId :: Core.Text,
    -- | Multipart request metadata.
    payload :: AdvanceRelocateBucketOperationRequest,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsOperationsAdvanceRelocateBucket' with the minimum fields required to make a request.
newStorageBucketsOperationsAdvanceRelocateBucket ::
  -- |  Name of the bucket to advance the relocate for. See 'bucket'.
  Core.Text ->
  -- |  ID of the operation resource. See 'operationId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AdvanceRelocateBucketOperationRequest ->
  StorageBucketsOperationsAdvanceRelocateBucket
newStorageBucketsOperationsAdvanceRelocateBucket
  bucket
  operationId
  payload =
    StorageBucketsOperationsAdvanceRelocateBucket
      { bucket = bucket,
        operationId = operationId,
        payload = payload,
        uploadType = Core.Nothing
      }

instance
  Core.GoogleRequest
    StorageBucketsOperationsAdvanceRelocateBucket
  where
  type Rs StorageBucketsOperationsAdvanceRelocateBucket = ()
  type
    Scopes StorageBucketsOperationsAdvanceRelocateBucket =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageBucketsOperationsAdvanceRelocateBucket {..} =
    go
      bucket
      operationId
      uploadType
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageBucketsOperationsAdvanceRelocateBucketResource
          )
          Core.mempty
