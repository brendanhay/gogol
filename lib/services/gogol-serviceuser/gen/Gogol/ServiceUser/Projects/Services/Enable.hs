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
-- Module      : Gogol.ServiceUser.Projects.Services.Enable
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable a service so it can be used with a project. See <https://cloud.google.com/docs/authentication Cloud Auth Guide> for more information.
--
-- Operation\<response: google.protobuf.Empty>
--
-- /See:/ <https://cloud.google.com/service-management/ Service User API Reference> for @serviceuser.projects.services.enable@.
module Gogol.ServiceUser.Projects.Services.Enable
  ( -- * Resource
    ServiceUserProjectsServicesEnableResource,

    -- ** Constructing a Request
    ServiceUserProjectsServicesEnable (..),
    newServiceUserProjectsServicesEnable,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceUser.Types

-- | A resource alias for @serviceuser.projects.services.enable@ method which the
-- 'ServiceUserProjectsServicesEnable' request conforms to.
type ServiceUserProjectsServicesEnableResource =
  "v1"
    Core.:> Core.CaptureMode "name" "enable" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EnableServiceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Enable a service so it can be used with a project. See <https://cloud.google.com/docs/authentication Cloud Auth Guide> for more information.
--
-- Operation\<response: google.protobuf.Empty>
--
-- /See:/ 'newServiceUserProjectsServicesEnable' smart constructor.
data ServiceUserProjectsServicesEnable = ServiceUserProjectsServicesEnable
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the consumer and the service to enable for that consumer.
    --
    -- A valid path would be: - projects\/my-project\/services\/servicemanagement.googleapis.com
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: EnableServiceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUserProjectsServicesEnable' with the minimum fields required to make a request.
newServiceUserProjectsServicesEnable ::
  -- |  Name of the consumer and the service to enable for that consumer.
  --
  -- A valid path would be: - projects\/my-project\/services\/servicemanagement.googleapis.com See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EnableServiceRequest ->
  ServiceUserProjectsServicesEnable
newServiceUserProjectsServicesEnable name payload =
  ServiceUserProjectsServicesEnable
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ServiceUserProjectsServicesEnable where
  type Rs ServiceUserProjectsServicesEnable = Operation
  type
    Scopes ServiceUserProjectsServicesEnable =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient ServiceUserProjectsServicesEnable {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      serviceUserService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceUserProjectsServicesEnableResource
          )
          Core.mempty
