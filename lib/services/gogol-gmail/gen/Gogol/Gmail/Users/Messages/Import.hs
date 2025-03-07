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
-- Module      : Gogol.Gmail.Users.Messages.Import
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a message into only this user\'s mailbox, with standard email delivery scanning and classification similar to receiving via SMTP. This method doesn\'t perform SPF checks, so it might not work for some spam messages, such as those attempting to perform domain spoofing. This method does not send a message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.import@.
module Gogol.Gmail.Users.Messages.Import
  ( -- * Resource
    GmailUsersMessagesImportResource,

    -- ** Constructing a Request
    GmailUsersMessagesImport (..),
    newGmailUsersMessagesImport,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.messages.import@ method which the
-- 'GmailUsersMessagesImport' request conforms to.
type GmailUsersMessagesImportResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "messages"
    Core.:> "import"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "deleted" Core.Bool
    Core.:> Core.QueryParam
              "internalDateSource"
              UsersMessagesImportInternalDateSource
    Core.:> Core.QueryParam "neverMarkSpam" Core.Bool
    Core.:> Core.QueryParam "processForCalendar" Core.Bool
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
    Core.:> "import"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "deleted" Core.Bool
    Core.:> Core.QueryParam
              "internalDateSource"
              UsersMessagesImportInternalDateSource
    Core.:> Core.QueryParam "neverMarkSpam" Core.Bool
    Core.:> Core.QueryParam "processForCalendar" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.Multipart
    Core.:> Core.MultipartRelated '[Core.JSON] Message
    Core.:> Core.Post '[Core.JSON] Message

-- | Imports a message into only this user\'s mailbox, with standard email delivery scanning and classification similar to receiving via SMTP. This method doesn\'t perform SPF checks, so it might not work for some spam messages, such as those attempting to perform domain spoofing. This method does not send a message.
--
-- /See:/ 'newGmailUsersMessagesImport' smart constructor.
data GmailUsersMessagesImport = GmailUsersMessagesImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Mark the email as permanently deleted (not TRASH) and only visible in Google Vault to a Vault administrator. Only used for Google Workspace accounts.
    deleted :: Core.Bool,
    -- | Source for Gmail\'s internal date of the message.
    internalDateSource :: UsersMessagesImportInternalDateSource,
    -- | Ignore the Gmail spam classifier decision and never mark this email as SPAM in the mailbox.
    neverMarkSpam :: Core.Bool,
    -- | Multipart request metadata.
    payload :: Message,
    -- | Process calendar invites in the email and add any extracted meetings to the Google Calendar for this user.
    processForCalendar :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersMessagesImport' with the minimum fields required to make a request.
newGmailUsersMessagesImport ::
  -- |  Multipart request metadata. See 'payload'.
  Message ->
  GmailUsersMessagesImport
newGmailUsersMessagesImport payload =
  GmailUsersMessagesImport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deleted = Core.False,
      internalDateSource =
        UsersMessagesImportInternalDateSource_DateHeader,
      neverMarkSpam = Core.False,
      payload = payload,
      processForCalendar = Core.False,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersMessagesImport where
  type Rs GmailUsersMessagesImport = Message
  type
    Scopes GmailUsersMessagesImport =
      '[Gmail'FullControl, Gmail'Insert, Gmail'Modify]
  requestClient GmailUsersMessagesImport {..} =
    go
      userId
      xgafv
      accessToken
      callback
      (Core.Just deleted)
      (Core.Just internalDateSource)
      (Core.Just neverMarkSpam)
      (Core.Just processForCalendar)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gmailService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GmailUsersMessagesImportResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload GmailUsersMessagesImport)
  where
  type Rs (Core.MediaUpload GmailUsersMessagesImport) = Message
  type
    Scopes (Core.MediaUpload GmailUsersMessagesImport) =
      Core.Scopes GmailUsersMessagesImport
  requestClient (Core.MediaUpload GmailUsersMessagesImport {..} body) =
    go
      userId
      xgafv
      accessToken
      callback
      (Core.Just deleted)
      (Core.Just internalDateSource)
      (Core.Just neverMarkSpam)
      (Core.Just processForCalendar)
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
          (Core.Proxy :: Core.Proxy GmailUsersMessagesImportResource)
          Core.mempty
