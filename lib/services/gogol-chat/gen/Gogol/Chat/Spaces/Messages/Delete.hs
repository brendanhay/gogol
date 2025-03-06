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
-- Module      : Gogol.Chat.Spaces.Messages.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a message. For an example, see <https://developers.google.com/workspace/chat/delete-messages Delete a message>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> When using app authentication, requests can only delete messages created by the calling Chat app.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.delete@.
module Gogol.Chat.Spaces.Messages.Delete
  ( -- * Resource
    ChatSpacesMessagesDeleteResource,

    -- ** Constructing a Request
    ChatSpacesMessagesDelete (..),
    newChatSpacesMessagesDelete,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.messages.delete@ method which the
-- 'ChatSpacesMessagesDelete' request conforms to.
type ChatSpacesMessagesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a message. For an example, see <https://developers.google.com/workspace/chat/delete-messages Delete a message>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> When using app authentication, requests can only delete messages created by the calling Chat app.
--
-- /See:/ 'newChatSpacesMessagesDelete' smart constructor.
data ChatSpacesMessagesDelete = ChatSpacesMessagesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. When @true@, deleting a message also deletes its threaded replies. When @false@, if a message has threaded replies, deletion fails. Only applies when <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user authenticating as a user>. Has no effect when [authenticating as a Chat app] (https:\/\/developers.google.com\/workspace\/chat\/authenticate-authorize-chat-app).
    force :: (Core.Maybe Core.Bool),
    -- | Required. Resource name of the message. Format: @spaces\/{space}\/messages\/{message}@ If you\'ve set a custom ID for your message, you can use the value from the @clientAssignedMessageId@ field for @{message}@. For details, see [Name a message] (https:\/\/developers.google.com\/workspace\/chat\/create-messages#name/a/created_message).
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesDelete' with the minimum fields required to make a request.
newChatSpacesMessagesDelete ::
  -- |  Required. Resource name of the message. Format: @spaces\/{space}\/messages\/{message}@ If you\'ve set a custom ID for your message, you can use the value from the @clientAssignedMessageId@ field for @{message}@. For details, see [Name a message] (https:\/\/developers.google.com\/workspace\/chat\/create-messages#name/a/created_message). See 'name'.
  Core.Text ->
  ChatSpacesMessagesDelete
newChatSpacesMessagesDelete name =
  ChatSpacesMessagesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesDelete where
  type Rs ChatSpacesMessagesDelete = Empty
  type
    Scopes ChatSpacesMessagesDelete =
      '[Chat'Bot, Chat'Import, Chat'Messages]
  requestClient ChatSpacesMessagesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      force
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesMessagesDeleteResource)
          Core.mempty
