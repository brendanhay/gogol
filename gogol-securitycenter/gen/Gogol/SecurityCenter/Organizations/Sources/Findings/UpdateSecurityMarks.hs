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
-- Module      : Gogol.SecurityCenter.Organizations.Sources.Findings.UpdateSecurityMarks
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates security marks.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.updateSecurityMarks@.
module Gogol.SecurityCenter.Organizations.Sources.Findings.UpdateSecurityMarks
  ( -- * Resource
    SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarksResource,

    -- ** Constructing a Request
    newSecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks,
    SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.updateSecurityMarks@ method which the
-- 'SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks' request conforms to.
type SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarksResource =
  "v1p1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "startTime" Core.DateTime'
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudSecuritycenterV1p1beta1SecurityMarks

-- | Updates security marks.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks' smart constructor.
data SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks = SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The relative resource name of the SecurityMarks. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Examples: \"organizations\/{organization/id}\/assets\/{asset/id}\/securityMarks\" \"organizations\/{organization/id}\/sources\/{source/id}\/findings\/{finding/id}\/securityMarks\".
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudSecuritycenterV1p1beta1SecurityMarks,
    -- | The time at which the updated SecurityMarks take effect. If not set uses current server time. Updates will be applied to the SecurityMarks that are active immediately preceding this time.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | The FieldMask to use when updating the security marks resource. The field mask must not contain duplicate fields. If empty or set to \"marks\", all marks will be replaced. Individual marks can be updated using \"marks.\".
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks ::
  -- |  The relative resource name of the SecurityMarks. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Examples: \"organizations\/{organization/id}\/assets\/{asset/id}\/securityMarks\" \"organizations\/{organization/id}\/sources\/{source/id}\/findings\/{finding/id}\/securityMarks\". See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudSecuritycenterV1p1beta1SecurityMarks ->
  SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks
newSecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks name payload =
  SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      startTime = Core.Nothing,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks
  where
  type
    Rs
      SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks =
      GoogleCloudSecuritycenterV1p1beta1SecurityMarks
  type
    Scopes
      SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks {..} =
      go
        name
        xgafv
        accessToken
        callback
        startTime
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
                  SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarksResource
            )
            Core.mempty
