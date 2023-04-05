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
-- Module      : Gogol.Chat.Spaces.Messages.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a message. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#read_a_message Read a message>. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts Service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.messages@ or @chat.messages.readonly@ authorization scope. Note: Might return a message from a blocked member or space.
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
import qualified Gogol.Prelude as Core

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

-- | Returns a message. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#read_a_message Read a message>. Requires <https://developers.google.com/chat/api/guides/auth authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts Service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.messages@ or @chat.messages.readonly@ authorization scope. Note: Might return a message from a blocked member or space.
--
-- /See:/ 'newChatSpacesMessagesGet' smart constructor.
data ChatSpacesMessagesGet = ChatSpacesMessagesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the message to retrieve. Format: spaces\/{space}\/messages\/{message} If the message begins with @client-@, then it has a custom name assigned by a Chat app that created it with the Chat REST API. That Chat app (but not others) can pass the custom name to get, update, or delete the message. To learn more, see [create and name a message] (https:\/\/developers.google.com\/chat\/api\/guides\/crudl\/messages#name/a/created_message).
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesGet' with the minimum fields required to make a request.
newChatSpacesMessagesGet ::
  -- |  Required. Resource name of the message to retrieve. Format: spaces\/{space}\/messages\/{message} If the message begins with @client-@, then it has a custom name assigned by a Chat app that created it with the Chat REST API. That Chat app (but not others) can pass the custom name to get, update, or delete the message. To learn more, see [create and name a message] (https:\/\/developers.google.com\/chat\/api\/guides\/crudl\/messages#name/a/created_message). See 'name'.
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
          ( Core.Proxy ::
              Core.Proxy ChatSpacesMessagesGetResource
          )
          Core.mempty
