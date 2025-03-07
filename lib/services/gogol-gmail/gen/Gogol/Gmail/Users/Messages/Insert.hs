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
-- Module      : Gogol.Gmail.Users.Messages.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Directly inserts a message into only this user\'s mailbox similar to @IMAP APPEND@, bypassing most scanning and classification. Does not send a message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.insert@.
module Gogol.Gmail.Users.Messages.Insert
  ( -- * Resource
    GmailUsersMessagesInsertResource,

    -- ** Constructing a Request
    GmailUsersMessagesInsert (..),
    newGmailUsersMessagesInsert,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.messages.insert@ method which the
-- 'GmailUsersMessagesInsert' request conforms to.
type GmailUsersMessagesInsertResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "messages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "deleted" Core.Bool
    Core.:> Core.QueryParam
              "internalDateSource"
              UsersMessagesInsertInternalDateSource
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
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "deleted" Core.Bool
    Core.:> Core.QueryParam
              "internalDateSource"
              UsersMessagesInsertInternalDateSource
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.Multipart
    Core.:> Core.MultipartRelated '[Core.JSON] Message
    Core.:> Core.Post '[Core.JSON] Message

-- | Directly inserts a message into only this user\'s mailbox similar to @IMAP APPEND@, bypassing most scanning and classification. Does not send a message.
--
-- /See:/ 'newGmailUsersMessagesInsert' smart constructor.
data GmailUsersMessagesInsert = GmailUsersMessagesInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Mark the email as permanently deleted (not TRASH) and only visible in Google Vault to a Vault administrator. Only used for Google Workspace accounts.
    deleted :: Core.Bool,
    -- | Source for Gmail\'s internal date of the message.
    internalDateSource :: UsersMessagesInsertInternalDateSource,
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

-- | Creates a value of 'GmailUsersMessagesInsert' with the minimum fields required to make a request.
newGmailUsersMessagesInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Message ->
  GmailUsersMessagesInsert
newGmailUsersMessagesInsert payload =
  GmailUsersMessagesInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deleted = Core.False,
      internalDateSource =
        UsersMessagesInsertInternalDateSource_ReceivedTime,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersMessagesInsert where
  type Rs GmailUsersMessagesInsert = Message
  type
    Scopes GmailUsersMessagesInsert =
      '[Gmail'FullControl, Gmail'Insert, Gmail'Modify]
  requestClient GmailUsersMessagesInsert {..} =
    go
      userId
      xgafv
      accessToken
      callback
      (Core.Just deleted)
      (Core.Just internalDateSource)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gmailService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GmailUsersMessagesInsertResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload GmailUsersMessagesInsert)
  where
  type Rs (Core.MediaUpload GmailUsersMessagesInsert) = Message
  type
    Scopes (Core.MediaUpload GmailUsersMessagesInsert) =
      Core.Scopes GmailUsersMessagesInsert
  requestClient (Core.MediaUpload GmailUsersMessagesInsert {..} body) =
    go
      userId
      xgafv
      accessToken
      callback
      (Core.Just deleted)
      (Core.Just internalDateSource)
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
          (Core.Proxy :: Core.Proxy GmailUsersMessagesInsertResource)
          Core.mempty
