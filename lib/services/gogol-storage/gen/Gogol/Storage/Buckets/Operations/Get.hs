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
-- Module      : Gogol.Storage.Buckets.Operations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.operations.get@.
module Gogol.Storage.Buckets.Operations.Get
    (
    -- * Resource
      StorageBucketsOperationsGetResource

    -- ** Constructing a Request
    , StorageBucketsOperationsGet (..)
    , newStorageBucketsOperationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.operations.get@ method which the
-- 'StorageBucketsOperationsGet' request conforms to.
type StorageBucketsOperationsGetResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "operations" Core.:>
               Core.Capture "operationId" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleLongrunningOperation

-- | Gets the latest state of a long-running operation.
--
-- /See:/ 'newStorageBucketsOperationsGet' smart constructor.
data StorageBucketsOperationsGet = StorageBucketsOperationsGet
    {
      -- | The parent bucket of the operation resource.
      bucket :: Core.Text
      -- | The ID of the operation resource.
    , operationId :: Core.Text
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsOperationsGet' with the minimum fields required to make a request.
newStorageBucketsOperationsGet 
    ::  Core.Text
       -- ^  The parent bucket of the operation resource. See 'bucket'.
    -> Core.Text
       -- ^  The ID of the operation resource. See 'operationId'.
    -> StorageBucketsOperationsGet
newStorageBucketsOperationsGet bucket operationId =
  StorageBucketsOperationsGet
    {bucket = bucket, operationId = operationId, uploadType = Core.Nothing}

instance Core.GoogleRequest
           StorageBucketsOperationsGet
         where
        type Rs StorageBucketsOperationsGet =
             GoogleLongrunningOperation
        type Scopes StorageBucketsOperationsGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Devstorage'FullControl, Devstorage'ReadOnly,
               Devstorage'ReadWrite]
        requestClient StorageBucketsOperationsGet{..}
          = go bucket operationId uploadType
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageBucketsOperationsGetResource)
                      Core.mempty

