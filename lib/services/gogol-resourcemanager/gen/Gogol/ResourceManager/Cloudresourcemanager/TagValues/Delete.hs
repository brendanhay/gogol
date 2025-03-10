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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagValues.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a TagValue. The TagValue cannot have any bindings when it is deleted.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.delete@.
module Gogol.ResourceManager.Cloudresourcemanager.TagValues.Delete
  ( -- * Resource
    CloudresourcemanagerTagValuesDeleteResource,

    -- ** Constructing a Request
    CloudresourcemanagerTagValuesDelete (..),
    newCloudresourcemanagerTagValuesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.delete@ method which the
-- 'CloudresourcemanagerTagValuesDelete' request conforms to.
type CloudresourcemanagerTagValuesDeleteResource =
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

-- | Deletes a TagValue. The TagValue cannot have any bindings when it is deleted.
--
-- /See:/ 'newCloudresourcemanagerTagValuesDelete' smart constructor.
data CloudresourcemanagerTagValuesDelete = CloudresourcemanagerTagValuesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The etag known to the client for the expected state of the TagValue. This is to be used for optimistic concurrency.
    etag :: (Core.Maybe Core.Text),
    -- | Required. Resource name for TagValue to be deleted in the format tagValues\/456.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Set as true to perform the validations necessary for deletion, but not actually perform the action.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagValuesDelete' with the minimum fields required to make a request.
newCloudresourcemanagerTagValuesDelete ::
  -- |  Required. Resource name for TagValue to be deleted in the format tagValues\/456. See 'name'.
  Core.Text ->
  CloudresourcemanagerTagValuesDelete
newCloudresourcemanagerTagValuesDelete name =
  CloudresourcemanagerTagValuesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.GoogleRequest CloudresourcemanagerTagValuesDelete where
  type Rs CloudresourcemanagerTagValuesDelete = Operation
  type
    Scopes CloudresourcemanagerTagValuesDelete =
      '[CloudPlatform'FullControl]
  requestClient CloudresourcemanagerTagValuesDelete {..} =
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
              Core.Proxy CloudresourcemanagerTagValuesDeleteResource
          )
          Core.mempty
