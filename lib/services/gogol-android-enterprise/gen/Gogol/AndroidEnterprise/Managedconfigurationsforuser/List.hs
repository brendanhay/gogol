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
-- Module      : Gogol.AndroidEnterprise.Managedconfigurationsforuser.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the per-user managed configurations for the specified user. Only the ID is set.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.list@.
module Gogol.AndroidEnterprise.Managedconfigurationsforuser.List
  ( -- * Resource
    AndroidEnterpriseManagedconfigurationsforuserListResource,

    -- ** Constructing a Request
    AndroidEnterpriseManagedconfigurationsforuserList (..),
    newAndroidEnterpriseManagedconfigurationsforuserList,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.list@ method which the
-- 'AndroidEnterpriseManagedconfigurationsforuserList' request conforms to.
type AndroidEnterpriseManagedconfigurationsforuserListResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "managedConfigurationsForUser"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ManagedConfigurationsForUserListResponse

-- | Lists all the per-user managed configurations for the specified user. Only the ID is set.
--
-- /See:/ 'newAndroidEnterpriseManagedconfigurationsforuserList' smart constructor.
data AndroidEnterpriseManagedconfigurationsforuserList = AndroidEnterpriseManagedconfigurationsforuserList
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

-- | Creates a value of 'AndroidEnterpriseManagedconfigurationsforuserList' with the minimum fields required to make a request.
newAndroidEnterpriseManagedconfigurationsforuserList ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseManagedconfigurationsforuserList
newAndroidEnterpriseManagedconfigurationsforuserList
  enterpriseId
  userId =
    AndroidEnterpriseManagedconfigurationsforuserList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        enterpriseId = enterpriseId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        userId = userId
      }

instance
  Core.GoogleRequest
    AndroidEnterpriseManagedconfigurationsforuserList
  where
  type
    Rs AndroidEnterpriseManagedconfigurationsforuserList =
      ManagedConfigurationsForUserListResponse
  type
    Scopes AndroidEnterpriseManagedconfigurationsforuserList =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseManagedconfigurationsforuserList {..} =
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
              Core.Proxy
                AndroidEnterpriseManagedconfigurationsforuserListResource
          )
          Core.mempty
