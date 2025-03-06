{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Directory.Members.HasMember
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether the given user is a member of the group. Membership can be direct or nested, but if nested, the @memberKey@ and @groupKey@ must be entities in the same domain or an @Invalid input@ error is returned. To check for nested memberships that include entities outside of the group\'s domain, use the <https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships/checkTransitiveMembership checkTransitiveMembership()> method in the Cloud Identity Groups API.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.hasMember@.
module Gogol.Admin.Directory.Members.HasMember
  ( -- * Resource
    DirectoryMembersHasMemberResource,

    -- ** Constructing a Request
    DirectoryMembersHasMember (..),
    newDirectoryMembersHasMember,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.members.hasMember@ method which the
-- 'DirectoryMembersHasMember' request conforms to.
type DirectoryMembersHasMemberResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.Capture "groupKey" Core.Text
    Core.:> "hasMember"
    Core.:> Core.Capture "memberKey" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] MembersHasMember

-- | Checks whether the given user is a member of the group. Membership can be direct or nested, but if nested, the @memberKey@ and @groupKey@ must be entities in the same domain or an @Invalid input@ error is returned. To check for nested memberships that include entities outside of the group\'s domain, use the <https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships/checkTransitiveMembership checkTransitiveMembership()> method in the Cloud Identity Groups API.
--
-- /See:/ 'newDirectoryMembersHasMember' smart constructor.
data DirectoryMembersHasMember = DirectoryMembersHasMember
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID.
    groupKey :: Core.Text,
    -- | Identifies the user member in the API request. The value can be the user\'s primary email address, alias, or unique ID.
    memberKey :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMembersHasMember' with the minimum fields required to make a request.
newDirectoryMembersHasMember ::
  -- |  Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID. See 'groupKey'.
  Core.Text ->
  -- |  Identifies the user member in the API request. The value can be the user\'s primary email address, alias, or unique ID. See 'memberKey'.
  Core.Text ->
  DirectoryMembersHasMember
newDirectoryMembersHasMember groupKey memberKey =
  DirectoryMembersHasMember
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupKey = groupKey,
      memberKey = memberKey,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryMembersHasMember where
  type Rs DirectoryMembersHasMember = MembersHasMember
  type
    Scopes DirectoryMembersHasMember =
      '[ Admin'Directory'Group,
         Admin'Directory'Group'Member,
         Admin'Directory'Group'Member'Readonly,
         Admin'Directory'Group'Readonly
       ]
  requestClient DirectoryMembersHasMember {..} =
    go
      groupKey
      memberKey
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryMembersHasMemberResource)
          Core.mempty
