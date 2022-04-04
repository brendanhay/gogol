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
-- Module      : Gogol.Chat.Spaces.Messages.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a message.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.update@.
module Gogol.Chat.Spaces.Messages.Update
  ( -- * Resource
    ChatSpacesMessagesUpdateResource,

    -- ** Constructing a Request
    ChatSpacesMessagesUpdate (..),
    newChatSpacesMessagesUpdate,
  )
where

import Gogol.Chat.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @chat.spaces.messages.update@ method which the
-- 'ChatSpacesMessagesUpdate' request conforms to.
type ChatSpacesMessagesUpdateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Message
    Core.:> Core.Put '[Core.JSON] Message

-- | Updates a message.
--
-- /See:/ 'newChatSpacesMessagesUpdate' smart constructor.
data ChatSpacesMessagesUpdate = ChatSpacesMessagesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Resource name in the form @spaces\/*\/messages\/*@. Example: @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Message,
    -- | Required. The field paths to be updated, comma separated if there are multiple. Currently supported field paths: * text * cards * attachment
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesUpdate' with the minimum fields required to make a request.
newChatSpacesMessagesUpdate ::
  -- |  Resource name in the form @spaces\/*\/messages\/*@. Example: @spaces\/AAAAAAAAAAA\/messages\/BBBBBBBBBBB.BBBBBBBBBBB@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Message ->
  ChatSpacesMessagesUpdate
newChatSpacesMessagesUpdate name payload =
  ChatSpacesMessagesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesUpdate where
  type Rs ChatSpacesMessagesUpdate = Message
  type Scopes ChatSpacesMessagesUpdate = '[]
  requestClient ChatSpacesMessagesUpdate {..} =
    go
      name
      xgafv
      accessToken
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
              Core.Proxy ChatSpacesMessagesUpdateResource
          )
          Core.mempty
