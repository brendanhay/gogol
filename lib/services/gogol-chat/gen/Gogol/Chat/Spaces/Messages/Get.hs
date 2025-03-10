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
-- Module      : Gogol.Chat.Spaces.Messages.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about a message. For an example, see <https://developers.google.com/workspace/chat/get-messages Get details about a message>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> Note: Might return a message from a blocked member or space.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.get@.
module Gogol.Chat.Spaces.Messages.Get
  ( -- * Resource
    ChatSpacesMessagesGetResource,

    -- ** Constructing a Request
    ChatSpacesMessagesGet (..),
    newChatSpacesMessagesGet,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.messages.get@ method which the
-- 'ChatSpacesMessagesGet' request conforms to.
type ChatSpacesMessagesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Message

-- | Returns details about a message. For an example, see <https://developers.google.com/workspace/chat/get-messages Get details about a message>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> Note: Might return a message from a blocked member or space.
--
-- /See:/ 'newChatSpacesMessagesGet' smart constructor.
data ChatSpacesMessagesGet = ChatSpacesMessagesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the message. Format: @spaces\/{space}\/messages\/{message}@ If you\'ve set a custom ID for your message, you can use the value from the @clientAssignedMessageId@ field for @{message}@. For details, see [Name a message] (https:\/\/developers.google.com\/workspace\/chat\/create-messages#name/a/created_message).
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesGet' with the minimum fields required to make a request.
newChatSpacesMessagesGet ::
  -- |  Required. Resource name of the message. Format: @spaces\/{space}\/messages\/{message}@ If you\'ve set a custom ID for your message, you can use the value from the @clientAssignedMessageId@ field for @{message}@. For details, see [Name a message] (https:\/\/developers.google.com\/workspace\/chat\/create-messages#name/a/created_message). See 'name'.
  Core.Text ->
  ChatSpacesMessagesGet
newChatSpacesMessagesGet name =
  ChatSpacesMessagesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesGet where
  type Rs ChatSpacesMessagesGet = Message
  type
    Scopes ChatSpacesMessagesGet =
      '[Chat'Bot, Chat'Messages, Chat'Messages'Readonly]
  requestClient ChatSpacesMessagesGet {..} =
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
          (Core.Proxy :: Core.Proxy ChatSpacesMessagesGetResource)
          Core.mempty
