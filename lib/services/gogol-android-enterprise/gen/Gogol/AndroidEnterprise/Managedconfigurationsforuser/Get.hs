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
-- Module      : Gogol.AndroidEnterprise.Managedconfigurationsforuser.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a per-user managed configuration for an app for the specified user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.get@.
module Gogol.AndroidEnterprise.Managedconfigurationsforuser.Get
  ( -- * Resource
    AndroidEnterpriseManagedconfigurationsforuserGetResource,

    -- ** Constructing a Request
    AndroidEnterpriseManagedconfigurationsforuserGet (..),
    newAndroidEnterpriseManagedconfigurationsforuserGet,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.get@ method which the
-- 'AndroidEnterpriseManagedconfigurationsforuserGet' request conforms to.
type AndroidEnterpriseManagedconfigurationsforuserGetResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "managedConfigurationsForUser"
    Core.:> Core.Capture "managedConfigurationForUserId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ManagedConfiguration

-- | Retrieves details of a per-user managed configuration for an app for the specified user.
--
-- /See:/ 'newAndroidEnterpriseManagedconfigurationsforuserGet' smart constructor.
data AndroidEnterpriseManagedconfigurationsforuserGet = AndroidEnterpriseManagedconfigurationsforuserGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".
    managedConfigurationForUserId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseManagedconfigurationsforuserGet' with the minimum fields required to make a request.
newAndroidEnterpriseManagedconfigurationsforuserGet ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\". See 'managedConfigurationForUserId'.
  Core.Text ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseManagedconfigurationsforuserGet
newAndroidEnterpriseManagedconfigurationsforuserGet
  enterpriseId
  managedConfigurationForUserId
  userId =
    AndroidEnterpriseManagedconfigurationsforuserGet
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        enterpriseId = enterpriseId,
        managedConfigurationForUserId =
          managedConfigurationForUserId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        userId = userId
      }

instance
  Core.GoogleRequest
    AndroidEnterpriseManagedconfigurationsforuserGet
  where
  type
    Rs AndroidEnterpriseManagedconfigurationsforuserGet =
      ManagedConfiguration
  type
    Scopes AndroidEnterpriseManagedconfigurationsforuserGet =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseManagedconfigurationsforuserGet {..} =
    go
      enterpriseId
      userId
      managedConfigurationForUserId
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
                AndroidEnterpriseManagedconfigurationsforuserGetResource
          )
          Core.mempty
