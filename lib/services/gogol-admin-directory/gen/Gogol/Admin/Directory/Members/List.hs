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
-- Module      : Gogol.Admin.Directory.Members.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all members in a group. This method times out after 60 minutes. For more information, see <https://developers.google.com/admin-sdk/directory/v1/guides/troubleshoot-error-codes Troubleshoot error codes>.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.list@.
module Gogol.Admin.Directory.Members.List
  ( -- * Resource
    DirectoryMembersListResource,

    -- ** Constructing a Request
    DirectoryMembersList (..),
    newDirectoryMembersList,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.members.list@ method which the
-- 'DirectoryMembersList' request conforms to.
type DirectoryMembersListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.Capture "groupKey" Core.Text
    Core.:> "members"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeDerivedMembership" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "roles" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Members

-- | Retrieves a paginated list of all members in a group. This method times out after 60 minutes. For more information, see <https://developers.google.com/admin-sdk/directory/v1/guides/troubleshoot-error-codes Troubleshoot error codes>.
--
-- /See:/ 'newDirectoryMembersList' smart constructor.
data DirectoryMembersList = DirectoryMembersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID.
    groupKey :: Core.Text,
    -- | Whether to list indirect memberships. Default: false.
    includeDerivedMembership :: (Core.Maybe Core.Bool),
    -- | Maximum number of results to return. Max allowed value is 200.
    maxResults :: Core.Int32,
    -- | Token to specify next page in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | The @roles@ query parameter allows you to retrieve group members by role. Allowed values are @OWNER@, @MANAGER@, and @MEMBER@.
    roles :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMembersList' with the minimum fields required to make a request.
newDirectoryMembersList ::
  -- |  Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID. See 'groupKey'.
  Core.Text ->
  DirectoryMembersList
newDirectoryMembersList groupKey =
  DirectoryMembersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupKey = groupKey,
      includeDerivedMembership = Core.Nothing,
      maxResults = 200,
      pageToken = Core.Nothing,
      roles = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryMembersList where
  type Rs DirectoryMembersList = Members
  type
    Scopes DirectoryMembersList =
      '[ Admin'Directory'Group,
         Admin'Directory'Group'Member,
         Admin'Directory'Group'Member'Readonly,
         Admin'Directory'Group'Readonly
       ]
  requestClient DirectoryMembersList {..} =
    go
      groupKey
      xgafv
      accessToken
      callback
      includeDerivedMembership
      (Core.Just maxResults)
      pageToken
      roles
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryMembersListResource
          )
          Core.mempty
