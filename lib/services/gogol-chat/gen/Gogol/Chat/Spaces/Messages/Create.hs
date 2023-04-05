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
-- Module      : Gogol.Chat.Spaces.Messages.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a message. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#create_a_message Create a message>. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.messages@ or @chat.messages.create@ authorization scope. Because Chat provides authentication for <https://developers.google.com/chat/how-tos/webhooks webhooks> as part of the URL that\'s generated when a webhook is registered, webhooks can create messages without a service account or user authentication.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.create@.
module Gogol.Chat.Spaces.Messages.Create
  ( -- * Resource
    ChatSpacesMessagesCreateResource,

    -- ** Constructing a Request
    ChatSpacesMessagesCreate (..),
    newChatSpacesMessagesCreate,
  )
where

import Gogol.Chat.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @chat.spaces.messages.create@ method which the
-- 'ChatSpacesMessagesCreate' request conforms to.
type ChatSpacesMessagesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "messages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "messageId" Core.Text
    Core.:> Core.QueryParam
              "messageReplyOption"
              SpacesMessagesCreateMessageReplyOption
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "threadKey" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Message
    Core.:> Core.Post '[Core.JSON] Message

-- | Creates a message. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#create_a_message Create a message>. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.messages@ or @chat.messages.create@ authorization scope. Because Chat provides authentication for <https://developers.google.com/chat/how-tos/webhooks webhooks> as part of the URL that\'s generated when a webhook is registered, webhooks can create messages without a service account or user authentication.
--
-- /See:/ 'newChatSpacesMessagesCreate' smart constructor.
data ChatSpacesMessagesCreate = ChatSpacesMessagesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A custom name for a Chat message assigned at creation. Must start with @client-@ and contain only lowercase letters, numbers, and hyphens up to 63 characters in length. Specify this field to get, update, or delete the message with the specified value. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message Name a created message>.
    messageId :: (Core.Maybe Core.Text),
    -- | Optional. Specifies whether a message starts a thread or replies to one. Only supported in named spaces.
    messageReplyOption :: (Core.Maybe SpacesMessagesCreateMessageReplyOption),
    -- | Required. The resource name of the space in which to create a message. Format: spaces\/{space}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Message,
    -- | Optional. A unique request ID for this message. Specifying an existing request ID returns the message created with that ID instead of creating a new message.
    requestId :: (Core.Maybe Core.Text),
    -- | Optional. Deprecated: Use thread.thread_key instead. Opaque thread identifier. To start or add to a thread, create a message and specify a @threadKey@ or the thread.name. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread Start or reply to a message thread>.
    threadKey :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesCreate' with the minimum fields required to make a request.
newChatSpacesMessagesCreate ::
  -- |  Required. The resource name of the space in which to create a message. Format: spaces\/{space} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Message ->
  ChatSpacesMessagesCreate
newChatSpacesMessagesCreate parent payload =
  ChatSpacesMessagesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      messageId = Core.Nothing,
      messageReplyOption = Core.Nothing,
      parent = parent,
      payload = payload,
      requestId = Core.Nothing,
      threadKey = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesCreate where
  type Rs ChatSpacesMessagesCreate = Message
  type
    Scopes ChatSpacesMessagesCreate =
      '[Chat'Bot, Chat'Messages, Chat'Messages'Create]
  requestClient ChatSpacesMessagesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      messageId
      messageReplyOption
      requestId
      threadKey
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      chatService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ChatSpacesMessagesCreateResource
          )
          Core.mempty
