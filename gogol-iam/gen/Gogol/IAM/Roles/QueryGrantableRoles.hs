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
-- Module      : Gogol.IAM.Roles.QueryGrantableRoles
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists roles that can be granted on a Google Cloud resource. A role is grantable if the IAM policy for the resource can contain bindings to the role.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.roles.queryGrantableRoles@.
module Gogol.IAM.Roles.QueryGrantableRoles
  ( -- * Resource
    IAMRolesQueryGrantableRolesResource,

    -- ** Constructing a Request
    newIAMRolesQueryGrantableRoles,
    IAMRolesQueryGrantableRoles,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.roles.queryGrantableRoles@ method which the
-- 'IAMRolesQueryGrantableRoles' request conforms to.
type IAMRolesQueryGrantableRolesResource =
  "v1"
    Core.:> "roles:queryGrantableRoles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] QueryGrantableRolesRequest
    Core.:> Core.Post '[Core.JSON] QueryGrantableRolesResponse

-- | Lists roles that can be granted on a Google Cloud resource. A role is grantable if the IAM policy for the resource can contain bindings to the role.
--
-- /See:/ 'newIAMRolesQueryGrantableRoles' smart constructor.
data IAMRolesQueryGrantableRoles = IAMRolesQueryGrantableRoles
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: QueryGrantableRolesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMRolesQueryGrantableRoles' with the minimum fields required to make a request.
newIAMRolesQueryGrantableRoles ::
  -- |  Multipart request metadata. See 'payload'.
  QueryGrantableRolesRequest ->
  IAMRolesQueryGrantableRoles
newIAMRolesQueryGrantableRoles payload =
  IAMRolesQueryGrantableRoles
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMRolesQueryGrantableRoles
  where
  type
    Rs IAMRolesQueryGrantableRoles =
      QueryGrantableRolesResponse
  type
    Scopes IAMRolesQueryGrantableRoles =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient IAMRolesQueryGrantableRoles {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      iAMService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAMRolesQueryGrantableRolesResource
          )
          Core.mempty
