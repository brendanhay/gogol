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
-- Module      : Gogol.Chat.Spaces.Messages.Attachments.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of a message attachment. The attachment data is fetched using the <https://developers.google.com/workspace/chat/api/reference/rest/v1/media/download media API>. For an example, see <https://developers.google.com/workspace/chat/get-media-attachments Get metadata about a message attachment>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app app authentication>.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.attachments.get@.
module Gogol.Chat.Spaces.Messages.Attachments.Get
  ( -- * Resource
    ChatSpacesMessagesAttachmentsGetResource,

    -- ** Constructing a Request
    ChatSpacesMessagesAttachmentsGet (..),
    newChatSpacesMessagesAttachmentsGet,
  )
where

import Gogol.Chat.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @chat.spaces.messages.attachments.get@ method which the
-- 'ChatSpacesMessagesAttachmentsGet' request conforms to.
type ChatSpacesMessagesAttachmentsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Attachment

-- | Gets the metadata of a message attachment. The attachment data is fetched using the <https://developers.google.com/workspace/chat/api/reference/rest/v1/media/download media API>. For an example, see <https://developers.google.com/workspace/chat/get-media-attachments Get metadata about a message attachment>. Requires <https://developers.google.com/workspace/chat/authenticate-authorize-chat-app app authentication>.
--
-- /See:/ 'newChatSpacesMessagesAttachmentsGet' smart constructor.
data ChatSpacesMessagesAttachmentsGet = ChatSpacesMessagesAttachmentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the attachment, in the form @spaces\/{space}\/messages\/{message}\/attachments\/{attachment}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChatSpacesMessagesAttachmentsGet' with the minimum fields required to make a request.
newChatSpacesMessagesAttachmentsGet ::
  -- |  Required. Resource name of the attachment, in the form @spaces\/{space}\/messages\/{message}\/attachments\/{attachment}@. See 'name'.
  Core.Text ->
  ChatSpacesMessagesAttachmentsGet
newChatSpacesMessagesAttachmentsGet name =
  ChatSpacesMessagesAttachmentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ChatSpacesMessagesAttachmentsGet where
  type Rs ChatSpacesMessagesAttachmentsGet = Attachment
  type Scopes ChatSpacesMessagesAttachmentsGet = '[Chat'Bot]
  requestClient ChatSpacesMessagesAttachmentsGet {..} =
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
          (Core.Proxy :: Core.Proxy ChatSpacesMessagesAttachmentsGetResource)
          Core.mempty
