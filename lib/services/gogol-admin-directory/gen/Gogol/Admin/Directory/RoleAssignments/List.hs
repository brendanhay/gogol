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
-- Module      : Gogol.Admin.Directory.RoleAssignments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all roleAssignments.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roleAssignments.list@.
module Gogol.Admin.Directory.RoleAssignments.List
  ( -- * Resource
    DirectoryRoleAssignmentsListResource,

    -- ** Constructing a Request
    newDirectoryRoleAssignmentsList,
    DirectoryRoleAssignmentsList,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.roleAssignments.list@ method which the
-- 'DirectoryRoleAssignmentsList' request conforms to.
type DirectoryRoleAssignmentsListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "roleassignments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "roleId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "userKey" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RoleAssignments

-- | Retrieves a paginated list of all roleAssignments.
--
-- /See:/ 'newDirectoryRoleAssignmentsList' smart constructor.
data DirectoryRoleAssignmentsList = DirectoryRoleAssignmentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable ID of the Google Workspace account.
    customer :: Core.Text,
    -- | Maximum number of results to return.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Token to specify the next page in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Immutable ID of a role. If included in the request, returns only role assignments containing this role ID.
    roleId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s primary email address, alias email address, or unique user ID. If included in the request, returns role assignments only for this user.
    userKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryRoleAssignmentsList' with the minimum fields required to make a request.
newDirectoryRoleAssignmentsList ::
  -- |  Immutable ID of the Google Workspace account. See 'customer'.
  Core.Text ->
  DirectoryRoleAssignmentsList
newDirectoryRoleAssignmentsList customer =
  DirectoryRoleAssignmentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      roleId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = Core.Nothing
    }

instance
  Core.GoogleRequest
    DirectoryRoleAssignmentsList
  where
  type
    Rs DirectoryRoleAssignmentsList =
      RoleAssignments
  type
    Scopes DirectoryRoleAssignmentsList =
      '[ "https://www.googleapis.com/auth/admin.directory.rolemanagement",
         "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"
       ]
  requestClient DirectoryRoleAssignmentsList {..} =
    go
      customer
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      roleId
      uploadType
      uploadProtocol
      userKey
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryRoleAssignmentsListResource
          )
          Core.mempty
