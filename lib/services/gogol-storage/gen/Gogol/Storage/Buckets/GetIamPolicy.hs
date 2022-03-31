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
-- Module      : Gogol.Storage.Buckets.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an IAM policy for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.getIamPolicy@.
module Gogol.Storage.Buckets.GetIamPolicy
  ( -- * Resource
    StorageBucketsGetIamPolicyResource,

    -- ** Constructing a Request
    newStorageBucketsGetIamPolicy,
    StorageBucketsGetIamPolicy,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.getIamPolicy@ method which the
-- 'StorageBucketsGetIamPolicy' request conforms to.
type StorageBucketsGetIamPolicyResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "iam"
    Core.:> Core.QueryParam
              "optionsRequestedPolicyVersion"
              Core.Int32
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Returns an IAM policy for the specified bucket.
--
-- /See:/ 'newStorageBucketsGetIamPolicy' smart constructor.
data StorageBucketsGetIamPolicy = StorageBucketsGetIamPolicy
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | The IAM policy format version to be returned. If the optionsRequestedPolicyVersion is for an older version that doesn\'t support part of the requested IAM policy, the request fails.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsGetIamPolicy' with the minimum fields required to make a request.
newStorageBucketsGetIamPolicy ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  StorageBucketsGetIamPolicy
newStorageBucketsGetIamPolicy bucket =
  StorageBucketsGetIamPolicy
    { bucket = bucket,
      optionsRequestedPolicyVersion = Core.Nothing,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageBucketsGetIamPolicy
  where
  type Rs StorageBucketsGetIamPolicy = Policy
  type
    Scopes StorageBucketsGetIamPolicy =
      '[CloudPlatform'FullControl, Devstorage'FullControl]
  requestClient StorageBucketsGetIamPolicy {..} =
    go
      bucket
      optionsRequestedPolicyVersion
      provisionalUserProject
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageBucketsGetIamPolicyResource
          )
          Core.mempty
