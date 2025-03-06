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
-- Module      : Gogol.AndroidEnterprise.Users.RevokeDeviceAccess
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes access to all devices currently provisioned to the user. The user will no longer be able to use the managed Play store on any of their managed devices. This call only works with EMM-managed accounts.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.revokeDeviceAccess@.
module Gogol.AndroidEnterprise.Users.RevokeDeviceAccess
  ( -- * Resource
    AndroidEnterpriseUsersRevokeDeviceAccessResource,

    -- ** Constructing a Request
    AndroidEnterpriseUsersRevokeDeviceAccess (..),
    newAndroidEnterpriseUsersRevokeDeviceAccess,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.users.revokeDeviceAccess@ method which the
-- 'AndroidEnterpriseUsersRevokeDeviceAccess' request conforms to.
type AndroidEnterpriseUsersRevokeDeviceAccessResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "deviceAccess"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Revokes access to all devices currently provisioned to the user. The user will no longer be able to use the managed Play store on any of their managed devices. This call only works with EMM-managed accounts.
--
-- /See:/ 'newAndroidEnterpriseUsersRevokeDeviceAccess' smart constructor.
data AndroidEnterpriseUsersRevokeDeviceAccess = AndroidEnterpriseUsersRevokeDeviceAccess
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseUsersRevokeDeviceAccess' with the minimum fields required to make a request.
newAndroidEnterpriseUsersRevokeDeviceAccess ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseUsersRevokeDeviceAccess
newAndroidEnterpriseUsersRevokeDeviceAccess enterpriseId userId =
  AndroidEnterpriseUsersRevokeDeviceAccess
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseUsersRevokeDeviceAccess
  where
  type Rs AndroidEnterpriseUsersRevokeDeviceAccess = ()
  type
    Scopes AndroidEnterpriseUsersRevokeDeviceAccess =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseUsersRevokeDeviceAccess {..} =
    go
      enterpriseId
      userId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidEnterpriseUsersRevokeDeviceAccessResource
          )
          Core.mempty
