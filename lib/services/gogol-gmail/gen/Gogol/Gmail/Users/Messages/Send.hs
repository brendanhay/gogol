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
-- Module      : Gogol.Gmail.Users.Messages.Send
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends the specified message to the recipients in the @To@, @Cc@, and @Bcc@ headers. For example usage, see <https://developers.google.com/gmail/api/guides/sending Sending email>.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.send@.
module Gogol.Gmail.Users.Messages.Send
  ( -- * Resource
    GmailUsersMessagesSendResource,

    -- ** Constructing a Request
    GmailUsersMessagesSend (..),
    newGmailUsersMessagesSend,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.messages.send@ method which the
-- 'GmailUsersMessagesSend' request conforms to.
type GmailUsersMessagesSendResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "messages"
    Core.:> "send"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Message
    Core.:> Core.Post '[Core.JSON] Message
    Core.:<|> "upload"
    Core.:> "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "messages"
    Core.:> "send"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.Multipart
    Core.:> Core.MultipartRelated '[Core.JSON] Message
    Core.:> Core.Post '[Core.JSON] Message

-- | Sends the specified message to the recipients in the @To@, @Cc@, and @Bcc@ headers. For example usage, see <https://developers.google.com/gmail/api/guides/sending Sending email>.
--
-- /See:/ 'newGmailUsersMessagesSend' smart constructor.
data GmailUsersMessagesSend = GmailUsersMessagesSend
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Message,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersMessagesSend' with the minimum fields required to make a request.
newGmailUsersMessagesSend ::
  -- |  Multipart request metadata. See 'payload'.
  Message ->
  GmailUsersMessagesSend
newGmailUsersMessagesSend payload =
  GmailUsersMessagesSend
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersMessagesSend where
  type Rs GmailUsersMessagesSend = Message
  type
    Scopes GmailUsersMessagesSend =
      '[ Gmail'FullControl,
         Gmail'Addons'Current'Action'Compose,
         Gmail'Compose,
         Gmail'Modify,
         Gmail'Send
       ]
  requestClient GmailUsersMessagesSend {..} =
    go
      userId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gmailService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GmailUsersMessagesSendResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload GmailUsersMessagesSend)
  where
  type Rs (Core.MediaUpload GmailUsersMessagesSend) = Message
  type
    Scopes (Core.MediaUpload GmailUsersMessagesSend) =
      Core.Scopes GmailUsersMessagesSend
  requestClient (Core.MediaUpload GmailUsersMessagesSend {..} body) =
    go
      userId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      (Core.Just Core.Multipart)
      payload
      body
      gmailService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GmailUsersMessagesSendResource)
          Core.mempty
