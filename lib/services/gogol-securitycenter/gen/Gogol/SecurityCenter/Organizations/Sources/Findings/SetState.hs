{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecurityCenter.Organizations.Sources.Findings.SetState
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the state of a finding.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.findings.setState@.
module Gogol.SecurityCenter.Organizations.Sources.Findings.SetState
    (
    -- * Resource
      SecurityCenterOrganizationsSourcesFindingsSetStateResource

    -- ** Constructing a Request
    , SecurityCenterOrganizationsSourcesFindingsSetState (..)
    , newSecurityCenterOrganizationsSourcesFindingsSetState
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.findings.setState@ method which the
-- 'SecurityCenterOrganizationsSourcesFindingsSetState' request conforms to.
type SecurityCenterOrganizationsSourcesFindingsSetStateResource
     =
     "v1p1beta1" Core.:>
       Core.CaptureMode "name" "setState" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SetFindingStateRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         GoogleCloudSecuritycenterV1p1beta1Finding

-- | Updates the state of a finding.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesFindingsSetState' smart constructor.
data SecurityCenterOrganizationsSourcesFindingsSetState = SecurityCenterOrganizationsSourcesFindingsSetState
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The relative resource name of the finding. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source/id}\/finding\/{finding/id}\".
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SetFindingStateRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesFindingsSetState' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesFindingsSetState 
    ::  Core.Text
       -- ^  Required. The relative resource name of the finding. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source/id}\/finding\/{finding/id}\". See 'name'.
    -> SetFindingStateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> SecurityCenterOrganizationsSourcesFindingsSetState
newSecurityCenterOrganizationsSourcesFindingsSetState name payload =
  SecurityCenterOrganizationsSourcesFindingsSetState
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SecurityCenterOrganizationsSourcesFindingsSetState
         where
        type Rs
               SecurityCenterOrganizationsSourcesFindingsSetState
             = GoogleCloudSecuritycenterV1p1beta1Finding
        type Scopes
               SecurityCenterOrganizationsSourcesFindingsSetState
             = '[CloudPlatform'FullControl]
        requestClient
          SecurityCenterOrganizationsSourcesFindingsSetState{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              securityCenterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecurityCenterOrganizationsSourcesFindingsSetStateResource)
                      Core.mempty

