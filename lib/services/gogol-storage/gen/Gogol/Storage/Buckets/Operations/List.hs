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
-- Module      : Gogol.Storage.Buckets.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.operations.list@.
module Gogol.Storage.Buckets.Operations.List
    (
    -- * Resource
      StorageBucketsOperationsListResource

    -- ** Constructing a Request
    , StorageBucketsOperationsList (..)
    , newStorageBucketsOperationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.operations.list@ method which the
-- 'StorageBucketsOperationsList' request conforms to.
type StorageBucketsOperationsListResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "operations" Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON]
                           GoogleLongrunningListOperationsResponse

-- | Lists operations that match the specified filter in the request.
--
-- /See:/ 'newStorageBucketsOperationsList' smart constructor.
data StorageBucketsOperationsList = StorageBucketsOperationsList
    {
      -- | Name of the bucket in which to look for operations.
      bucket :: Core.Text
      -- | A filter to narrow down results to a preferred subset. The filtering language is documented in more detail in <https://google.aip.dev/160 AIP-160>.
    , filter :: (Core.Maybe Core.Text)
      -- | Maximum number of items to return in a single page of responses. Fewer total results may be returned than requested. The service uses this parameter or 100 items, whichever is smaller.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A previously-returned page token representing part of the larger set of results to view.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsOperationsList' with the minimum fields required to make a request.
newStorageBucketsOperationsList 
    ::  Core.Text
       -- ^  Name of the bucket in which to look for operations. See 'bucket'.
    -> StorageBucketsOperationsList
newStorageBucketsOperationsList bucket =
  StorageBucketsOperationsList
    { bucket = bucket
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    }

instance Core.GoogleRequest
           StorageBucketsOperationsList
         where
        type Rs StorageBucketsOperationsList =
             GoogleLongrunningListOperationsResponse
        type Scopes StorageBucketsOperationsList =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Devstorage'FullControl, Devstorage'ReadOnly,
               Devstorage'ReadWrite]
        requestClient StorageBucketsOperationsList{..}
          = go bucket filter pageSize pageToken uploadType
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageBucketsOperationsListResource)
                      Core.mempty

