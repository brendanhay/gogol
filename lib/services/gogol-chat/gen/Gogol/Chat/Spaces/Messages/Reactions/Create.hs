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
-- Module      : Gogol.Chat.Spaces.Messages.Reactions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a reaction and adds it to a message. For an example, see <https://developers.google.com/workspace/chat/create-reactions Add a reaction to a message>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.reactions.create@.
module Gogol.Chat.Spaces.Messages.Reactions.Create
  ( -- * Resource
    ChatSpacesMessagesReactionsCreateResource,

    -- ** Constructing a Request
    ChatSpacesMessagesReactionsCreate (..),
    newChatSpacesMessagesReactionsCreate,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.messages.reactions.create@ method which the
-- 'ChatSpacesMessagesReactionsCreate' request conforms to.
type ChatSpacesMessagesReactionsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "reactions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Reaction
    Core.:> Core.Post '[Core.JSON] Reaction

-- | Creates a reaction and adds it to a message. For an example, see <https://developers.google.com/workspace/chat/create-reactions Add a reaction to a message>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-user user authentication>.
--
-- /See:/ 'newChatSpacesMessagesReactionsCreate' smart constructor.
data ChatSpacesMessagesReactionsCreate = ChatSpacesMessagesReactionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The message where the reaction is created. Format: @spaces\/{space}\/messages\/{message}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Reaction,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesReactionsCreate' with the minimum fields required to make a request.
newChatSpacesMessagesReactionsCreate ::
  -- |  Required. The message where the reaction is created. Format: @spaces\/{space}\/messages\/{message}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Reaction ->
  ChatSpacesMessagesReactionsCreate
newChatSpacesMessagesReactionsCreate parent payload =
  ChatSpacesMessagesReactionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesReactionsCreate where
  type Rs ChatSpacesMessagesReactionsCreate = Reaction
  type
    Scopes ChatSpacesMessagesReactionsCreate =
      '[ Chat'Import,
         Chat'Messages,
         Chat'Messages'Reactions,
         Chat'Messages'Reactions'Create
       ]
  requestClient ChatSpacesMessagesReactionsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      chatService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ChatSpacesMessagesReactionsCreateResource
          )
          Core.mempty
