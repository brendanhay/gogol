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
-- Module      : Gogol.SecurityCenter.Organizations.Sources.Findings.Group
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Filters an organization or source\'s findings and groups them by their specified properties. To group across all sources provide a @-@ as the source id. Example: \/v1p1beta1\/organizations\/{organization_id}\/sources\/-\/findings
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.group@.
module Gogol.SecurityCenter.Organizations.Sources.Findings.Group
  ( -- * Resource
    SecurityCenterOrganizationsSourcesFindingsGroupResource,

    -- ** Constructing a Request
    newSecurityCenterOrganizationsSourcesFindingsGroup,
    SecurityCenterOrganizationsSourcesFindingsGroup,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.group@ method which the
-- 'SecurityCenterOrganizationsSourcesFindingsGroup' request conforms to.
type SecurityCenterOrganizationsSourcesFindingsGroupResource =
  "v1p1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "findings:group"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GroupFindingsRequest
    Core.:> Core.Post '[Core.JSON] GroupFindingsResponse

-- | Filters an organization or source\'s findings and groups them by their specified properties. To group across all sources provide a @-@ as the source id. Example: \/v1p1beta1\/organizations\/{organization_id}\/sources\/-\/findings
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesFindingsGroup' smart constructor.
data SecurityCenterOrganizationsSourcesFindingsGroup = SecurityCenterOrganizationsSourcesFindingsGroup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the source to groupBy. Its format is \"organizations\/[organization/id]\/sources\/[source/id]\". To groupBy across all sources provide a source/id of @-@. For example: organizations\/{organization/id}\/sources\/-
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GroupFindingsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesFindingsGroup' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesFindingsGroup ::
  -- |  Required. Name of the source to groupBy. Its format is \"organizations\/[organization/id]\/sources\/[source/id]\". To groupBy across all sources provide a source/id of @-@. For example: organizations\/{organization/id}\/sources\/- See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GroupFindingsRequest ->
  SecurityCenterOrganizationsSourcesFindingsGroup
newSecurityCenterOrganizationsSourcesFindingsGroup parent payload =
  SecurityCenterOrganizationsSourcesFindingsGroup
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
    SecurityCenterOrganizationsSourcesFindingsGroup
  where
  type
    Rs
      SecurityCenterOrganizationsSourcesFindingsGroup =
      GroupFindingsResponse
  type
    Scopes
      SecurityCenterOrganizationsSourcesFindingsGroup =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    SecurityCenterOrganizationsSourcesFindingsGroup {..} =
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
                  SecurityCenterOrganizationsSourcesFindingsGroupResource
            )
            Core.mempty
