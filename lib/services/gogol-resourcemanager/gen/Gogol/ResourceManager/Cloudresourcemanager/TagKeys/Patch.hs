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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.TagKeys.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the attributes of the TagKey resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.patch@.
module Gogol.ResourceManager.Cloudresourcemanager.TagKeys.Patch
  ( -- * Resource
    CloudresourcemanagerTagKeysPatchResource,

    -- ** Constructing a Request
    newCloudresourcemanagerTagKeysPatch,
    CloudresourcemanagerTagKeysPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.patch@ method which the
-- 'CloudresourcemanagerTagKeysPatch' request conforms to.
type CloudresourcemanagerTagKeysPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TagKey
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the attributes of the TagKey resource.
--
-- /See:/ 'newCloudresourcemanagerTagKeysPatch' smart constructor.
data CloudresourcemanagerTagKeysPatch = CloudresourcemanagerTagKeysPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable. The resource name for a TagKey. Must be in the format @tagKeys\/{tag_key_id}@, where @tag_key_id@ is the generated numeric id for the TagKey.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: TagKey,
    -- | Fields to be updated. The mask may only contain @description@ or @etag@. If omitted entirely, both @description@ and @etag@ are assumed to be significant.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Set as true to perform validations necessary for updating the resource, but not actually perform the action.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerTagKeysPatch' with the minimum fields required to make a request.
newCloudresourcemanagerTagKeysPatch ::
  -- |  Immutable. The resource name for a TagKey. Must be in the format @tagKeys\/{tag_key_id}@, where @tag_key_id@ is the generated numeric id for the TagKey. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TagKey ->
  CloudresourcemanagerTagKeysPatch
newCloudresourcemanagerTagKeysPatch name payload =
  CloudresourcemanagerTagKeysPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerTagKeysPatch
  where
  type Rs CloudresourcemanagerTagKeysPatch = Operation
  type
    Scopes CloudresourcemanagerTagKeysPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudresourcemanagerTagKeysPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
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
              Core.Proxy CloudresourcemanagerTagKeysPatchResource
          )
          Core.mempty
