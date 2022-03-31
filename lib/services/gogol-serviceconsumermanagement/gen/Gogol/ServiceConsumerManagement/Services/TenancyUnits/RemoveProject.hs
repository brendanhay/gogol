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
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.RemoveProject
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified project resource identified by a tenant resource tag. The method removes the project lien with \'TenantManager\' origin if that was added. It then attempts to delete the project. If that operation fails, this method also fails. Calls to remove already removed or non-existent tenant project succeed. After the project has been deleted, or if was already in a DELETED state, resource metadata is permanently removed from the tenancy unit. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.removeProject@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.RemoveProject
  ( -- * Resource
    ServiceConsumerManagementServicesTenancyUnitsRemoveProjectResource,

    -- ** Constructing a Request
    newServiceConsumerManagementServicesTenancyUnitsRemoveProject,
    ServiceConsumerManagementServicesTenancyUnitsRemoveProject,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.removeProject@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsRemoveProject' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsRemoveProjectResource =
  "v1"
    Core.:> Core.CaptureMode "name" "removeProject" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RemoveTenantProjectRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Removes the specified project resource identified by a tenant resource tag. The method removes the project lien with \'TenantManager\' origin if that was added. It then attempts to delete the project. If that operation fails, this method also fails. Calls to remove already removed or non-existent tenant project succeed. After the project has been deleted, or if was already in a DELETED state, resource metadata is permanently removed from the tenancy unit. Operation.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsRemoveProject' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsRemoveProject = ServiceConsumerManagementServicesTenancyUnitsRemoveProject
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RemoveTenantProjectRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsRemoveProject' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsRemoveProject ::
  -- |  Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RemoveTenantProjectRequest ->
  ServiceConsumerManagementServicesTenancyUnitsRemoveProject
newServiceConsumerManagementServicesTenancyUnitsRemoveProject name payload =
  ServiceConsumerManagementServicesTenancyUnitsRemoveProject
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
    ServiceConsumerManagementServicesTenancyUnitsRemoveProject
  where
  type
    Rs
      ServiceConsumerManagementServicesTenancyUnitsRemoveProject =
      Operation
  type
    Scopes
      ServiceConsumerManagementServicesTenancyUnitsRemoveProject =
      '[CloudPlatform'FullControl]
  requestClient
    ServiceConsumerManagementServicesTenancyUnitsRemoveProject {..} =
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
                  ServiceConsumerManagementServicesTenancyUnitsRemoveProjectResource
            )
            Core.mempty
