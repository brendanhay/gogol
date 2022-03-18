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
-- Module      : Gogol.ServiceManagement.Services.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists managed services. Returns all public services. For authenticated users, also returns all services the calling user has \"servicemanagement.services.get\" permission for.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.list@.
module Gogol.ServiceManagement.Services.List
  ( -- * Resource
    ServiceManagementServicesListResource,

    -- ** Constructing a Request
    newServiceManagementServicesList,
    ServiceManagementServicesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.list@ method which the
-- 'ServiceManagementServicesList' request conforms to.
type ServiceManagementServicesListResource =
  "v1"
    Core.:> "services"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "consumerId" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "producerProjectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListServicesResponse

-- | Lists managed services. Returns all public services. For authenticated users, also returns all services the calling user has \"servicemanagement.services.get\" permission for.
--
-- /See:/ 'newServiceManagementServicesList' smart constructor.
data ServiceManagementServicesList = ServiceManagementServicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Include services consumed by the specified consumer. The Google Service Management implementation accepts the following forms: - project:
    consumerId :: (Core.Maybe Core.Text),
    -- | The max number of items to include in the response list. Page size is 50 if not specified. Maximum value is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Token identifying which result to start with; returned by a previous list call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Include services produced by the specified project.
    producerProjectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesList' with the minimum fields required to make a request.
newServiceManagementServicesList ::
  ServiceManagementServicesList
newServiceManagementServicesList =
  ServiceManagementServicesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      consumerId = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      producerProjectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceManagementServicesList
  where
  type
    Rs ServiceManagementServicesList =
      ListServicesResponse
  type
    Scopes ServiceManagementServicesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/service.management",
         "https://www.googleapis.com/auth/service.management.readonly"
       ]
  requestClient ServiceManagementServicesList {..} =
    go
      xgafv
      accessToken
      callback
      consumerId
      pageSize
      pageToken
      producerProjectId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      serviceManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceManagementServicesListResource
          )
          Core.mempty
