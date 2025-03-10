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
-- Module      : Gogol.AlertCenter.Alerts.BatchUndelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs batch undelete operation on alerts.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.batchUndelete@.
module Gogol.AlertCenter.Alerts.BatchUndelete
  ( -- * Resource
    AlertCenterAlertsBatchUndeleteResource,

    -- ** Constructing a Request
    AlertCenterAlertsBatchUndelete (..),
    newAlertCenterAlertsBatchUndelete,
  )
where

import Gogol.AlertCenter.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @alertcenter.alerts.batchUndelete@ method which the
-- 'AlertCenterAlertsBatchUndelete' request conforms to.
type AlertCenterAlertsBatchUndeleteResource =
  "v1beta1"
    Core.:> "alerts:batchUndelete"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchUndeleteAlertsRequest
    Core.:> Core.Post '[Core.JSON] BatchUndeleteAlertsResponse

-- | Performs batch undelete operation on alerts.
--
-- /See:/ 'newAlertCenterAlertsBatchUndelete' smart constructor.
data AlertCenterAlertsBatchUndelete = AlertCenterAlertsBatchUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchUndeleteAlertsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterAlertsBatchUndelete' with the minimum fields required to make a request.
newAlertCenterAlertsBatchUndelete ::
  -- |  Multipart request metadata. See 'payload'.
  BatchUndeleteAlertsRequest ->
  AlertCenterAlertsBatchUndelete
newAlertCenterAlertsBatchUndelete payload =
  AlertCenterAlertsBatchUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AlertCenterAlertsBatchUndelete where
  type
    Rs AlertCenterAlertsBatchUndelete =
      BatchUndeleteAlertsResponse
  type Scopes AlertCenterAlertsBatchUndelete = '[Apps'Alerts]
  requestClient AlertCenterAlertsBatchUndelete {..} =
    go
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
          (Core.Proxy :: Core.Proxy AlertCenterAlertsBatchUndeleteResource)
          Core.mempty
