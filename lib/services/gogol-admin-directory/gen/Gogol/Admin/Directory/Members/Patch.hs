{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Admin.Directory.Members.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the membership properties of a user in the specified group. This method supports </admin-sdk/directory/v1/guides/performance#patch patch semantics>.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.patch@.
module Gogol.Admin.Directory.Members.Patch
  ( -- * Resource
    DirectoryMembersPatchResource,

    -- ** Constructing a Request
    DirectoryMembersPatch (..),
    newDirectoryMembersPatch,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.members.patch@ method which the
-- 'DirectoryMembersPatch' request conforms to.
type DirectoryMembersPatchResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.Capture "groupKey" Core.Text
    Core.:> "members"
    Core.:> Core.Capture "memberKey" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Member
    Core.:> Core.Patch '[Core.JSON] Member

-- | Updates the membership properties of a user in the specified group. This method supports </admin-sdk/directory/v1/guides/performance#patch patch semantics>.
--
-- /See:/ 'newDirectoryMembersPatch' smart constructor.
data DirectoryMembersPatch = DirectoryMembersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID.
    groupKey :: Core.Text,
    -- | Identifies the group member in the API request. A group member can be a user or another group. The value can be the member\'s (group or user) primary email address, alias, or unique ID.
    memberKey :: Core.Text,
    -- | Multipart request metadata.
    payload :: Member,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMembersPatch' with the minimum fields required to make a request.
newDirectoryMembersPatch ::
  -- |  Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID. See 'groupKey'.
  Core.Text ->
  -- |  Identifies the group member in the API request. A group member can be a user or another group. The value can be the member\'s (group or user) primary email address, alias, or unique ID. See 'memberKey'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Member ->
  DirectoryMembersPatch
newDirectoryMembersPatch groupKey memberKey payload =
  DirectoryMembersPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupKey = groupKey,
      memberKey = memberKey,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryMembersPatch where
  type Rs DirectoryMembersPatch = Member
  type
    Scopes DirectoryMembersPatch =
      '[Admin'Directory'Group, Admin'Directory'Group'Member]
  requestClient DirectoryMembersPatch {..} =
    go
      groupKey
      memberKey
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryMembersPatchResource)
          Core.mempty
