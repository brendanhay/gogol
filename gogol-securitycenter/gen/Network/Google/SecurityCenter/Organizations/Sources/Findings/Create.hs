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
-- Module      : Network.Google.SecurityCenter.Organizations.Sources.Findings.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a finding. The corresponding source must exist for finding creation to succeed.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.create@.
module Network.Google.SecurityCenter.Organizations.Sources.Findings.Create
  ( -- * Resource
    SecurityCenterOrganizationsSourcesFindingsCreateResource,

    -- ** Constructing a Request
    newSecurityCenterOrganizationsSourcesFindingsCreate,
    SecurityCenterOrganizationsSourcesFindingsCreate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.create@ method which the
-- 'SecurityCenterOrganizationsSourcesFindingsCreate' request conforms to.
type SecurityCenterOrganizationsSourcesFindingsCreateResource =
  "v1p1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "findings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "findingId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudSecuritycenterV1p1beta1Finding
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudSecuritycenterV1p1beta1Finding

-- | Creates a finding. The corresponding source must exist for finding creation to succeed.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesFindingsCreate' smart constructor.
data SecurityCenterOrganizationsSourcesFindingsCreate = SecurityCenterOrganizationsSourcesFindingsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Unique identifier provided by the client within the parent scope.
    findingId :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the new finding\'s parent. Its format should be \"organizations\/[organization/id]\/sources\/[source/id]\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudSecuritycenterV1p1beta1Finding,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesFindingsCreate' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesFindingsCreate ::
  -- |  Required. Resource name of the new finding\'s parent. Its format should be \"organizations\/[organization/id]\/sources\/[source/id]\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudSecuritycenterV1p1beta1Finding ->
  SecurityCenterOrganizationsSourcesFindingsCreate
newSecurityCenterOrganizationsSourcesFindingsCreate parent payload =
  SecurityCenterOrganizationsSourcesFindingsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      findingId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsSourcesFindingsCreate
  where
  type
    Rs
      SecurityCenterOrganizationsSourcesFindingsCreate =
      GoogleCloudSecuritycenterV1p1beta1Finding
  type
    Scopes
      SecurityCenterOrganizationsSourcesFindingsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    SecurityCenterOrganizationsSourcesFindingsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        findingId
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
                  SecurityCenterOrganizationsSourcesFindingsCreateResource
            )
            Core.mempty
