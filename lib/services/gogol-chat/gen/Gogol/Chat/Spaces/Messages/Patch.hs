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
-- Module      : Gogol.Chat.Spaces.Messages.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a message. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#update_a_message Update a message>. Requires <https://developers.google.com/chat/api/guides/auth/ authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.messages@ authorization scope.
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
import qualified Gogol.Prelude as Core

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

-- | Updates a message. For example usage, see <https://developers.google.com/chat/api/guides/crudl/messages#update_a_message Update a message>. Requires <https://developers.google.com/chat/api/guides/auth/ authentication>. Fully supports <https://developers.google.com/chat/api/guides/auth/service-accounts service account authentication>. Supports <https://developers.google.com/chat/api/guides/auth/users user authentication> as part of the <https://developers.google.com/workspace/preview Google Workspace Developer Preview Program>, which grants early access to certain features. <https://developers.google.com/chat/api/guides/auth/users User authentication> requires the @chat.messages@ authorization scope.
--
-- /See:/ 'newChatSpacesMessagesPatch' smart constructor.
data ChatSpacesMessagesPatch = ChatSpacesMessagesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. If @true@ and the message is not found, a new message is created and @updateMask@ is ignored. The specified message ID must be <https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message client-assigned> or the request fails.
    allowMissing :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Resource name in the form @spaces\/*\/messages\/*@. Example: @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Message,
    -- | Required. The field paths to update. Separate multiple values with commas. Currently supported field paths: - text - cards (Requires </chat/api/guides/auth/service-accounts service account authentication>.) - cards_v2
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesPatch' with the minimum fields required to make a request.
newChatSpacesMessagesPatch ::
  -- |  Resource name in the form @spaces\/*\/messages\/*@. Example: @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@ See 'name'.
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
      '[Chat'Bot, Chat'Messages]
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
          ( Core.Proxy ::
              Core.Proxy ChatSpacesMessagesPatchResource
          )
          Core.mempty
