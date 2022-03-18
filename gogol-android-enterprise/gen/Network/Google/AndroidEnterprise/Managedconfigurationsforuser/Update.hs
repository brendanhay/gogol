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
-- Module      : Network.Google.AndroidEnterprise.Managedconfigurationsforuser.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates the managed configuration settings for an app for the specified user. If you support the Managed configurations iframe, you can apply managed configurations to a user by specifying an mcmId and its associated configuration variables (if any) in the request. Alternatively, all EMMs can apply managed configurations by passing a list of managed properties.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.update@.
module Network.Google.AndroidEnterprise.Managedconfigurationsforuser.Update
  ( -- * Resource
    AndroidEnterpriseManagedconfigurationsforuserUpdateResource,

    -- ** Constructing a Request
    newAndroidEnterpriseManagedconfigurationsforuserUpdate,
    AndroidEnterpriseManagedconfigurationsforuserUpdate,
  )
where

import Network.Google.AndroidEnterprise.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.update@ method which the
-- 'AndroidEnterpriseManagedconfigurationsforuserUpdate' request conforms to.
type AndroidEnterpriseManagedconfigurationsforuserUpdateResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "managedConfigurationsForUser"
    Core.:> Core.Capture
              "managedConfigurationForUserId"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ManagedConfiguration
    Core.:> Core.Put '[Core.JSON] ManagedConfiguration

-- | Adds or updates the managed configuration settings for an app for the specified user. If you support the Managed configurations iframe, you can apply managed configurations to a user by specifying an mcmId and its associated configuration variables (if any) in the request. Alternatively, all EMMs can apply managed configurations by passing a list of managed properties.
--
-- /See:/ 'newAndroidEnterpriseManagedconfigurationsforuserUpdate' smart constructor.
data AndroidEnterpriseManagedconfigurationsforuserUpdate = AndroidEnterpriseManagedconfigurationsforuserUpdate
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
    -- | Multipart request metadata.
    payload :: ManagedConfiguration,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseManagedconfigurationsforuserUpdate' with the minimum fields required to make a request.
newAndroidEnterpriseManagedconfigurationsforuserUpdate ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\". See 'managedConfigurationForUserId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ManagedConfiguration ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseManagedconfigurationsforuserUpdate
newAndroidEnterpriseManagedconfigurationsforuserUpdate enterpriseId managedConfigurationForUserId payload userId =
  AndroidEnterpriseManagedconfigurationsforuserUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      managedConfigurationForUserId = managedConfigurationForUserId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseManagedconfigurationsforuserUpdate
  where
  type
    Rs
      AndroidEnterpriseManagedconfigurationsforuserUpdate =
      ManagedConfiguration
  type
    Scopes
      AndroidEnterpriseManagedconfigurationsforuserUpdate =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient
    AndroidEnterpriseManagedconfigurationsforuserUpdate {..} =
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
        payload
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseManagedconfigurationsforuserUpdateResource
            )
            Core.mempty
