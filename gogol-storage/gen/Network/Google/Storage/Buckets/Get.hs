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
-- Module      : Network.Google.Storage.Buckets.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.get@.
module Network.Google.Storage.Buckets.Get
  ( -- * Resource
    StorageBucketsGetResource,

    -- ** Constructing a Request
    newStorageBucketsGet,
    StorageBucketsGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.get@ method which the
-- 'StorageBucketsGet' request conforms to.
type StorageBucketsGetResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "projection" BucketsGetProjection
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
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
    -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration matches the given value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration does not match the given value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Set of properties to return. Defaults to noAcl.
    projection :: (Core.Maybe BucketsGetProjection),
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
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
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      projection = Core.Nothing,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsGet where
  type Rs StorageBucketsGet = Bucket
  type
    Scopes StorageBucketsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/devstorage.full_control",
         "https://www.googleapis.com/auth/devstorage.read_only",
         "https://www.googleapis.com/auth/devstorage.read_write"
       ]
  requestClient StorageBucketsGet {..} =
    go
      bucket
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      projection
      provisionalUserProject
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageBucketsGetResource)
          Core.mempty
