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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a TagHold.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.tagHolds.delete@.
module Gogol.ResourceManager.Cloudresourcemanager.TagValues.TagHolds.Delete
  ( -- * Resource
    CloudresourcemanagerTagValuesTagHoldsDeleteResource,

    -- ** Constructing a Request
    CloudresourcemanagerTagValuesTagHoldsDelete (..),
    newCloudresourcemanagerTagValuesTagHoldsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.tagHolds.delete@ method which the
-- 'CloudresourcemanagerTagValuesTagHoldsDelete' request conforms to.
type CloudresourcemanagerTagValuesTagHoldsDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a TagHold.
--
-- /See:/ 'newCloudresourcemanagerTagValuesTagHoldsDelete' smart constructor.
data CloudresourcemanagerTagValuesTagHoldsDelete = CloudresourcemanagerTagValuesTagHoldsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the TagHold to delete. Must be of the form: @tagValues\/{tag-value-id}\/tagHolds\/{tag-hold-id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Set to true to perform the validations necessary for deleting the resource, but not actually perform the action.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagValuesTagHoldsDelete' with the minimum fields required to make a request.
newCloudresourcemanagerTagValuesTagHoldsDelete ::
  -- |  Required. The resource name of the TagHold to delete. Must be of the form: @tagValues\/{tag-value-id}\/tagHolds\/{tag-hold-id}@. See 'name'.
  Core.Text ->
  CloudresourcemanagerTagValuesTagHoldsDelete
newCloudresourcemanagerTagValuesTagHoldsDelete name =
  CloudresourcemanagerTagValuesTagHoldsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerTagValuesTagHoldsDelete
  where
  type Rs CloudresourcemanagerTagValuesTagHoldsDelete = Operation
  type
    Scopes CloudresourcemanagerTagValuesTagHoldsDelete =
      '[CloudPlatform'FullControl]
  requestClient CloudresourcemanagerTagValuesTagHoldsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerTagValuesTagHoldsDeleteResource
          )
          Core.mempty
