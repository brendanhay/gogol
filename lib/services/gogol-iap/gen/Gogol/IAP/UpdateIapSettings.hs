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
-- Module      : Gogol.IAP.UpdateIapSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the IAP settings on a particular IAP protected resource. It replaces all fields unless the @update_mask@ is set.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.updateIapSettings@.
module Gogol.IAP.UpdateIapSettings
  ( -- * Resource
    IAPUpdateIapSettingsResource,

    -- ** Constructing a Request
    IAPUpdateIapSettings (..),
    newIAPUpdateIapSettings,
  )
where

import Gogol.IAP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iap.updateIapSettings@ method which the
-- 'IAPUpdateIapSettings' request conforms to.
type IAPUpdateIapSettingsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "iapSettings" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] IapSettings
    Core.:> Core.Patch '[Core.JSON] IapSettings

-- | Updates the IAP settings on a particular IAP protected resource. It replaces all fields unless the @update_mask@ is set.
--
-- /See:/ 'newIAPUpdateIapSettings' smart constructor.
data IAPUpdateIapSettings = IAPUpdateIapSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the IAP protected resource.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: IapSettings,
    -- | The field mask specifying which IAP settings should be updated. If omitted, then all of the settings are updated. See https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask. Note: All IAP reauth settings must always be set together, using the field mask: @iapSettings.accessSettings.reauthSettings@.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPUpdateIapSettings' with the minimum fields required to make a request.
newIAPUpdateIapSettings ::
  -- |  Required. The resource name of the IAP protected resource. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  IapSettings ->
  IAPUpdateIapSettings
newIAPUpdateIapSettings name payload =
  IAPUpdateIapSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest IAPUpdateIapSettings where
  type Rs IAPUpdateIapSettings = IapSettings
  type
    Scopes IAPUpdateIapSettings =
      '[CloudPlatform'FullControl]
  requestClient IAPUpdateIapSettings {..} =
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
      iAPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAPUpdateIapSettingsResource
          )
          Core.mempty
