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
-- Module      : Gogol.Storage.Buckets.Restore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a soft-deleted bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.restore@.
module Gogol.Storage.Buckets.Restore
    (
    -- * Resource
      StorageBucketsRestoreResource

    -- ** Constructing a Request
    , StorageBucketsRestore (..)
    , newStorageBucketsRestore
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.restore@ method which the
-- 'StorageBucketsRestore' request conforms to.
type StorageBucketsRestoreResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "restore" Core.:>
               Core.QueryParam "generation" Core.Int64 Core.:>
                 Core.QueryParam "projection" BucketsRestoreProjection
                   Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "userProject" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Post '[Core.JSON] Bucket

-- | Restores a soft-deleted bucket.
--
-- /See:/ 'newStorageBucketsRestore' smart constructor.
data StorageBucketsRestore = StorageBucketsRestore
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Generation of a bucket.
    , generation :: Core.Int64
      -- | Set of properties to return. Defaults to full.
    , projection :: (Core.Maybe BucketsRestoreProjection)
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsRestore' with the minimum fields required to make a request.
newStorageBucketsRestore 
    ::  Core.Text
       -- ^  Name of a bucket. See 'bucket'.
    -> Core.Int64
       -- ^  Generation of a bucket. See 'generation'.
    -> StorageBucketsRestore
newStorageBucketsRestore bucket generation =
  StorageBucketsRestore
    { bucket = bucket
    , generation = generation
    , projection = Core.Nothing
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsRestore
         where
        type Rs StorageBucketsRestore = Bucket
        type Scopes StorageBucketsRestore =
             '[CloudPlatform'FullControl, Devstorage'FullControl,
               Devstorage'ReadWrite]
        requestClient StorageBucketsRestore{..}
          = go bucket (Core.Just generation) projection
              uploadType
              userProject
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageBucketsRestoreResource)
                      Core.mempty

