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
-- Module      : Gogol.AlertCenter.Alerts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the alerts.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.list@.
module Gogol.AlertCenter.Alerts.List
  ( -- * Resource
    AlertCenterAlertsListResource,

    -- ** Constructing a Request
    AlertCenterAlertsList (..),
    newAlertCenterAlertsList,
  )
where

import Gogol.AlertCenter.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @alertcenter.alerts.list@ method which the
-- 'AlertCenterAlertsList' request conforms to.
type AlertCenterAlertsListResource =
  "v1beta1"
    Core.:> "alerts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAlertsResponse

-- | Lists the alerts.
--
-- /See:/ 'newAlertCenterAlertsList' smart constructor.
data AlertCenterAlertsList = AlertCenterAlertsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The unique identifier of the Google Workspace account of the customer the alerts are associated with. The @customer_id@ must have the initial \"C\" stripped (for example, @046psxkn@). Inferred from the caller identity if not provided. <https://support.google.com/cloudidentity/answer/10070793 Find your customer ID>.
    customerId :: (Core.Maybe Core.Text),
    -- | Optional. A query string for filtering alert results. For more details, see <https://developers.google.com/admin-sdk/alertcenter/guides/query-filters Query filters> and <https://developers.google.com/admin-sdk/alertcenter/reference/filter-fields#alerts.list Supported query filter fields>.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The sort order of the list results. If not specified results may be returned in arbitrary order. You can sort the results in descending order based on the creation timestamp using @order_by=\"create_time desc\"@. Currently, supported sorting are @create_time asc@, @create_time desc@, @update_time desc@
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The requested page size. Server may return fewer items than requested. If unspecified, server picks an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A token identifying a page of results the server should return. If empty, a new iteration is started. To continue an iteration, pass in the value from the previous ListAlertsResponse\'s next/page/token field.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterAlertsList' with the minimum fields required to make a request.
newAlertCenterAlertsList ::
  AlertCenterAlertsList
newAlertCenterAlertsList =
  AlertCenterAlertsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AlertCenterAlertsList where
  type Rs AlertCenterAlertsList = ListAlertsResponse
  type Scopes AlertCenterAlertsList = '[Apps'Alerts]
  requestClient AlertCenterAlertsList {..} =
    go
      xgafv
      accessToken
      callback
      customerId
      filter
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      alertCenterService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AlertCenterAlertsListResource)
          Core.mempty
