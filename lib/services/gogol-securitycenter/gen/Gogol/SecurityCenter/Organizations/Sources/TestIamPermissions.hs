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
-- Module      : Gogol.SecurityCenter.Organizations.Sources.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the permissions that a caller has on the specified source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.testIamPermissions@.
module Gogol.SecurityCenter.Organizations.Sources.TestIamPermissions
  ( -- * Resource
    SecurityCenterOrganizationsSourcesTestIamPermissionsResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsSourcesTestIamPermissions (..),
    newSecurityCenterOrganizationsSourcesTestIamPermissions,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.testIamPermissions@ method which the
-- 'SecurityCenterOrganizationsSourcesTestIamPermissions' request conforms to.
type SecurityCenterOrganizationsSourcesTestIamPermissionsResource =
  "v1p1beta1"
    Core.:> Core.CaptureMode "resource" "testIamPermissions" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns the permissions that a caller has on the specified source.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesTestIamPermissions' smart constructor.
data SecurityCenterOrganizationsSourcesTestIamPermissions = SecurityCenterOrganizationsSourcesTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TestIamPermissionsRequest,
    -- | REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesTestIamPermissions' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestIamPermissionsRequest ->
  -- |  REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  SecurityCenterOrganizationsSourcesTestIamPermissions
newSecurityCenterOrganizationsSourcesTestIamPermissions
  payload
  resource =
    SecurityCenterOrganizationsSourcesTestIamPermissions
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        resource = resource,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsSourcesTestIamPermissions
  where
  type
    Rs SecurityCenterOrganizationsSourcesTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes SecurityCenterOrganizationsSourcesTestIamPermissions =
      '[CloudPlatform'FullControl]
  requestClient
    SecurityCenterOrganizationsSourcesTestIamPermissions {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        securityCenterService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SecurityCenterOrganizationsSourcesTestIamPermissionsResource
            )
            Core.mempty
