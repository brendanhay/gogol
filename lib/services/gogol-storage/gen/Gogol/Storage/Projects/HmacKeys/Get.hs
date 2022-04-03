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
-- Module      : Gogol.Storage.Projects.HmacKeys.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an HMAC key\'s metadata
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.get@.
module Gogol.Storage.Projects.HmacKeys.Get
  ( -- * Resource
    StorageProjectsHmacKeysGetResource,

    -- ** Constructing a Request
    StorageProjectsHmacKeysGet (..),
    newStorageProjectsHmacKeysGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.get@ method which the
-- 'StorageProjectsHmacKeysGet' request conforms to.
type StorageProjectsHmacKeysGetResource =
  "storage"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "hmacKeys"
    Core.:> Core.Capture "accessId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HmacKeyMetadata

-- | Retrieves an HMAC key\'s metadata
--
-- /See:/ 'newStorageProjectsHmacKeysGet' smart constructor.
data StorageProjectsHmacKeysGet = StorageProjectsHmacKeysGet
  { -- | Name of the HMAC key.
    accessId :: Core.Text,
    -- | Project ID owning the service account of the requested key.
    projectId :: Core.Text,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageProjectsHmacKeysGet' with the minimum fields required to make a request.
newStorageProjectsHmacKeysGet ::
  -- |  Name of the HMAC key. See 'accessId'.
  Core.Text ->
  -- |  Project ID owning the service account of the requested key. See 'projectId'.
  Core.Text ->
  StorageProjectsHmacKeysGet
newStorageProjectsHmacKeysGet accessId projectId =
  StorageProjectsHmacKeysGet
    { accessId = accessId,
      projectId = projectId,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageProjectsHmacKeysGet
  where
  type Rs StorageProjectsHmacKeysGet = HmacKeyMetadata
  type
    Scopes StorageProjectsHmacKeysGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly
       ]
  requestClient StorageProjectsHmacKeysGet {..} =
    go
      projectId
      accessId
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageProjectsHmacKeysGetResource
          )
          Core.mempty
