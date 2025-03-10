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
-- Module      : Gogol.Admin.Reports.CustomerUsageReports.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report which is a collection of properties and statistics for a specific customer\'s account. For more information, see the Customers Usage Report guide. For more information about the customer report\'s parameters, see the Customers Usage parameters reference guides.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.customerUsageReports.get@.
module Gogol.Admin.Reports.CustomerUsageReports.Get
  ( -- * Resource
    ReportsCustomerUsageReportsGetResource,

    -- ** Constructing a Request
    ReportsCustomerUsageReportsGet (..),
    newReportsCustomerUsageReportsGet,
  )
where

import Gogol.Admin.Reports.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @reports.customerUsageReports.get@ method which the
-- 'ReportsCustomerUsageReportsGet' request conforms to.
type ReportsCustomerUsageReportsGetResource =
  "admin"
    Core.:> "reports"
    Core.:> "v1"
    Core.:> "usage"
    Core.:> "dates"
    Core.:> Core.Capture "date" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parameters" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UsageReports

-- | Retrieves a report which is a collection of properties and statistics for a specific customer\'s account. For more information, see the Customers Usage Report guide. For more information about the customer report\'s parameters, see the Customers Usage parameters reference guides.
--
-- /See:/ 'newReportsCustomerUsageReportsGet' smart constructor.
data ReportsCustomerUsageReportsGet = ReportsCustomerUsageReportsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID of the customer to retrieve data for.
    customerId :: (Core.Maybe Core.Text),
    -- | Represents the date the usage occurred, based on UTC-8:00 (Pacific Standard Time). The timestamp is in the <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601 format>, @yyyy-mm-dd@.
    date :: Core.Text,
    -- | Token to specify next page. A report with multiple pages has a @nextPageToken@ property in the response. For your follow-on requests getting all of the report\'s pages, enter the @nextPageToken@ value in the @pageToken@ query string.
    pageToken :: (Core.Maybe Core.Text),
    -- | The @parameters@ query string is a comma-separated list of event parameters that refine a report\'s results. The parameter is associated with a specific application. The application values for the Customers usage report include @accounts@, @app_maker@, @apps_scripts@, @calendar@, @classroom@, @cros@, @docs@, @gmail@, @gplus@, @device_management@, @meet@, and @sites@. A @parameters@ query string is in the CSV form of @app_name1:param_name1, app_name2:param_name2@. /Note:/ The API doesn\'t accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters. An example of an invalid request parameter is one that does not belong to the application. If no parameters are requested, all parameters are returned.
    parameters :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportsCustomerUsageReportsGet' with the minimum fields required to make a request.
newReportsCustomerUsageReportsGet ::
  -- |  Represents the date the usage occurred, based on UTC-8:00 (Pacific Standard Time). The timestamp is in the <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601 format>, @yyyy-mm-dd@. See 'date'.
  Core.Text ->
  ReportsCustomerUsageReportsGet
newReportsCustomerUsageReportsGet date =
  ReportsCustomerUsageReportsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = Core.Nothing,
      date = date,
      pageToken = Core.Nothing,
      parameters = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ReportsCustomerUsageReportsGet where
  type Rs ReportsCustomerUsageReportsGet = UsageReports
  type
    Scopes ReportsCustomerUsageReportsGet =
      '[Admin'Reports'Usage'Readonly]
  requestClient ReportsCustomerUsageReportsGet {..} =
    go
      date
      xgafv
      accessToken
      callback
      customerId
      pageToken
      parameters
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminReportsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ReportsCustomerUsageReportsGetResource)
          Core.mempty
