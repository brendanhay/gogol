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
-- Module      : Gogol.Chat.Users.Spaces.GetSpaceReadState
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about a user\'s read state within a space, used to identify read and unread messages. For an example, see <https://developers.google.com/workspace/chat/get-space-read-state Get details about a user\'s space read state>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.users.spaces.getSpaceReadState@.
module Gogol.Chat.Users.Spaces.GetSpaceReadState
  ( -- * Resource
    ChatUsersSpacesGetSpaceReadStateResource,

    -- ** Constructing a Request
    ChatUsersSpacesGetSpaceReadState (..),
    newChatUsersSpacesGetSpaceReadState,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.users.spaces.getSpaceReadState@ method which the
-- 'ChatUsersSpacesGetSpaceReadState' request conforms to.
type ChatUsersSpacesGetSpaceReadStateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SpaceReadState

-- | Returns details about a user\'s read state within a space, used to identify read and unread messages. For an example, see <https://developers.google.com/workspace/chat/get-space-read-state Get details about a user\'s space read state>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatUsersSpacesGetSpaceReadState' smart constructor.
data ChatUsersSpacesGetSpaceReadState = ChatUsersSpacesGetSpaceReadState
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the space read state to retrieve. Only supports getting read state for the calling user. To refer to the calling user, set one of the following: - The @me@ alias. For example, @users\/me\/spaces\/{space}\/spaceReadState@. - Their Workspace email address. For example, @users\/user\@example.com\/spaces\/{space}\/spaceReadState@. - Their user id. For example, @users\/123456789\/spaces\/{space}\/spaceReadState@. Format: users\/{user}\/spaces\/{space}\/spaceReadState
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatUsersSpacesGetSpaceReadState' with the minimum fields required to make a request.
newChatUsersSpacesGetSpaceReadState ::
  -- |  Required. Resource name of the space read state to retrieve. Only supports getting read state for the calling user. To refer to the calling user, set one of the following: - The @me@ alias. For example, @users\/me\/spaces\/{space}\/spaceReadState@. - Their Workspace email address. For example, @users\/user\@example.com\/spaces\/{space}\/spaceReadState@. - Their user id. For example, @users\/123456789\/spaces\/{space}\/spaceReadState@. Format: users\/{user}\/spaces\/{space}\/spaceReadState See 'name'.
  Core.Text ->
  ChatUsersSpacesGetSpaceReadState
newChatUsersSpacesGetSpaceReadState name =
  ChatUsersSpacesGetSpaceReadState
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatUsersSpacesGetSpaceReadState where
  type Rs ChatUsersSpacesGetSpaceReadState = SpaceReadState
  type
    Scopes ChatUsersSpacesGetSpaceReadState =
      '[Chat'Users'Readstate, Chat'Users'Readstate'Readonly]
  requestClient ChatUsersSpacesGetSpaceReadState {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatUsersSpacesGetSpaceReadStateResource)
          Core.mempty
