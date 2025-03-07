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
-- Module      : Gogol.ServiceConsumerManagement.Services.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search tenancy units for a managed service.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.search@.
module Gogol.ServiceConsumerManagement.Services.Search
  ( -- * Resource
    ServiceConsumerManagementServicesSearchResource,

    -- ** Constructing a Request
    ServiceConsumerManagementServicesSearch (..),
    newServiceConsumerManagementServicesSearch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.search@ method which the
-- 'ServiceConsumerManagementServicesSearch' request conforms to.
type ServiceConsumerManagementServicesSearchResource =
  "v1"
    Core.:> Core.CaptureMode "parent" "search" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchTenancyUnitsResponse

-- | Search tenancy units for a managed service.
--
-- /See:/ 'newServiceConsumerManagementServicesSearch' smart constructor.
data ServiceConsumerManagementServicesSearch = ServiceConsumerManagementServicesSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results returned by this request. Currently, the default maximum is set to 1000. If @page_size@ isn\'t provided or the size provided is a number larger than 1000, it\'s automatically set to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of @nextPageToken@ from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Service for which search is performed. services\/{service} {service} the name of a service, for example \'service.googleapis.com\'.
    parent :: Core.Text,
    -- | Optional. Set a query @{expression}@ for querying tenancy units. Your @{expression}@ must be in the format: @field_name=literal_string@. The @field_name@ is the name of the field you want to compare. Supported fields are @tenant_resources.tag@ and @tenant_resources.resource@. For example, to search tenancy units that contain at least one tenant resource with a given tag \'xyz\', use the query @tenant_resources.tag=xyz@. To search tenancy units that contain at least one tenant resource with a given resource name \'projects\/123456\', use the query @tenant_resources.resource=projects\/123456@. Multiple expressions can be joined with @AND@s. Tenancy units must match all expressions to be included in the result set. For example, @tenant_resources.tag=xyz AND tenant_resources.resource=projects\/123456@
    query :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesSearch' with the minimum fields required to make a request.
newServiceConsumerManagementServicesSearch ::
  -- |  Required. Service for which search is performed. services\/{service} {service} the name of a service, for example \'service.googleapis.com\'. See 'parent'.
  Core.Text ->
  ServiceConsumerManagementServicesSearch
newServiceConsumerManagementServicesSearch parent =
  ServiceConsumerManagementServicesSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      query = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ServiceConsumerManagementServicesSearch where
  type
    Rs ServiceConsumerManagementServicesSearch =
      SearchTenancyUnitsResponse
  type
    Scopes ServiceConsumerManagementServicesSearch =
      '[CloudPlatform'FullControl]
  requestClient ServiceConsumerManagementServicesSearch {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      query
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      serviceConsumerManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceConsumerManagementServicesSearchResource
          )
          Core.mempty
