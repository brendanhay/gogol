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
-- Module      : Gogol.Storage.BucketAccessControls.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.insert@.
module Gogol.Storage.BucketAccessControls.Insert
  ( -- * Resource
    StorageBucketAccessControlsInsertResource,

    -- ** Constructing a Request
    StorageBucketAccessControlsInsert (..),
    newStorageBucketAccessControlsInsert,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.bucketAccessControls.insert@ method which the
-- 'StorageBucketAccessControlsInsert' request conforms to.
type StorageBucketAccessControlsInsertResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "acl"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BucketAccessControl
    Core.:> Core.Post '[Core.JSON] BucketAccessControl

-- | Creates a new ACL entry on the specified bucket.
--
-- /See:/ 'newStorageBucketAccessControlsInsert' smart constructor.
data StorageBucketAccessControlsInsert = StorageBucketAccessControlsInsert
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | Multipart request metadata.
    payload :: BucketAccessControl,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketAccessControlsInsert' with the minimum fields required to make a request.
newStorageBucketAccessControlsInsert ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BucketAccessControl ->
  StorageBucketAccessControlsInsert
newStorageBucketAccessControlsInsert bucket payload =
  StorageBucketAccessControlsInsert
    { bucket = bucket,
      payload = payload,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageBucketAccessControlsInsert
  where
  type
    Rs StorageBucketAccessControlsInsert =
      BucketAccessControl
  type
    Scopes StorageBucketAccessControlsInsert =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageBucketAccessControlsInsert {..} =
    go
      bucket
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageBucketAccessControlsInsertResource
          )
          Core.mempty
