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
-- Module      : Gogol.CloudIdentity.Groups.GetSecuritySettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get Security Settings
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.getSecuritySettings@.
module Gogol.CloudIdentity.Groups.GetSecuritySettings
  ( -- * Resource
    CloudIdentityGroupsGetSecuritySettingsResource,

    -- ** Constructing a Request
    CloudIdentityGroupsGetSecuritySettings (..),
    newCloudIdentityGroupsGetSecuritySettings,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.groups.getSecuritySettings@ method which the
-- 'CloudIdentityGroupsGetSecuritySettings' request conforms to.
type CloudIdentityGroupsGetSecuritySettingsResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "readMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SecuritySettings

-- | Get Security Settings
--
-- /See:/ 'newCloudIdentityGroupsGetSecuritySettings' smart constructor.
data CloudIdentityGroupsGetSecuritySettings = CloudIdentityGroupsGetSecuritySettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The security settings to retrieve. Format: @groups\/{group_id}\/securitySettings@
    name :: Core.Text,
    -- | Field-level read mask of which fields to return. \"*\" returns all fields. If not specified, all fields will be returned. May only contain the following field: @member_restriction@.
    readMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsGetSecuritySettings' with the minimum fields required to make a request.
newCloudIdentityGroupsGetSecuritySettings ::
  -- |  Required. The security settings to retrieve. Format: @groups\/{group_id}\/securitySettings@ See 'name'.
  Core.Text ->
  CloudIdentityGroupsGetSecuritySettings
newCloudIdentityGroupsGetSecuritySettings name =
  CloudIdentityGroupsGetSecuritySettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      readMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityGroupsGetSecuritySettings where
  type Rs CloudIdentityGroupsGetSecuritySettings = SecuritySettings
  type
    Scopes CloudIdentityGroupsGetSecuritySettings =
      '[ CloudIdentity'Groups,
         CloudIdentity'Groups'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient CloudIdentityGroupsGetSecuritySettings {..} =
    go
      name
      xgafv
      accessToken
      callback
      readMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityGroupsGetSecuritySettingsResource
          )
          Core.mempty
