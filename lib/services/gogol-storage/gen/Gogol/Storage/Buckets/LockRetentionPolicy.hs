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
-- Module      : Gogol.Storage.Buckets.LockRetentionPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Locks retention policy on a bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.lockRetentionPolicy@.
module Gogol.Storage.Buckets.LockRetentionPolicy
  ( -- * Resource
    StorageBucketsLockRetentionPolicyResource,

    -- ** Constructing a Request
    StorageBucketsLockRetentionPolicy (..),
    newStorageBucketsLockRetentionPolicy,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.lockRetentionPolicy@ method which the
-- 'StorageBucketsLockRetentionPolicy' request conforms to.
type StorageBucketsLockRetentionPolicyResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "lockRetentionPolicy"
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Bucket

-- | Locks retention policy on a bucket.
--
-- /See:/ 'newStorageBucketsLockRetentionPolicy' smart constructor.
data StorageBucketsLockRetentionPolicy = StorageBucketsLockRetentionPolicy
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | Makes the operation conditional on whether bucket\'s current metageneration matches the given value.
    ifMetagenerationMatch :: Core.Int64,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsLockRetentionPolicy' with the minimum fields required to make a request.
newStorageBucketsLockRetentionPolicy ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  Makes the operation conditional on whether bucket\'s current metageneration matches the given value. See 'ifMetagenerationMatch'.
  Core.Int64 ->
  StorageBucketsLockRetentionPolicy
newStorageBucketsLockRetentionPolicy bucket ifMetagenerationMatch =
  StorageBucketsLockRetentionPolicy
    { bucket = bucket,
      ifMetagenerationMatch = ifMetagenerationMatch,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsLockRetentionPolicy where
  type Rs StorageBucketsLockRetentionPolicy = Bucket
  type
    Scopes StorageBucketsLockRetentionPolicy =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageBucketsLockRetentionPolicy {..} =
    go
      bucket
      (Core.Just ifMetagenerationMatch)
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageBucketsLockRetentionPolicyResource
          )
          Core.mempty
