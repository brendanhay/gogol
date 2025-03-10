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
-- Module      : Gogol.Storage.Buckets.Operations.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.operations.cancel@.
module Gogol.Storage.Buckets.Operations.Cancel
  ( -- * Resource
    StorageBucketsOperationsCancelResource,

    -- ** Constructing a Request
    StorageBucketsOperationsCancel (..),
    newStorageBucketsOperationsCancel,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.operations.cancel@ method which the
-- 'StorageBucketsOperationsCancel' request conforms to.
type StorageBucketsOperationsCancelResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "operations"
    Core.:> Core.Capture "operationId" Core.Text
    Core.:> "cancel"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed.
--
-- /See:/ 'newStorageBucketsOperationsCancel' smart constructor.
data StorageBucketsOperationsCancel = StorageBucketsOperationsCancel
  { -- | The parent bucket of the operation resource.
    bucket :: Core.Text,
    -- | The ID of the operation resource.
    operationId :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsOperationsCancel' with the minimum fields required to make a request.
newStorageBucketsOperationsCancel ::
  -- |  The parent bucket of the operation resource. See 'bucket'.
  Core.Text ->
  -- |  The ID of the operation resource. See 'operationId'.
  Core.Text ->
  StorageBucketsOperationsCancel
newStorageBucketsOperationsCancel bucket operationId =
  StorageBucketsOperationsCancel
    { bucket = bucket,
      operationId = operationId,
      uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsOperationsCancel where
  type Rs StorageBucketsOperationsCancel = ()
  type
    Scopes StorageBucketsOperationsCancel =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageBucketsOperationsCancel {..} =
    go
      bucket
      operationId
      uploadType
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageBucketsOperationsCancelResource)
          Core.mempty
