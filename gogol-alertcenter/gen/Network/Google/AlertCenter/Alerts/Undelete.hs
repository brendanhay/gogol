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
-- Module      : Network.Google.AlertCenter.Alerts.Undelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores, or \"undeletes\", an alert that was marked for deletion within the past 30 days. Attempting to undelete an alert which was marked for deletion over 30 days ago (which has been removed from the Alert Center database) or a nonexistent alert returns a @NOT_FOUND@ error. Attempting to undelete an alert which has not been marked for deletion has no effect.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.undelete@.
module Network.Google.AlertCenter.Alerts.Undelete
  ( -- * Resource
    AlertCenterAlertsUndeleteResource,

    -- ** Constructing a Request
    newAlertCenterAlertsUndelete,
    AlertCenterAlertsUndelete,
  )
where

import Network.Google.AlertCenter.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @alertcenter.alerts.undelete@ method which the
-- 'AlertCenterAlertsUndelete' request conforms to.
type AlertCenterAlertsUndeleteResource =
  "v1beta1"
    Core.:> "alerts"
    Core.:> Core.CaptureMode "alertId" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UndeleteAlertRequest
    Core.:> Core.Post '[Core.JSON] Alert

-- | Restores, or \"undeletes\", an alert that was marked for deletion within the past 30 days. Attempting to undelete an alert which was marked for deletion over 30 days ago (which has been removed from the Alert Center database) or a nonexistent alert returns a @NOT_FOUND@ error. Attempting to undelete an alert which has not been marked for deletion has no effect.
--
-- /See:/ 'newAlertCenterAlertsUndelete' smart constructor.
data AlertCenterAlertsUndelete = AlertCenterAlertsUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The identifier of the alert to undelete.
    alertId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: UndeleteAlertRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterAlertsUndelete' with the minimum fields required to make a request.
newAlertCenterAlertsUndelete ::
  -- |  Required. The identifier of the alert to undelete. See 'alertId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteAlertRequest ->
  AlertCenterAlertsUndelete
newAlertCenterAlertsUndelete alertId payload =
  AlertCenterAlertsUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      alertId = alertId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AlertCenterAlertsUndelete where
  type Rs AlertCenterAlertsUndelete = Alert
  type
    Scopes AlertCenterAlertsUndelete =
      '["https://www.googleapis.com/auth/apps.alerts"]
  requestClient AlertCenterAlertsUndelete {..} =
    go
      alertId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      alertCenterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AlertCenterAlertsUndeleteResource
          )
          Core.mempty
