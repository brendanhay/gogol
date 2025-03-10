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
-- Module      : Gogol.Chat.Spaces.Members.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a membership for the calling Chat app, a user, or a Google Group. Creating memberships for other Chat apps isn\'t supported. When creating a membership, if the specified member has their auto-accept policy turned off, then they\'re invited, and must accept the space invitation before joining. Otherwise, creating a membership adds the member directly to the specified space. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> in <https://developers.google.com/workspace/preview Developer Preview> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> You can authenticate and authorize this method with administrator privileges by setting the @use_admin_access@ field in the request. For example usage, see: -
-- <https://developers.google.com/workspace/chat/create-members#create-user-membership Invite or add a user to a space>. - <https://developers.google.com/workspace/chat/create-members#create-group-membership Invite or add a Google Group to a space>. - <https://developers.google.com/workspace/chat/create-members#create-membership-calling-api Add the Chat app to a space>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.create@.
module Gogol.Chat.Spaces.Members.Create
  ( -- * Resource
    ChatSpacesMembersCreateResource,

    -- ** Constructing a Request
    ChatSpacesMembersCreate (..),
    newChatSpacesMembersCreate,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.members.create@ method which the
-- 'ChatSpacesMembersCreate' request conforms to.
type ChatSpacesMembersCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "members"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Membership
    Core.:> Core.Post '[Core.JSON] Membership

-- | Creates a membership for the calling Chat app, a user, or a Google Group. Creating memberships for other Chat apps isn\'t supported. When creating a membership, if the specified member has their auto-accept policy turned off, then they\'re invited, and must accept the space invitation before joining. Otherwise, creating a membership adds the member directly to the specified space. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> with <https://support.google.com/a?p=chat-app-auth administrator approval> in <https://developers.google.com/workspace/preview Developer Preview> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> You can authenticate and authorize this method with administrator privileges by setting the @use_admin_access@ field in the request. For example usage, see: -
-- <https://developers.google.com/workspace/chat/create-members#create-user-membership Invite or add a user to a space>. - <https://developers.google.com/workspace/chat/create-members#create-group-membership Invite or add a Google Group to a space>. - <https://developers.google.com/workspace/chat/create-members#create-membership-calling-api Add the Chat app to a space>.
--
-- /See:/ 'newChatSpacesMembersCreate' smart constructor.
data ChatSpacesMembersCreate = ChatSpacesMembersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the space for which to create the membership. Format: spaces\/{space}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Membership,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. When @true@, the method runs using the user\'s Google Workspace administrator privileges. The calling user must be a Google Workspace administrator with the <https://support.google.com/a/answer/13369245 manage chat and spaces conversations privilege>. Requires the @chat.admin.memberships@ <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes OAuth 2.0 scope>. Creating app memberships or creating memberships for users outside the administrator\'s Google Workspace organization isn\'t supported using admin access.
    useAdminAccess :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMembersCreate' with the minimum fields required to make a request.
newChatSpacesMembersCreate ::
  -- |  Required. The resource name of the space for which to create the membership. Format: spaces\/{space} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Membership ->
  ChatSpacesMembersCreate
newChatSpacesMembersCreate parent payload =
  ChatSpacesMembersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      useAdminAccess = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMembersCreate where
  type Rs ChatSpacesMembersCreate = Membership
  type
    Scopes ChatSpacesMembersCreate =
      '[ Chat'Admin'Memberships,
         Chat'App'Memberships,
         Chat'Import,
         Chat'Memberships,
         Chat'Memberships'App
       ]
  requestClient ChatSpacesMembersCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      useAdminAccess
      (Core.Just Core.AltJSON)
      payload
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesMembersCreateResource)
          Core.mempty
