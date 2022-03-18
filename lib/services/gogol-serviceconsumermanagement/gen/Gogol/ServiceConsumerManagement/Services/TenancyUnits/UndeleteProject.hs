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
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.UndeleteProject
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to undelete a previously deleted tenant project. The project must be in a DELETED state. There are no guarantees that an undeleted project will be in a fully restored and functional state. Call the @ApplyTenantProjectConfig@ method to update its configuration and then validate all managed service resources. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.undeleteProject@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.UndeleteProject
  ( -- * Resource
    ServiceConsumerManagementServicesTenancyUnitsUndeleteProjectResource,

    -- ** Constructing a Request
    newServiceConsumerManagementServicesTenancyUnitsUndeleteProject,
    ServiceConsumerManagementServicesTenancyUnitsUndeleteProject,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.undeleteProject@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsUndeleteProject' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsUndeleteProjectResource =
  "v1"
    Core.:> Core.CaptureMode "name" "undeleteProject" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              UndeleteTenantProjectRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Attempts to undelete a previously deleted tenant project. The project must be in a DELETED state. There are no guarantees that an undeleted project will be in a fully restored and functional state. Call the @ApplyTenantProjectConfig@ method to update its configuration and then validate all managed service resources. Operation.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsUndeleteProject' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsUndeleteProject = ServiceConsumerManagementServicesTenancyUnitsUndeleteProject
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UndeleteTenantProjectRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsUndeleteProject' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsUndeleteProject ::
  -- |  Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteTenantProjectRequest ->
  ServiceConsumerManagementServicesTenancyUnitsUndeleteProject
newServiceConsumerManagementServicesTenancyUnitsUndeleteProject name payload =
  ServiceConsumerManagementServicesTenancyUnitsUndeleteProject
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceConsumerManagementServicesTenancyUnitsUndeleteProject
  where
  type
    Rs
      ServiceConsumerManagementServicesTenancyUnitsUndeleteProject =
      Operation
  type
    Scopes
      ServiceConsumerManagementServicesTenancyUnitsUndeleteProject =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ServiceConsumerManagementServicesTenancyUnitsUndeleteProject {..} =
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
                  ServiceConsumerManagementServicesTenancyUnitsUndeleteProjectResource
            )
            Core.mempty
