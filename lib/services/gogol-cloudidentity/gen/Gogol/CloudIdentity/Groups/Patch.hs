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
-- Module      : Gogol.CloudIdentity.Groups.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @Group@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.patch@.
module Gogol.CloudIdentity.Groups.Patch
  ( -- * Resource
    CloudIdentityGroupsPatchResource,

    -- ** Constructing a Request
    CloudIdentityGroupsPatch (..),
    newCloudIdentityGroupsPatch,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.groups.patch@ method which the
-- 'CloudIdentityGroupsPatch' request conforms to.
type CloudIdentityGroupsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Group
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a @Group@.
--
-- /See:/ 'newCloudIdentityGroupsPatch' smart constructor.
data CloudIdentityGroupsPatch = CloudIdentityGroupsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@. Shall be of the form @groups\/{group}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Group,
    -- | Required. The names of fields to update. May only contain the following field names: @display_name@, @description@, @labels@.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsPatch' with the minimum fields required to make a request.
newCloudIdentityGroupsPatch ::
  -- |  Output only. The <https://cloud.google.com/apis/design/resource_names resource name> of the @Group@. Shall be of the form @groups\/{group}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Group ->
  CloudIdentityGroupsPatch
newCloudIdentityGroupsPatch name payload =
  CloudIdentityGroupsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsPatch where
  type Rs CloudIdentityGroupsPatch = Operation
  type
    Scopes CloudIdentityGroupsPatch =
      '[CloudIdentity'Groups, CloudPlatform'FullControl]
  requestClient CloudIdentityGroupsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudIdentityService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudIdentityGroupsPatchResource)
          Core.mempty
