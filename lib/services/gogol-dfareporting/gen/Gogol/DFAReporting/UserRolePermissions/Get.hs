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
-- Module      : Gogol.DFAReporting.UserRolePermissions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user role permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRolePermissions.get@.
module Gogol.DFAReporting.UserRolePermissions.Get
  ( -- * Resource
    DFAReportingUserRolePermissionsGetResource,

    -- ** Constructing a Request
    newDFAReportingUserRolePermissionsGet,
    DFAReportingUserRolePermissionsGet,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.userRolePermissions.get@ method which the
-- 'DFAReportingUserRolePermissionsGet' request conforms to.
type DFAReportingUserRolePermissionsGetResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "userRolePermissions"
    Core.:> Core.Capture "id" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UserRolePermission

-- | Gets one user role permission by ID.
--
-- /See:/ 'newDFAReportingUserRolePermissionsGet' smart constructor.
data DFAReportingUserRolePermissionsGet = DFAReportingUserRolePermissionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | User role permission ID.
    id :: Core.Int64,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingUserRolePermissionsGet' with the minimum fields required to make a request.
newDFAReportingUserRolePermissionsGet ::
  -- |  User role permission ID. See 'id'.
  Core.Int64 ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingUserRolePermissionsGet
newDFAReportingUserRolePermissionsGet id profileId =
  DFAReportingUserRolePermissionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingUserRolePermissionsGet
  where
  type
    Rs DFAReportingUserRolePermissionsGet =
      UserRolePermission
  type
    Scopes DFAReportingUserRolePermissionsGet =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingUserRolePermissionsGet {..} =
    go
      profileId
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DFAReportingUserRolePermissionsGetResource
          )
          Core.mempty
