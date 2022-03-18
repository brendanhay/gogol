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
-- Module      : Network.Google.ServiceUsage.Services.BatchGet
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the service configurations and enabled states for a given list of services.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.batchGet@.
module Network.Google.ServiceUsage.Services.BatchGet
  ( -- * Resource
    ServiceUsageServicesBatchGetResource,

    -- ** Constructing a Request
    newServiceUsageServicesBatchGet,
    ServiceUsageServicesBatchGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.batchGet@ method which the
-- 'ServiceUsageServicesBatchGet' request conforms to.
type ServiceUsageServicesBatchGetResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "services:batchGet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "names" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BatchGetServicesResponse

-- | Returns the service configurations and enabled states for a given list of services.
--
-- /See:/ 'newServiceUsageServicesBatchGet' smart constructor.
data ServiceUsageServicesBatchGet = ServiceUsageServicesBatchGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Names of the services to retrieve. An example name would be: @projects\/123\/services\/serviceusage.googleapis.com@ where @123@ is the project number. A single request can get a maximum of 30 services at a time.
    names :: (Core.Maybe [Core.Text]),
    -- | Parent to retrieve services from. If this is set, the parent of all of the services specified in @names@ must match this field. An example name would be: @projects\/123@ where @123@ is the project number. The @BatchGetServices@ method currently only supports projects.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUsageServicesBatchGet' with the minimum fields required to make a request.
newServiceUsageServicesBatchGet ::
  -- |  Parent to retrieve services from. If this is set, the parent of all of the services specified in @names@ must match this field. An example name would be: @projects\/123@ where @123@ is the project number. The @BatchGetServices@ method currently only supports projects. See 'parent'.
  Core.Text ->
  ServiceUsageServicesBatchGet
newServiceUsageServicesBatchGet parent =
  ServiceUsageServicesBatchGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      names = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceUsageServicesBatchGet
  where
  type
    Rs ServiceUsageServicesBatchGet =
      BatchGetServicesResponse
  type
    Scopes ServiceUsageServicesBatchGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient ServiceUsageServicesBatchGet {..} =
    go
      parent
      xgafv
      accessToken
      callback
      (names Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      serviceUsageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceUsageServicesBatchGetResource
          )
          Core.mempty
