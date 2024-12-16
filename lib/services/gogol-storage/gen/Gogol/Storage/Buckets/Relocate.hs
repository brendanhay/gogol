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
-- Module      : Gogol.Storage.Buckets.Relocate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a long-running Relocate Bucket operation on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.relocate@.
module Gogol.Storage.Buckets.Relocate
    (
    -- * Resource
      StorageBucketsRelocateResource

    -- ** Constructing a Request
    , StorageBucketsRelocate (..)
    , newStorageBucketsRelocate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.relocate@ method which the
-- 'StorageBucketsRelocate' request conforms to.
type StorageBucketsRelocateResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "relocate" Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.ReqBody '[Core.JSON] RelocateBucketRequest
                     Core.:>
                     Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Initiates a long-running Relocate Bucket operation on the specified bucket.
--
-- /See:/ 'newStorageBucketsRelocate' smart constructor.
data StorageBucketsRelocate = StorageBucketsRelocate
    {
      -- | Name of the bucket to be moved.
      bucket :: Core.Text
      -- | Multipart request metadata.
    , payload :: RelocateBucketRequest
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsRelocate' with the minimum fields required to make a request.
newStorageBucketsRelocate 
    ::  Core.Text
       -- ^  Name of the bucket to be moved. See 'bucket'.
    -> RelocateBucketRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> StorageBucketsRelocate
newStorageBucketsRelocate bucket payload =
  StorageBucketsRelocate
    {bucket = bucket, payload = payload, uploadType = Core.Nothing}

instance Core.GoogleRequest StorageBucketsRelocate
         where
        type Rs StorageBucketsRelocate =
             GoogleLongrunningOperation
        type Scopes StorageBucketsRelocate =
             '[CloudPlatform'FullControl, Devstorage'FullControl,
               Devstorage'ReadWrite]
        requestClient StorageBucketsRelocate{..}
          = go bucket uploadType (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageBucketsRelocateResource)
                      Core.mempty

