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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagKeys.GetNamespaced
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a TagKey by its namespaced name. This method will return @PERMISSION_DENIED@ if the key does not exist or the user does not have permission to view it.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.getNamespaced@.
module Gogol.ResourceManager.Cloudresourcemanager.TagKeys.GetNamespaced
  ( -- * Resource
    CloudresourcemanagerTagKeysGetNamespacedResource,

    -- ** Constructing a Request
    CloudresourcemanagerTagKeysGetNamespaced (..),
    newCloudresourcemanagerTagKeysGetNamespaced,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.getNamespaced@ method which the
-- 'CloudresourcemanagerTagKeysGetNamespaced' request conforms to.
type CloudresourcemanagerTagKeysGetNamespacedResource =
  "v3"
    Core.:> "tagKeys"
    Core.:> "namespaced"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TagKey

-- | Retrieves a TagKey by its namespaced name. This method will return @PERMISSION_DENIED@ if the key does not exist or the user does not have permission to view it.
--
-- /See:/ 'newCloudresourcemanagerTagKeysGetNamespaced' smart constructor.
data CloudresourcemanagerTagKeysGetNamespaced = CloudresourcemanagerTagKeysGetNamespaced
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A namespaced tag key name in the format @{parentId}\/{tagKeyShort}@, such as @42\/foo@ for a key with short name \"foo\" under the organization with ID 42 or @r2-d2\/bar@ for a key with short name \"bar\" under the project @r2-d2@.
    name :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagKeysGetNamespaced' with the minimum fields required to make a request.
newCloudresourcemanagerTagKeysGetNamespaced ::
  CloudresourcemanagerTagKeysGetNamespaced
newCloudresourcemanagerTagKeysGetNamespaced =
  CloudresourcemanagerTagKeysGetNamespaced
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerTagKeysGetNamespaced
  where
  type Rs CloudresourcemanagerTagKeysGetNamespaced = TagKey
  type
    Scopes CloudresourcemanagerTagKeysGetNamespaced =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient CloudresourcemanagerTagKeysGetNamespaced {..} =
    go
      xgafv
      accessToken
      callback
      name
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerTagKeysGetNamespacedResource
          )
          Core.mempty
