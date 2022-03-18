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
-- Module      : Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a TagKey. This method will return @PERMISSION_DENIED@ if the key does not exist or the user does not have permission to view it.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.get@.
module Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.Get
  ( -- * Resource
    CloudresourcemanagerTagKeysGetResource,

    -- ** Constructing a Request
    newCloudresourcemanagerTagKeysGet,
    CloudresourcemanagerTagKeysGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.get@ method which the
-- 'CloudresourcemanagerTagKeysGet' request conforms to.
type CloudresourcemanagerTagKeysGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TagKey

-- | Retrieves a TagKey. This method will return @PERMISSION_DENIED@ if the key does not exist or the user does not have permission to view it.
--
-- /See:/ 'newCloudresourcemanagerTagKeysGet' smart constructor.
data CloudresourcemanagerTagKeysGet = CloudresourcemanagerTagKeysGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A resource name in the format @tagKeys\/{id}@, such as @tagKeys\/123@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagKeysGet' with the minimum fields required to make a request.
newCloudresourcemanagerTagKeysGet ::
  -- |  Required. A resource name in the format @tagKeys\/{id}@, such as @tagKeys\/123@. See 'name'.
  Core.Text ->
  CloudresourcemanagerTagKeysGet
newCloudresourcemanagerTagKeysGet name =
  CloudresourcemanagerTagKeysGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerTagKeysGet
  where
  type Rs CloudresourcemanagerTagKeysGet = TagKey
  type
    Scopes CloudresourcemanagerTagKeysGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient CloudresourcemanagerTagKeysGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerTagKeysGetResource
          )
          Core.mempty
