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
-- Module      : Gogol.AlertCenter.GetSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns customer-level settings.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.getSettings@.
module Gogol.AlertCenter.GetSettings
  ( -- * Resource
    AlertCenterGetSettingsResource,

    -- ** Constructing a Request
    AlertCenterGetSettings (..),
    newAlertCenterGetSettings,
  )
where

import Gogol.AlertCenter.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @alertcenter.getSettings@ method which the
-- 'AlertCenterGetSettings' request conforms to.
type AlertCenterGetSettingsResource =
  "v1beta1"
    Core.:> "settings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Settings

-- | Returns customer-level settings.
--
-- /See:/ 'newAlertCenterGetSettings' smart constructor.
data AlertCenterGetSettings = AlertCenterGetSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The unique identifier of the Google Workspace account of the customer the alert settings are associated with. The @customer_id@ must\/ have the initial \"C\" stripped (for example, @046psxkn@). Inferred from the caller identity if not provided. <https://support.google.com/cloudidentity/answer/10070793 Find your customer ID>.
    customerId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterGetSettings' with the minimum fields required to make a request.
newAlertCenterGetSettings ::
  AlertCenterGetSettings
newAlertCenterGetSettings =
  AlertCenterGetSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AlertCenterGetSettings where
  type Rs AlertCenterGetSettings = Settings
  type Scopes AlertCenterGetSettings = '[Apps'Alerts]
  requestClient AlertCenterGetSettings {..} =
    go
      xgafv
      accessToken
      callback
      customerId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      alertCenterService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AlertCenterGetSettingsResource)
          Core.mempty
