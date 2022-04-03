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
-- Module      : Gogol.Admin.Directory.Members.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a group member\'s properties.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.members.get@.
module Gogol.Admin.Directory.Members.Get
  ( -- * Resource
    DirectoryMembersGetResource,

    -- ** Constructing a Request
    DirectoryMembersGet (..),
    newDirectoryMembersGet,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.members.get@ method which the
-- 'DirectoryMembersGet' request conforms to.
type DirectoryMembersGetResource =
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
    Core.:> Core.Get '[Core.JSON] Member

-- | Retrieves a group member\'s properties.
--
-- /See:/ 'newDirectoryMembersGet' smart constructor.
data DirectoryMembersGet = DirectoryMembersGet
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
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMembersGet' with the minimum fields required to make a request.
newDirectoryMembersGet ::
  -- |  Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID. See 'groupKey'.
  Core.Text ->
  -- |  Identifies the group member in the API request. A group member can be a user or another group. The value can be the member\'s (group or user) primary email address, alias, or unique ID. See 'memberKey'.
  Core.Text ->
  DirectoryMembersGet
newDirectoryMembersGet groupKey memberKey =
  DirectoryMembersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupKey = groupKey,
      memberKey = memberKey,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryMembersGet where
  type Rs DirectoryMembersGet = Member
  type
    Scopes DirectoryMembersGet =
      '[ Admin'Directory'Group,
         Admin'Directory'Group'Member,
         Admin'Directory'Group'Member'Readonly,
         Admin'Directory'Group'Readonly
       ]
  requestClient DirectoryMembersGet {..} =
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
          ( Core.Proxy ::
              Core.Proxy DirectoryMembersGetResource
          )
          Core.mempty
