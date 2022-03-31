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
-- Module      : Gogol.ServiceNetworking.Services.Roles.Add
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to add roles in the shared VPC host project. Each role is bound to the provided member. Each role must be selected from within an allowlisted set of roles. Each role is applied at only the granularity specified in the allowlist.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.roles.add@.
module Gogol.ServiceNetworking.Services.Roles.Add
  ( -- * Resource
    ServiceNetworkingServicesRolesAddResource,

    -- ** Constructing a Request
    newServiceNetworkingServicesRolesAdd,
    ServiceNetworkingServicesRolesAdd,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.roles.add@ method which the
-- 'ServiceNetworkingServicesRolesAdd' request conforms to.
type ServiceNetworkingServicesRolesAddResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "roles:add"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddRolesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Service producers can use this method to add roles in the shared VPC host project. Each role is bound to the provided member. Each role must be selected from within an allowlisted set of roles. Each role is applied at only the granularity specified in the allowlist.
--
-- /See:/ 'newServiceNetworkingServicesRolesAdd' smart constructor.
data ServiceNetworkingServicesRolesAdd = ServiceNetworkingServicesRolesAdd
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. This is in a form services\/{service} where {service} is the name of the private access management service. For example \'service-peering.example.com\'.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddRolesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesRolesAdd' with the minimum fields required to make a request.
newServiceNetworkingServicesRolesAdd ::
  -- |  Required. This is in a form services\/{service} where {service} is the name of the private access management service. For example \'service-peering.example.com\'. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddRolesRequest ->
  ServiceNetworkingServicesRolesAdd
newServiceNetworkingServicesRolesAdd parent payload =
  ServiceNetworkingServicesRolesAdd
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
    ServiceNetworkingServicesRolesAdd
  where
  type Rs ServiceNetworkingServicesRolesAdd = Operation
  type
    Scopes ServiceNetworkingServicesRolesAdd =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient ServiceNetworkingServicesRolesAdd {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      serviceNetworkingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceNetworkingServicesRolesAddResource
          )
          Core.mempty
