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
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.DeleteProject
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified project resource identified by a tenant resource tag. The mothod removes a project lien with a \'TenantManager\' origin if that was added. It will then attempt to delete the project. If that operation fails, this method also fails. After the project has been deleted, the tenant resource state is set to DELETED. To permanently remove resource metadata, call the @RemoveTenantProject@ method. New resources with the same tag can\'t be added if there are existing resources in a DELETED state. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.deleteProject@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.DeleteProject
  ( -- * Resource
    ServiceConsumerManagementServicesTenancyUnitsDeleteProjectResource,

    -- ** Constructing a Request
    ServiceConsumerManagementServicesTenancyUnitsDeleteProject (..),
    newServiceConsumerManagementServicesTenancyUnitsDeleteProject,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.deleteProject@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsDeleteProject' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsDeleteProjectResource =
  "v1"
    Core.:> Core.CaptureMode "name" "deleteProject" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeleteTenantProjectRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Deletes the specified project resource identified by a tenant resource tag. The mothod removes a project lien with a \'TenantManager\' origin if that was added. It will then attempt to delete the project. If that operation fails, this method also fails. After the project has been deleted, the tenant resource state is set to DELETED. To permanently remove resource metadata, call the @RemoveTenantProject@ method. New resources with the same tag can\'t be added if there are existing resources in a DELETED state. Operation.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsDeleteProject' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsDeleteProject = ServiceConsumerManagementServicesTenancyUnitsDeleteProject
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeleteTenantProjectRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsDeleteProject' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsDeleteProject ::
  -- |  Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeleteTenantProjectRequest ->
  ServiceConsumerManagementServicesTenancyUnitsDeleteProject
newServiceConsumerManagementServicesTenancyUnitsDeleteProject name payload =
  ServiceConsumerManagementServicesTenancyUnitsDeleteProject
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
    ServiceConsumerManagementServicesTenancyUnitsDeleteProject
  where
  type
    Rs
      ServiceConsumerManagementServicesTenancyUnitsDeleteProject =
      Operation
  type
    Scopes
      ServiceConsumerManagementServicesTenancyUnitsDeleteProject =
      '[CloudPlatform'FullControl]
  requestClient
    ServiceConsumerManagementServicesTenancyUnitsDeleteProject {..} =
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
                  ServiceConsumerManagementServicesTenancyUnitsDeleteProjectResource
            )
            Core.mempty
