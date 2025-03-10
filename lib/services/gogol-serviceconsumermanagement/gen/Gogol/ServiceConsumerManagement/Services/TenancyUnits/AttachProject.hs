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
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.AttachProject
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attach an existing project to the tenancy unit as a new tenant resource. The project could either be the tenant project reserved by calling @AddTenantProject@ under a tenancy unit of a service producer\'s project of a managed service, or from a separate project. The caller is checked against a set of permissions as if calling @AddTenantProject@ on the same service consumer. To trigger the attachment, the targeted tenant project must be in a folder. Make sure the ServiceConsumerManagement service account is the owner of that project. These two requirements are already met if the project is reserved by calling @AddTenantProject@. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.attachProject@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.AttachProject
  ( -- * Resource
    ServiceConsumerManagementServicesTenancyUnitsAttachProjectResource,

    -- ** Constructing a Request
    ServiceConsumerManagementServicesTenancyUnitsAttachProject (..),
    newServiceConsumerManagementServicesTenancyUnitsAttachProject,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.attachProject@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsAttachProject' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsAttachProjectResource =
  "v1"
    Core.:> Core.CaptureMode "name" "attachProject" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AttachTenantProjectRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Attach an existing project to the tenancy unit as a new tenant resource. The project could either be the tenant project reserved by calling @AddTenantProject@ under a tenancy unit of a service producer\'s project of a managed service, or from a separate project. The caller is checked against a set of permissions as if calling @AddTenantProject@ on the same service consumer. To trigger the attachment, the targeted tenant project must be in a folder. Make sure the ServiceConsumerManagement service account is the owner of that project. These two requirements are already met if the project is reserved by calling @AddTenantProject@. Operation.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsAttachProject' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsAttachProject = ServiceConsumerManagementServicesTenancyUnitsAttachProject
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the tenancy unit that the project will be attached to. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AttachTenantProjectRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsAttachProject' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsAttachProject ::
  -- |  Required. Name of the tenancy unit that the project will be attached to. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AttachTenantProjectRequest ->
  ServiceConsumerManagementServicesTenancyUnitsAttachProject
newServiceConsumerManagementServicesTenancyUnitsAttachProject
  name
  payload =
    ServiceConsumerManagementServicesTenancyUnitsAttachProject
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ServiceConsumerManagementServicesTenancyUnitsAttachProject
  where
  type
    Rs ServiceConsumerManagementServicesTenancyUnitsAttachProject =
      Operation
  type
    Scopes
      ServiceConsumerManagementServicesTenancyUnitsAttachProject =
      '[CloudPlatform'FullControl]
  requestClient
    ServiceConsumerManagementServicesTenancyUnitsAttachProject {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        serviceConsumerManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ServiceConsumerManagementServicesTenancyUnitsAttachProjectResource
            )
            Core.mempty
