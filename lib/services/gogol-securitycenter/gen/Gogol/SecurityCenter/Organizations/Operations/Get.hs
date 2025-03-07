{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.SecurityCenter.Organizations.Operations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.operations.get@.
module Gogol.SecurityCenter.Organizations.Operations.Get
  ( -- * Resource
    SecurityCenterOrganizationsOperationsGetResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsOperationsGet (..),
    newSecurityCenterOrganizationsOperationsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.operations.get@ method which the
-- 'SecurityCenterOrganizationsOperationsGet' request conforms to.
type SecurityCenterOrganizationsOperationsGetResource =
  "v1p1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.
--
-- /See:/ 'newSecurityCenterOrganizationsOperationsGet' smart constructor.
data SecurityCenterOrganizationsOperationsGet = SecurityCenterOrganizationsOperationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the operation resource.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsOperationsGet' with the minimum fields required to make a request.
newSecurityCenterOrganizationsOperationsGet ::
  -- |  The name of the operation resource. See 'name'.
  Core.Text ->
  SecurityCenterOrganizationsOperationsGet
newSecurityCenterOrganizationsOperationsGet name =
  SecurityCenterOrganizationsOperationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsOperationsGet
  where
  type Rs SecurityCenterOrganizationsOperationsGet = Operation
  type
    Scopes SecurityCenterOrganizationsOperationsGet =
      '[CloudPlatform'FullControl]
  requestClient SecurityCenterOrganizationsOperationsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      securityCenterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SecurityCenterOrganizationsOperationsGetResource
          )
          Core.mempty
