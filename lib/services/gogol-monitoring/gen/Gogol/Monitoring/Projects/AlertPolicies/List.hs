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
-- Module      : Gogol.Monitoring.Projects.AlertPolicies.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing alerting policies for the workspace.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.alertPolicies.list@.
module Gogol.Monitoring.Projects.AlertPolicies.List
  ( -- * Resource
    MonitoringProjectsAlertPoliciesListResource,

    -- ** Constructing a Request
    MonitoringProjectsAlertPoliciesList (..),
    newMonitoringProjectsAlertPoliciesList,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.alertPolicies.list@ method which the
-- 'MonitoringProjectsAlertPoliciesList' request conforms to.
type MonitoringProjectsAlertPoliciesListResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "alertPolicies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAlertPoliciesResponse

-- | Lists the existing alerting policies for the workspace.
--
-- /See:/ 'newMonitoringProjectsAlertPoliciesList' smart constructor.
data MonitoringProjectsAlertPoliciesList = MonitoringProjectsAlertPoliciesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. If provided, this field specifies the criteria that must be met by alert policies to be included in the response.For more details, see sorting and filtering (https:\/\/cloud.google.com\/monitoring\/api\/v3\/sorting-and-filtering).
    filter :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) whose alert policies are to be listed. The format is: projects\/[PROJECT/ID/OR/NUMBER] Note that this field names the parent container in which the alerting policies to be listed are stored. To retrieve a single alerting policy by name, use the GetAlertPolicy operation, instead.
    name :: Core.Text,
    -- | Optional. A comma-separated list of fields by which to sort the result. Supports the same set of field references as the filter field. Entries can be prefixed with a minus sign to sort by the field in descending order.For more details, see sorting and filtering (https:\/\/cloud.google.com\/monitoring\/api\/v3\/sorting-and-filtering).
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return in a single response.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return more results from the previous method call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsAlertPoliciesList' with the minimum fields required to make a request.
newMonitoringProjectsAlertPoliciesList ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) whose alert policies are to be listed. The format is: projects\/[PROJECT/ID/OR/NUMBER] Note that this field names the parent container in which the alerting policies to be listed are stored. To retrieve a single alerting policy by name, use the GetAlertPolicy operation, instead. See 'name'.
  Core.Text ->
  MonitoringProjectsAlertPoliciesList
newMonitoringProjectsAlertPoliciesList name =
  MonitoringProjectsAlertPoliciesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsAlertPoliciesList where
  type
    Rs MonitoringProjectsAlertPoliciesList =
      ListAlertPoliciesResponse
  type
    Scopes MonitoringProjectsAlertPoliciesList =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read
       ]
  requestClient MonitoringProjectsAlertPoliciesList {..} =
    go
      name
      xgafv
      accessToken
      callback
      filter
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      monitoringService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MonitoringProjectsAlertPoliciesListResource
          )
          Core.mempty
