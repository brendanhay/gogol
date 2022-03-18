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
-- Module      : Network.Google.DFAReporting.UserRolePermissions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of user role permissions, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRolePermissions.list@.
module Network.Google.DFAReporting.UserRolePermissions.List
  ( -- * Resource
    DFAReportingUserRolePermissionsListResource,

    -- ** Constructing a Request
    newDFAReportingUserRolePermissionsList,
    DFAReportingUserRolePermissionsList,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.userRolePermissions.list@ method which the
-- 'DFAReportingUserRolePermissionsList' request conforms to.
type DFAReportingUserRolePermissionsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "userRolePermissions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              UserRolePermissionsListResponse

-- | Gets a list of user role permissions, possibly filtered.
--
-- /See:/ 'newDFAReportingUserRolePermissionsList' smart constructor.
data DFAReportingUserRolePermissionsList = DFAReportingUserRolePermissionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only user role permissions with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingUserRolePermissionsList' with the minimum fields required to make a request.
newDFAReportingUserRolePermissionsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingUserRolePermissionsList
newDFAReportingUserRolePermissionsList profileId =
  DFAReportingUserRolePermissionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ids = Core.Nothing,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingUserRolePermissionsList
  where
  type
    Rs DFAReportingUserRolePermissionsList =
      UserRolePermissionsListResponse
  type
    Scopes DFAReportingUserRolePermissionsList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient DFAReportingUserRolePermissionsList {..} =
    go
      profileId
      xgafv
      accessToken
      callback
      (ids Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DFAReportingUserRolePermissionsListResource
          )
          Core.mempty
