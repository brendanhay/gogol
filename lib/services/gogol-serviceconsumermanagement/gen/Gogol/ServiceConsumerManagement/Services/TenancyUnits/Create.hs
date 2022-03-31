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
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a tenancy unit with no tenant resources. If tenancy unit already exists, it will be returned, however, in this case, returned TenancyUnit does not have tenant_resources field set and ListTenancyUnits has to be used to get a complete TenancyUnit with all fields populated.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.create@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.Create
  ( -- * Resource
    ServiceConsumerManagementServicesTenancyUnitsCreateResource,

    -- ** Constructing a Request
    newServiceConsumerManagementServicesTenancyUnitsCreate,
    ServiceConsumerManagementServicesTenancyUnitsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.create@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsCreate' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "tenancyUnits"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateTenancyUnitRequest
    Core.:> Core.Post '[Core.JSON] TenancyUnit

-- | Creates a tenancy unit with no tenant resources. If tenancy unit already exists, it will be returned, however, in this case, returned TenancyUnit does not have tenant_resources field set and ListTenancyUnits has to be used to get a complete TenancyUnit with all fields populated.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsCreate' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsCreate = ServiceConsumerManagementServicesTenancyUnitsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. services\/{service}\/{collection id}\/{resource id} {collection id} is the cloud resource collection type representing the service consumer, for example \'projects\', or \'organizations\'. {resource id} is the consumer numeric id, such as project number: \'123456\'. {service} the name of a managed service, such as \'service.googleapis.com\'. Enables service binding using the new tenancy unit.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateTenancyUnitRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsCreate' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsCreate ::
  -- |  Required. services\/{service}\/{collection id}\/{resource id} {collection id} is the cloud resource collection type representing the service consumer, for example \'projects\', or \'organizations\'. {resource id} is the consumer numeric id, such as project number: \'123456\'. {service} the name of a managed service, such as \'service.googleapis.com\'. Enables service binding using the new tenancy unit. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateTenancyUnitRequest ->
  ServiceConsumerManagementServicesTenancyUnitsCreate
newServiceConsumerManagementServicesTenancyUnitsCreate parent payload =
  ServiceConsumerManagementServicesTenancyUnitsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceConsumerManagementServicesTenancyUnitsCreate
  where
  type
    Rs
      ServiceConsumerManagementServicesTenancyUnitsCreate =
      TenancyUnit
  type
    Scopes
      ServiceConsumerManagementServicesTenancyUnitsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    ServiceConsumerManagementServicesTenancyUnitsCreate {..} =
      go
        parent
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
                  ServiceConsumerManagementServicesTenancyUnitsCreateResource
            )
            Core.mempty
