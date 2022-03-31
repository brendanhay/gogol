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
-- Module      : Gogol.ServiceUsage.Services.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the service configuration and enabled state for a given service.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.get@.
module Gogol.ServiceUsage.Services.Get
  ( -- * Resource
    ServiceUsageServicesGetResource,

    -- ** Constructing a Request
    newServiceUsageServicesGet,
    ServiceUsageServicesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.get@ method which the
-- 'ServiceUsageServicesGet' request conforms to.
type ServiceUsageServicesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleApiServiceusageV1Service

-- | Returns the service configuration and enabled state for a given service.
--
-- /See:/ 'newServiceUsageServicesGet' smart constructor.
data ServiceUsageServicesGet = ServiceUsageServicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the consumer and service to get the @ConsumerState@ for. An example name would be: @projects\/123\/services\/serviceusage.googleapis.com@ where @123@ is the project number.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUsageServicesGet' with the minimum fields required to make a request.
newServiceUsageServicesGet ::
  -- |  Name of the consumer and service to get the @ConsumerState@ for. An example name would be: @projects\/123\/services\/serviceusage.googleapis.com@ where @123@ is the project number. See 'name'.
  Core.Text ->
  ServiceUsageServicesGet
newServiceUsageServicesGet name =
  ServiceUsageServicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ServiceUsageServicesGet where
  type
    Rs ServiceUsageServicesGet =
      GoogleApiServiceusageV1Service
  type
    Scopes ServiceUsageServicesGet =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient ServiceUsageServicesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      serviceUsageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceUsageServicesGetResource
          )
          Core.mempty
