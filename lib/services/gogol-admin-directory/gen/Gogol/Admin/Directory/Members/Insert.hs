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
-- Module      : Gogol.Admin.Directory.Members.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a user to the specified group.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.insert@.
module Gogol.Admin.Directory.Members.Insert
  ( -- * Resource
    DirectoryMembersInsertResource,

    -- ** Constructing a Request
    DirectoryMembersInsert (..),
    newDirectoryMembersInsert,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.members.insert@ method which the
-- 'DirectoryMembersInsert' request conforms to.
type DirectoryMembersInsertResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.Capture "groupKey" Core.Text
    Core.:> "members"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Member
    Core.:> Core.Post '[Core.JSON] Member

-- | Adds a user to the specified group.
--
-- /See:/ 'newDirectoryMembersInsert' smart constructor.
data DirectoryMembersInsert = DirectoryMembersInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID.
    groupKey :: Core.Text,
    -- | Multipart request metadata.
    payload :: Member,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMembersInsert' with the minimum fields required to make a request.
newDirectoryMembersInsert ::
  -- |  Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID. See 'groupKey'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Member ->
  DirectoryMembersInsert
newDirectoryMembersInsert groupKey payload =
  DirectoryMembersInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupKey = groupKey,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryMembersInsert where
  type Rs DirectoryMembersInsert = Member
  type
    Scopes DirectoryMembersInsert =
      '[Admin'Directory'Group, Admin'Directory'Group'Member]
  requestClient DirectoryMembersInsert {..} =
    go
      groupKey
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
          (Core.Proxy :: Core.Proxy DirectoryMembersInsertResource)
          Core.mempty
