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
-- Module      : Gogol.Storage.Objects.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an IAM policy for the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.setIamPolicy@.
module Gogol.Storage.Objects.SetIamPolicy
  ( -- * Resource
    StorageObjectsSetIamPolicyResource,

    -- ** Constructing a Request
    StorageObjectsSetIamPolicy (..),
    newStorageObjectsSetIamPolicy,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.setIamPolicy@ method which the
-- 'StorageObjectsSetIamPolicy' request conforms to.
type StorageObjectsSetIamPolicyResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.Capture "object" Core.Text
    Core.:> "iam"
    Core.:> Core.QueryParam "generation" Core.Int64
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Policy
    Core.:> Core.Put '[Core.JSON] Policy

-- | Updates an IAM policy for the specified object.
--
-- /See:/ 'newStorageObjectsSetIamPolicy' smart constructor.
data StorageObjectsSetIamPolicy = StorageObjectsSetIamPolicy
  { -- | Name of the bucket in which the object resides.
    bucket :: Core.Text,
    -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    generation :: (Core.Maybe Core.Int64),
    -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    object :: Core.Text,
    -- | Multipart request metadata.
    payload :: Policy,
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsSetIamPolicy' with the minimum fields required to make a request.
newStorageObjectsSetIamPolicy ::
  -- |  Name of the bucket in which the object resides. See 'bucket'.
  Core.Text ->
  -- |  Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts. See 'object'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Policy ->
  StorageObjectsSetIamPolicy
newStorageObjectsSetIamPolicy bucket object payload =
  StorageObjectsSetIamPolicy
    { bucket = bucket,
      generation = Core.Nothing,
      object = object,
      payload = payload,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageObjectsSetIamPolicy
  where
  type Rs StorageObjectsSetIamPolicy = Policy
  type
    Scopes StorageObjectsSetIamPolicy =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageObjectsSetIamPolicy {..} =
    go
      bucket
      object
      generation
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
              Core.Proxy StorageObjectsSetIamPolicyResource
          )
          Core.mempty
