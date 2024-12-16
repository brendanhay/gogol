{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
-- Creates a message in a Google Chat space. For an example, see <https://developers.google.com/workspace/chat/create-messages Send a message>. The @create()@ method requires either <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication> or <https://developers.google.com/workspace/chat/authorize-import app authentication>. Chat attributes the message sender differently depending on the type of authentication that you use in your request. The following image shows how Chat attributes a message when you use app authentication. Chat displays the Chat app as the message sender. The content of the message can contain text (@text@), cards (@cardsV2@), and accessory widgets (@accessoryWidgets@). <<https://developers.google.com/workspace/chat/images/message-app-auth.svg Message sent with app authentication>> The following image shows how Chat attributes a message when you use user authentication. Chat displays the user as the message sender and attributes the Chat app to the
-- message by displaying its name. The content of message can only contain text (@text@). <<https://developers.google.com/workspace/chat/images/message-user-auth.svg Message sent with user authentication>> The maximum message size, including the message contents, is 32,000 bytes. For <https://developers.google.com/workspace/chat/quickstart/webhooks webhook> requests, the response doesn\'t contain the full message. The response only populates the @name@ and @thread.name@ fields in addition to the information that was in the request.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.create@.
module Gogol.Chat.Spaces.Messages.Create
    (
    -- * Resource
      ChatSpacesMessagesCreateResource

    -- ** Constructing a Request
    , ChatSpacesMessagesCreate (..)
    , newChatSpacesMessagesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Chat.Types

-- | A resource alias for @chat.spaces.messages.create@ method which the
-- 'ChatSpacesMessagesCreate' request conforms to.
type ChatSpacesMessagesCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "messages" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "messageId" Core.Text Core.:>
                   Core.QueryParam "messageReplyOption"
                     SpacesMessagesCreateMessageReplyOption
                     Core.:>
                     Core.QueryParam "requestId" Core.Text Core.:>
                       Core.QueryParam "threadKey" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] Message Core.:>
                                 Core.Post '[Core.JSON] Message

-- | Creates a message in a Google Chat space. For an example, see <https://developers.google.com/workspace/chat/create-messages Send a message>. The @create()@ method requires either <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication> or <https://developers.google.com/workspace/chat/authorize-import app authentication>. Chat attributes the message sender differently depending on the type of authentication that you use in your request. The following image shows how Chat attributes a message when you use app authentication. Chat displays the Chat app as the message sender. The content of the message can contain text (@text@), cards (@cardsV2@), and accessory widgets (@accessoryWidgets@). <<https://developers.google.com/workspace/chat/images/message-app-auth.svg Message sent with app authentication>> The following image shows how Chat attributes a message when you use user authentication. Chat displays the user as the message sender and attributes the Chat app to the
-- message by displaying its name. The content of message can only contain text (@text@). <<https://developers.google.com/workspace/chat/images/message-user-auth.svg Message sent with user authentication>> The maximum message size, including the message contents, is 32,000 bytes. For <https://developers.google.com/workspace/chat/quickstart/webhooks webhook> requests, the response doesn\'t contain the full message. The response only populates the @name@ and @thread.name@ fields in addition to the information that was in the request.
--
-- /See:/ 'newChatSpacesMessagesCreate' smart constructor.
data ChatSpacesMessagesCreate = ChatSpacesMessagesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A custom ID for a message. Lets Chat apps get, update, or delete a message without needing to store the system-assigned ID in the message\'s resource name (represented in the message @name@ field). The value for this field must meet the following requirements: * Begins with @client-@. For example, @client-custom-name@ is a valid custom ID, but @custom-name@ is not. * Contains up to 63 characters and only lowercase letters, numbers, and hyphens. * Is unique within a space. A Chat app can\'t use the same custom ID for different messages. For details, see <https://developers.google.com/workspace/chat/create-messages#name_a_created_message Name a message>.
    , messageId :: (Core.Maybe Core.Text)
      -- | Optional. Specifies whether a message starts a thread or replies to one. Only supported in named spaces. When <https://developers.google.com/workspace/chat/receive-respond-interactions responding to user interactions>, this field is ignored. For interactions within a thread, the reply is created in the same thread. Otherwise, the reply is created as a new thread.
    , messageReplyOption :: (Core.Maybe SpacesMessagesCreateMessageReplyOption)
      -- | Required. The resource name of the space in which to create a message. Format: @spaces\/{space}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Message
      -- | Optional. A unique request ID for this message. Specifying an existing request ID returns the message created with that ID instead of creating a new message.
    , requestId :: (Core.Maybe Core.Text)
      -- | Optional. Deprecated: Use thread.thread_key instead. ID for the thread. Supports up to 4000 characters. To start or add to a thread, create a message and specify a @threadKey@ or the thread.name. For example usage, see <https://developers.google.com/workspace/chat/create-messages#create-message-thread Start or reply to a message thread>.
    , threadKey :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesCreate' with the minimum fields required to make a request.
newChatSpacesMessagesCreate 
    ::  Core.Text
       -- ^  Required. The resource name of the space in which to create a message. Format: @spaces\/{space}@ See 'parent'.
    -> Message
       -- ^  Multipart request metadata. See 'payload'.
    -> ChatSpacesMessagesCreate
newChatSpacesMessagesCreate parent payload =
  ChatSpacesMessagesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , messageId = Core.Nothing
    , messageReplyOption = Core.Nothing
    , parent = parent
    , payload = payload
    , requestId = Core.Nothing
    , threadKey = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesCreate
         where
        type Rs ChatSpacesMessagesCreate = Message
        type Scopes ChatSpacesMessagesCreate =
             '[Chat'Bot, Chat'Import, Chat'Messages,
               Chat'Messages'Create]
        requestClient ChatSpacesMessagesCreate{..}
          = go parent xgafv accessToken callback messageId
              messageReplyOption
              requestId
              threadKey
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              chatService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ChatSpacesMessagesCreateResource)
                      Core.mempty

