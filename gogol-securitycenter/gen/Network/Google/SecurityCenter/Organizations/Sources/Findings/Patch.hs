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
-- Module      : Network.Google.SecurityCenter.Organizations.Sources.Findings.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a finding. The corresponding source must exist for a finding creation to succeed.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.patch@.
module Network.Google.SecurityCenter.Organizations.Sources.Findings.Patch
  ( -- * Resource
    SecurityCenterOrganizationsSourcesFindingsPatchResource,

    -- ** Constructing a Request
    newSecurityCenterOrganizationsSourcesFindingsPatch,
    SecurityCenterOrganizationsSourcesFindingsPatch,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.patch@ method which the
-- 'SecurityCenterOrganizationsSourcesFindingsPatch' request conforms to.
type SecurityCenterOrganizationsSourcesFindingsPatchResource =
  "v1p1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudSecuritycenterV1p1beta1Finding
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudSecuritycenterV1p1beta1Finding

-- | Creates or updates a finding. The corresponding source must exist for a finding creation to succeed.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesFindingsPatch' smart constructor.
data SecurityCenterOrganizationsSourcesFindingsPatch = SecurityCenterOrganizationsSourcesFindingsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The relative resource name of this finding. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source/id}\/findings\/{finding/id}\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudSecuritycenterV1p1beta1Finding,
    -- | The FieldMask to use when updating the finding resource. This field should not be specified when creating a finding. When updating a finding, an empty mask is treated as updating all mutable fields and replacing source/properties. Individual source/properties can be added\/updated by using \"source_properties.\" in the field mask.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesFindingsPatch' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesFindingsPatch ::
  -- |  The relative resource name of this finding. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source/id}\/findings\/{finding/id}\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudSecuritycenterV1p1beta1Finding ->
  SecurityCenterOrganizationsSourcesFindingsPatch
newSecurityCenterOrganizationsSourcesFindingsPatch name payload =
  SecurityCenterOrganizationsSourcesFindingsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsSourcesFindingsPatch
  where
  type
    Rs
      SecurityCenterOrganizationsSourcesFindingsPatch =
      GoogleCloudSecuritycenterV1p1beta1Finding
  type
    Scopes
      SecurityCenterOrganizationsSourcesFindingsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    SecurityCenterOrganizationsSourcesFindingsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  SecurityCenterOrganizationsSourcesFindingsPatchResource
            )
            Core.mempty
