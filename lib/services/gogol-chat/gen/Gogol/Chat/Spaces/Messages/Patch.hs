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
-- Module      : Gogol.Chat.Spaces.Messages.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a message. There\'s a difference between the @patch@ and @update@ methods. The @patch@ method uses a @patch@ request while the @update@ method uses a @put@ request. We recommend using the @patch@ method. For an example, see <https://developers.google.com/workspace/chat/update-messages Update a message>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> When using app authentication, requests can only update messages created by the calling Chat app.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.patch@.
module Gogol.Chat.Spaces.Messages.Patch
  ( -- * Resource
    ChatSpacesMessagesPatchResource,

    -- ** Constructing a Request
    ChatSpacesMessagesPatch (..),
    newChatSpacesMessagesPatch,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.messages.patch@ method which the
-- 'ChatSpacesMessagesPatch' request conforms to.
type ChatSpacesMessagesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowMissing" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Message
    Core.:> Core.Patch '[Core.JSON] Message

-- | Updates a message. There\'s a difference between the @patch@ and @update@ methods. The @patch@ method uses a @patch@ request while the @update@ method uses a @put@ request. We recommend using the @patch@ method. For an example, see <https://developers.google.com/workspace/chat/update-messages Update a message>. Supports the following types of <https://developers.google.com/workspace/chat/authenticate-authorize authentication>: - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app App authentication> - <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user User authentication> When using app authentication, requests can only update messages created by the calling Chat app.
--
-- /See:/ 'newChatSpacesMessagesPatch' smart constructor.
data ChatSpacesMessagesPatch = ChatSpacesMessagesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. If @true@ and the message isn\'t found, a new message is created and @updateMask@ is ignored. The specified message ID must be <https://developers.google.com/workspace/chat/create-messages#name_a_created_message client-assigned> or the request fails.
    allowMissing :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. Resource name of the message. Format: @spaces\/{space}\/messages\/{message}@ Where @{space}@ is the ID of the space where the message is posted and @{message}@ is a system-assigned ID for the message. For example, @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@. If you set a custom ID when you create a message, you can use this ID to specify the message in a request by replacing @{message}@ with the value from the @clientAssignedMessageId@ field. For example, @spaces\/AAAAAAAAAAA\/messages\/client-custom-name@. For details, see <https://developers.google.com/workspace/chat/create-messages#name_a_created_message Name a message>.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Message,
    -- | Required. The field paths to update. Separate multiple values with commas or use @*@ to update all field paths. Currently supported field paths: - @text@ - @attachment@ - @cards@ (Requires </chat/api/guides/auth/service-accounts app authentication>.) - @cards_v2@ (Requires </chat/api/guides/auth/service-accounts app authentication>.) - @accessory_widgets@ (Requires </chat/api/guides/auth/service-accounts app authentication>.)
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesPatch' with the minimum fields required to make a request.
newChatSpacesMessagesPatch ::
  -- |  Identifier. Resource name of the message. Format: @spaces\/{space}\/messages\/{message}@ Where @{space}@ is the ID of the space where the message is posted and @{message}@ is a system-assigned ID for the message. For example, @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@. If you set a custom ID when you create a message, you can use this ID to specify the message in a request by replacing @{message}@ with the value from the @clientAssignedMessageId@ field. For example, @spaces\/AAAAAAAAAAA\/messages\/client-custom-name@. For details, see <https://developers.google.com/workspace/chat/create-messages#name_a_created_message Name a message>. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Message ->
  ChatSpacesMessagesPatch
newChatSpacesMessagesPatch name payload =
  ChatSpacesMessagesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowMissing = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesPatch where
  type Rs ChatSpacesMessagesPatch = Message
  type
    Scopes ChatSpacesMessagesPatch =
      '[Chat'Bot, Chat'Import, Chat'Messages]
  requestClient ChatSpacesMessagesPatch {..} =
    go
      name
      xgafv
      accessToken
      allowMissing
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      chatService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ChatSpacesMessagesPatchResource)
          Core.mempty
