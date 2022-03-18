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
-- Module      : Gogol.SecurityCenter.Organizations.Assets.RunDiscovery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs asset discovery. The discovery is tracked with a long-running operation. This API can only be called with limited frequency for an organization. If it is called too frequently the caller will receive a TOO/MANY/REQUESTS error.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.assets.runDiscovery@.
module Gogol.SecurityCenter.Organizations.Assets.RunDiscovery
  ( -- * Resource
    SecurityCenterOrganizationsAssetsRunDiscoveryResource,

    -- ** Constructing a Request
    newSecurityCenterOrganizationsAssetsRunDiscovery,
    SecurityCenterOrganizationsAssetsRunDiscovery,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.assets.runDiscovery@ method which the
-- 'SecurityCenterOrganizationsAssetsRunDiscovery' request conforms to.
type SecurityCenterOrganizationsAssetsRunDiscoveryResource =
  "v1p1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "assets:runDiscovery"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RunAssetDiscoveryRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Runs asset discovery. The discovery is tracked with a long-running operation. This API can only be called with limited frequency for an organization. If it is called too frequently the caller will receive a TOO/MANY/REQUESTS error.
--
-- /See:/ 'newSecurityCenterOrganizationsAssetsRunDiscovery' smart constructor.
data SecurityCenterOrganizationsAssetsRunDiscovery = SecurityCenterOrganizationsAssetsRunDiscovery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the organization to run asset discovery for. Its format is \"organizations\/[organization_id]\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: RunAssetDiscoveryRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsAssetsRunDiscovery' with the minimum fields required to make a request.
newSecurityCenterOrganizationsAssetsRunDiscovery ::
  -- |  Required. Name of the organization to run asset discovery for. Its format is \"organizations\/[organization_id]\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RunAssetDiscoveryRequest ->
  SecurityCenterOrganizationsAssetsRunDiscovery
newSecurityCenterOrganizationsAssetsRunDiscovery parent payload =
  SecurityCenterOrganizationsAssetsRunDiscovery
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
    SecurityCenterOrganizationsAssetsRunDiscovery
  where
  type
    Rs SecurityCenterOrganizationsAssetsRunDiscovery =
      Operation
  type
    Scopes
      SecurityCenterOrganizationsAssetsRunDiscovery =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    SecurityCenterOrganizationsAssetsRunDiscovery {..} =
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
                Core.Proxy
                  SecurityCenterOrganizationsAssetsRunDiscoveryResource
            )
            Core.mempty
