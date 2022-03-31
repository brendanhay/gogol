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
-- Module      : Gogol.CloudIdentity.Groups.UpdateSecuritySettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update Security Settings
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.updateSecuritySettings@.
module Gogol.CloudIdentity.Groups.UpdateSecuritySettings
  ( -- * Resource
    CloudIdentityGroupsUpdateSecuritySettingsResource,

    -- ** Constructing a Request
    newCloudIdentityGroupsUpdateSecuritySettings,
    CloudIdentityGroupsUpdateSecuritySettings,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.groups.updateSecuritySettings@ method which the
-- 'CloudIdentityGroupsUpdateSecuritySettings' request conforms to.
type CloudIdentityGroupsUpdateSecuritySettingsResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SecuritySettings
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Update Security Settings
--
-- /See:/ 'newCloudIdentityGroupsUpdateSecuritySettings' smart constructor.
data CloudIdentityGroupsUpdateSecuritySettings = CloudIdentityGroupsUpdateSecuritySettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the security settings. Shall be of the form @groups\/{group_id}\/securitySettings@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SecuritySettings,
    -- | Required. The fully-qualified names of fields to update. May only contain the following field: @member_restriction.query@.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityGroupsUpdateSecuritySettings' with the minimum fields required to make a request.
newCloudIdentityGroupsUpdateSecuritySettings ::
  -- |  Output only. The resource name of the security settings. Shall be of the form @groups\/{group_id}\/securitySettings@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SecuritySettings ->
  CloudIdentityGroupsUpdateSecuritySettings
newCloudIdentityGroupsUpdateSecuritySettings name payload =
  CloudIdentityGroupsUpdateSecuritySettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityGroupsUpdateSecuritySettings
  where
  type
    Rs CloudIdentityGroupsUpdateSecuritySettings =
      Operation
  type
    Scopes CloudIdentityGroupsUpdateSecuritySettings =
      '[CloudIdentity'Groups, CloudPlatform'FullControl]
  requestClient
    CloudIdentityGroupsUpdateSecuritySettings {..} =
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
            ( Core.Proxy ::
                Core.Proxy
                  CloudIdentityGroupsUpdateSecuritySettingsResource
            )
            Core.mempty
