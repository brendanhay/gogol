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
-- Module      : Gogol.SecurityCenter.Organizations.Assets.Group
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Filters an organization\'s assets and groups them by their specified properties.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.assets.group@.
module Gogol.SecurityCenter.Organizations.Assets.Group
  ( -- * Resource
    SecurityCenterOrganizationsAssetsGroupResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsAssetsGroup (..),
    newSecurityCenterOrganizationsAssetsGroup,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.assets.group@ method which the
-- 'SecurityCenterOrganizationsAssetsGroup' request conforms to.
type SecurityCenterOrganizationsAssetsGroupResource =
  "v1p1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "assets:group"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GroupAssetsRequest
    Core.:> Core.Post '[Core.JSON] GroupAssetsResponse

-- | Filters an organization\'s assets and groups them by their specified properties.
--
-- /See:/ 'newSecurityCenterOrganizationsAssetsGroup' smart constructor.
data SecurityCenterOrganizationsAssetsGroup = SecurityCenterOrganizationsAssetsGroup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the organization to groupBy. Its format is \"organizations\/[organization_id]\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GroupAssetsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsAssetsGroup' with the minimum fields required to make a request.
newSecurityCenterOrganizationsAssetsGroup ::
  -- |  Required. Name of the organization to groupBy. Its format is \"organizations\/[organization_id]\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GroupAssetsRequest ->
  SecurityCenterOrganizationsAssetsGroup
newSecurityCenterOrganizationsAssetsGroup parent payload =
  SecurityCenterOrganizationsAssetsGroup
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SecurityCenterOrganizationsAssetsGroup where
  type
    Rs SecurityCenterOrganizationsAssetsGroup =
      GroupAssetsResponse
  type
    Scopes SecurityCenterOrganizationsAssetsGroup =
      '[CloudPlatform'FullControl]
  requestClient SecurityCenterOrganizationsAssetsGroup {..} =
    go
      parent
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
              Core.Proxy SecurityCenterOrganizationsAssetsGroupResource
          )
          Core.mempty
