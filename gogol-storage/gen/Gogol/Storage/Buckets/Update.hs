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
-- Module      : Gogol.Storage.Buckets.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.update@.
module Gogol.Storage.Buckets.Update
  ( -- * Resource
    StorageBucketsUpdateResource,

    -- ** Constructing a Request
    newStorageBucketsUpdate,
    StorageBucketsUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.update@ method which the
-- 'StorageBucketsUpdate' request conforms to.
type StorageBucketsUpdateResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam
              "predefinedAcl"
              BucketsUpdatePredefinedAcl
    Core.:> Core.QueryParam
              "predefinedDefaultObjectAcl"
              BucketsUpdatePredefinedDefaultObjectAcl
    Core.:> Core.QueryParam "projection" BucketsUpdateProjection
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Bucket
    Core.:> Core.Put '[Core.JSON] Bucket

-- | Updates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.
--
-- /See:/ 'newStorageBucketsUpdate' smart constructor.
data StorageBucketsUpdate = StorageBucketsUpdate
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration matches the given value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration does not match the given value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | Multipart request metadata.
    payload :: Bucket,
    -- | Apply a predefined set of access controls to this bucket.
    predefinedAcl :: (Core.Maybe BucketsUpdatePredefinedAcl),
    -- | Apply a predefined set of default object access controls to this bucket.
    predefinedDefaultObjectAcl :: (Core.Maybe BucketsUpdatePredefinedDefaultObjectAcl),
    -- | Set of properties to return. Defaults to full.
    projection :: (Core.Maybe BucketsUpdateProjection),
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsUpdate' with the minimum fields required to make a request.
newStorageBucketsUpdate ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Bucket ->
  StorageBucketsUpdate
newStorageBucketsUpdate bucket payload =
  StorageBucketsUpdate
    { bucket = bucket,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      payload = payload,
      predefinedAcl = Core.Nothing,
      predefinedDefaultObjectAcl = Core.Nothing,
      projection = Core.Nothing,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsUpdate where
  type Rs StorageBucketsUpdate = Bucket
  type
    Scopes StorageBucketsUpdate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/devstorage.full_control"
       ]
  requestClient StorageBucketsUpdate {..} =
    go
      bucket
      ifMetagenerationMatch
      ifMetagenerationNotMatch
      predefinedAcl
      predefinedDefaultObjectAcl
      projection
      provisionalUserProject
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageBucketsUpdateResource
          )
          Core.mempty
