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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagValues.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TagValue as a child of the specified TagKey. If a another request with the same parameters is sent while the original request is in process the second request will receive an error. A maximum of 1000 TagValues can exist under a TagKey at any given time.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.create@.
module Gogol.ResourceManager.Cloudresourcemanager.TagValues.Create
  ( -- * Resource
    CloudresourcemanagerTagValuesCreateResource,

    -- ** Constructing a Request
    CloudresourcemanagerTagValuesCreate (..),
    newCloudresourcemanagerTagValuesCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.create@ method which the
-- 'CloudresourcemanagerTagValuesCreate' request conforms to.
type CloudresourcemanagerTagValuesCreateResource =
  "v3"
    Core.:> "tagValues"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TagValue
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a TagValue as a child of the specified TagKey. If a another request with the same parameters is sent while the original request is in process the second request will receive an error. A maximum of 1000 TagValues can exist under a TagKey at any given time.
--
-- /See:/ 'newCloudresourcemanagerTagValuesCreate' smart constructor.
data CloudresourcemanagerTagValuesCreate = CloudresourcemanagerTagValuesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TagValue,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Set as true to perform the validations necessary for creating the resource, but not actually perform the action.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagValuesCreate' with the minimum fields required to make a request.
newCloudresourcemanagerTagValuesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  TagValue ->
  CloudresourcemanagerTagValuesCreate
newCloudresourcemanagerTagValuesCreate payload =
  CloudresourcemanagerTagValuesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.GoogleRequest CloudresourcemanagerTagValuesCreate where
  type Rs CloudresourcemanagerTagValuesCreate = Operation
  type
    Scopes CloudresourcemanagerTagValuesCreate =
      '[CloudPlatform'FullControl]
  requestClient CloudresourcemanagerTagValuesCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      payload
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerTagValuesCreateResource
          )
          Core.mempty
