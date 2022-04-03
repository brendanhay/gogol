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
-- Module      : Gogol.ServiceManagement.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists service operations that match the specified filter in the request.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.operations.list@.
module Gogol.ServiceManagement.Operations.List
  ( -- * Resource
    ServiceManagementOperationsListResource,

    -- ** Constructing a Request
    ServiceManagementOperationsList (..),
    newServiceManagementOperationsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.operations.list@ method which the
-- 'ServiceManagementOperationsList' request conforms to.
type ServiceManagementOperationsListResource =
  "v1"
    Core.:> "operations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists service operations that match the specified filter in the request.
--
-- /See:/ 'newServiceManagementOperationsList' smart constructor.
data ServiceManagementOperationsList = ServiceManagementOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A string for filtering Operations. The following filter fields are supported: * serviceName: Required. Only @=@ operator is allowed. * startTime: The time this job was started, in ISO 8601 format. Allowed operators are @>=@, @>@, @\<=@, and @\<@. * status: Can be @done@, @in_progress@, or @failed@. Allowed operators are @=@, and @!=@. Filter expression supports conjunction (AND) and disjunction (OR) logical operators. However, the serviceName restriction must be at the top-level and can only be combined with other restrictions via the AND logical operator. Examples: * @serviceName={some-service}.googleapis.com@ * @serviceName={some-service}.googleapis.com AND startTime>=\"2017-02-01\"@ * @serviceName={some-service}.googleapis.com AND status=done@ * @serviceName={some-service}.googleapis.com AND (status=done OR startTime>=\"2017-02-01\")@
    filter :: (Core.Maybe Core.Text),
    -- | Not used.
    name :: (Core.Maybe Core.Text),
    -- | The maximum number of operations to return. If unspecified, defaults to 50. The maximum value is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The standard list page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementOperationsList' with the minimum fields required to make a request.
newServiceManagementOperationsList ::
  ServiceManagementOperationsList
newServiceManagementOperationsList =
  ServiceManagementOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceManagementOperationsList
  where
  type
    Rs ServiceManagementOperationsList =
      ListOperationsResponse
  type
    Scopes ServiceManagementOperationsList =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient ServiceManagementOperationsList {..} =
    go
      xgafv
      accessToken
      callback
      filter
      name
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      serviceManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceManagementOperationsListResource
          )
          Core.mempty
