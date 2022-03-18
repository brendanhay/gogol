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
-- Module      : Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a TagKey. The TagKey cannot be deleted if it has any child TagValues.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.delete@.
module Network.Google.ResourceManager.Cloudresourcemanager.TagKeys.Delete
  ( -- * Resource
    CloudresourcemanagerTagKeysDeleteResource,

    -- ** Constructing a Request
    newCloudresourcemanagerTagKeysDelete,
    CloudresourcemanagerTagKeysDelete,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.delete@ method which the
-- 'CloudresourcemanagerTagKeysDelete' request conforms to.
type CloudresourcemanagerTagKeysDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "etag" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a TagKey. The TagKey cannot be deleted if it has any child TagValues.
--
-- /See:/ 'newCloudresourcemanagerTagKeysDelete' smart constructor.
data CloudresourcemanagerTagKeysDelete = CloudresourcemanagerTagKeysDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The etag known to the client for the expected state of the TagKey. This is to be used for optimistic concurrency.
    etag :: (Core.Maybe Core.Text),
    -- | Required. The resource name of a TagKey to be deleted in the format @tagKeys\/123@. The TagKey cannot be a parent of any existing TagValues or it will not be deleted successfully.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Set as true to perform validations necessary for deletion, but not actually perform the action.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagKeysDelete' with the minimum fields required to make a request.
newCloudresourcemanagerTagKeysDelete ::
  -- |  Required. The resource name of a TagKey to be deleted in the format @tagKeys\/123@. The TagKey cannot be a parent of any existing TagValues or it will not be deleted successfully. See 'name'.
  Core.Text ->
  CloudresourcemanagerTagKeysDelete
newCloudresourcemanagerTagKeysDelete name =
  CloudresourcemanagerTagKeysDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerTagKeysDelete
  where
  type Rs CloudresourcemanagerTagKeysDelete = Operation
  type
    Scopes CloudresourcemanagerTagKeysDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudresourcemanagerTagKeysDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      etag
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerTagKeysDeleteResource
          )
          Core.mempty
