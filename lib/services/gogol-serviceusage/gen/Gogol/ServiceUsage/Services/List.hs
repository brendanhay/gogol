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
-- Module      : Gogol.ServiceUsage.Services.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all services available to the specified project, and the current state of those services with respect to the project. The list includes all public services, all services for which the calling user has the @servicemanagement.services.bind@ permission, and all services that have already been enabled on the project. The list can be filtered to only include services in a specific state, for example to only include services enabled on the project. WARNING: If you need to query enabled services frequently or across an organization, you should use <https://cloud.google.com/asset-inventory/docs/apis Cloud Asset Inventory API>, which provides higher throughput and richer filtering capability.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.list@.
module Gogol.ServiceUsage.Services.List
  ( -- * Resource
    ServiceUsageServicesListResource,

    -- ** Constructing a Request
    ServiceUsageServicesList (..),
    newServiceUsageServicesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.list@ method which the
-- 'ServiceUsageServicesList' request conforms to.
type ServiceUsageServicesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "services"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListServicesResponse

-- | List all services available to the specified project, and the current state of those services with respect to the project. The list includes all public services, all services for which the calling user has the @servicemanagement.services.bind@ permission, and all services that have already been enabled on the project. The list can be filtered to only include services in a specific state, for example to only include services enabled on the project. WARNING: If you need to query enabled services frequently or across an organization, you should use <https://cloud.google.com/asset-inventory/docs/apis Cloud Asset Inventory API>, which provides higher throughput and richer filtering capability.
--
-- /See:/ 'newServiceUsageServicesList' smart constructor.
data ServiceUsageServicesList = ServiceUsageServicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Only list services that conform to the given filter. The allowed filter strings are @state:ENABLED@ and @state:DISABLED@.
    filter :: (Core.Maybe Core.Text),
    -- | Requested size of the next page of data. Requested page size cannot exceed 200. If not set, the default page size is 50.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Token identifying which result to start with, which is returned by a previous list call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Parent to search for services on. An example name would be: @projects\/123@ where @123@ is the project number.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUsageServicesList' with the minimum fields required to make a request.
newServiceUsageServicesList ::
  -- |  Parent to search for services on. An example name would be: @projects\/123@ where @123@ is the project number. See 'parent'.
  Core.Text ->
  ServiceUsageServicesList
newServiceUsageServicesList parent =
  ServiceUsageServicesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ServiceUsageServicesList where
  type
    Rs ServiceUsageServicesList =
      ListServicesResponse
  type
    Scopes ServiceUsageServicesList =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient ServiceUsageServicesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      serviceUsageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceUsageServicesListResource
          )
          Core.mempty
