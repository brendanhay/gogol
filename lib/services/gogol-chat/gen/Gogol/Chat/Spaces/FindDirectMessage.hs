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
-- Module      : Gogol.Chat.Spaces.FindDirectMessage
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the existing direct message with the specified user. If no direct message space is found, returns a @404 NOT_FOUND@ error. For an example, see </chat/api/guides/v1/spaces/find-direct-message Find a direct message>. With <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app app authentication>, returns the direct message space between the specified user and the calling Chat app. With <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>, returns the direct message space between the specified user and the authenticated user. \/\/ Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication>
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.findDirectMessage@.
module Gogol.Chat.Spaces.FindDirectMessage
  ( -- * Resource
    ChatSpacesFindDirectMessageResource,

    -- ** Constructing a Request
    ChatSpacesFindDirectMessage (..),
    newChatSpacesFindDirectMessage,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.findDirectMessage@ method which the
-- 'ChatSpacesFindDirectMessage' request conforms to.
type ChatSpacesFindDirectMessageResource =
  "v1"
    Core.:> "spaces:findDirectMessage"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Space

-- | Returns the existing direct message with the specified user. If no direct message space is found, returns a @404 NOT_FOUND@ error. For an example, see </chat/api/guides/v1/spaces/find-direct-message Find a direct message>. With <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app app authentication>, returns the direct message space between the specified user and the calling Chat app. With <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>, returns the direct message space between the specified user and the authenticated user. \/\/ Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication>
--
-- /See:/ 'newChatSpacesFindDirectMessage' smart constructor.
data ChatSpacesFindDirectMessage = ChatSpacesFindDirectMessage
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the user to find direct message with. Format: @users\/{user}@, where @{user}@ is either the @id@ for the <https://developers.google.com/people/api/rest/v1/people person> from the People API, or the @id@ for the <https://developers.google.com/admin-sdk/directory/reference/rest/v1/users user> in the Directory API. For example, if the People API profile ID is @123456789@, you can find a direct message with that person by using @users\/123456789@ as the @name@. When <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authenticated as a user>, you can use the email as an alias for @{user}@. For example, @users\/example\@gmail.com@ where @example\@gmail.com@ is the email of the Google Chat user.
    name :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesFindDirectMessage' with the minimum fields required to make a request.
newChatSpacesFindDirectMessage ::
  ChatSpacesFindDirectMessage
newChatSpacesFindDirectMessage =
  ChatSpacesFindDirectMessage
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesFindDirectMessage where
  type Rs ChatSpacesFindDirectMessage = Space
  type
    Scopes ChatSpacesFindDirectMessage =
      '[Chat'Bot, Chat'Spaces, Chat'Spaces'Readonly]
  requestClient ChatSpacesFindDirectMessage {..} =
    go
      xgafv
      accessToken
      callback
      name
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesFindDirectMessageResource)
          Core.mempty
