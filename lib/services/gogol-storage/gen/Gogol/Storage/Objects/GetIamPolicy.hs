{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Storage.Objects.GetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an IAM policy for the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.getIamPolicy@.
module Gogol.Storage.Objects.GetIamPolicy
  ( -- * Resource
    StorageObjectsGetIamPolicyResource,

    -- ** Constructing a Request
    StorageObjectsGetIamPolicy (..),
    newStorageObjectsGetIamPolicy,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.getIamPolicy@ method which the
-- 'StorageObjectsGetIamPolicy' request conforms to.
type StorageObjectsGetIamPolicyResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.Capture "object" Core.Text
    Core.:> "iam"
    Core.:> Core.QueryParam "generation" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Returns an IAM policy for the specified object.
--
-- /See:/ 'newStorageObjectsGetIamPolicy' smart constructor.
data StorageObjectsGetIamPolicy = StorageObjectsGetIamPolicy
  { -- | Name of the bucket in which the object resides.
    bucket :: Core.Text,
    -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    generation :: (Core.Maybe Core.Int64),
    -- | Name of the object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>.
    object :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsGetIamPolicy' with the minimum fields required to make a request.
newStorageObjectsGetIamPolicy ::
  -- |  Name of the bucket in which the object resides. See 'bucket'.
  Core.Text ->
  -- |  Name of the object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>. See 'object'.
  Core.Text ->
  StorageObjectsGetIamPolicy
newStorageObjectsGetIamPolicy bucket object =
  StorageObjectsGetIamPolicy
    { bucket = bucket,
      generation = Core.Nothing,
      object = object,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsGetIamPolicy where
  type Rs StorageObjectsGetIamPolicy = Policy
  type
    Scopes StorageObjectsGetIamPolicy =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageObjectsGetIamPolicy {..} =
    go
      bucket
      object
      generation
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageObjectsGetIamPolicyResource)
          Core.mempty
