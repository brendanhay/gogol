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
-- Module      : Gogol.Chat.Spaces.Members.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about a membership. For an example, see <https://developers.google.com/workspace/chat/get-members Get details about a user\'s or Google Chat app\'s membership>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> You can authenticate and authorize this method with administrator privileges by setting the @use_admin_access@ field in the request.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.get@.
module Gogol.Chat.Spaces.Members.Get
  ( -- * Resource
    ChatSpacesMembersGetResource,

    -- ** Constructing a Request
    ChatSpacesMembersGet (..),
    newChatSpacesMembersGet,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.members.get@ method which the
-- 'ChatSpacesMembersGet' request conforms to.
type ChatSpacesMembersGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Membership

-- | Returns details about a membership. For an example, see <https://developers.google.com/workspace/chat/get-members Get details about a user\'s or Google Chat app\'s membership>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> You can authenticate and authorize this method with administrator privileges by setting the @use_admin_access@ field in the request.
--
-- /See:/ 'newChatSpacesMembersGet' smart constructor.
data ChatSpacesMembersGet = ChatSpacesMembersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the membership to retrieve. To get the app\'s own membership <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user by using user authentication>, you can optionally use @spaces\/{space}\/members\/app@. Format: @spaces\/{space}\/members\/{member}@ or @spaces\/{space}\/members\/app@ You can use the user\'s email as an alias for @{member}@. For example, @spaces\/{space}\/members\/example\@gmail.com@ where @example\@gmail.com@ is the email of the Google Chat user.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. When @true@, the method runs using the user\'s Google Workspace administrator privileges. The calling user must be a Google Workspace administrator with the <https://support.google.com/a/answer/13369245 manage chat and spaces conversations privilege>. Requires the @chat.admin.memberships@ or @chat.admin.memberships.readonly@ <https://developers.google.com/workspace/chat/authenticate-authorize#chat-api-scopes OAuth 2.0 scopes>. Getting app memberships in a space isn\'t supported when using admin access.
    useAdminAccess :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMembersGet' with the minimum fields required to make a request.
newChatSpacesMembersGet ::
  -- |  Required. Resource name of the membership to retrieve. To get the app\'s own membership <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user by using user authentication>, you can optionally use @spaces\/{space}\/members\/app@. Format: @spaces\/{space}\/members\/{member}@ or @spaces\/{space}\/members\/app@ You can use the user\'s email as an alias for @{member}@. For example, @spaces\/{space}\/members\/example\@gmail.com@ where @example\@gmail.com@ is the email of the Google Chat user. See 'name'.
  Core.Text ->
  ChatSpacesMembersGet
newChatSpacesMembersGet name =
  ChatSpacesMembersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      useAdminAccess = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMembersGet where
  type Rs ChatSpacesMembersGet = Membership
  type
    Scopes ChatSpacesMembersGet =
      '[ Chat'Admin'Memberships,
         Chat'Admin'Memberships'Readonly,
         Chat'Bot,
         Chat'Memberships,
         Chat'Memberships'Readonly
       ]
  requestClient ChatSpacesMembersGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      useAdminAccess
      (Core.Just Core.AltJSON)
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesMembersGetResource)
          Core.mempty
