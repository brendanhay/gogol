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
-- Module      : Gogol.Gmail.Users.Messages.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.get@.
module Gogol.Gmail.Users.Messages.Get
  ( -- * Resource
    GmailUsersMessagesGetResource,

    -- ** Constructing a Request
    GmailUsersMessagesGet (..),
    newGmailUsersMessagesGet,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.messages.get@ method which the
-- 'GmailUsersMessagesGet' request conforms to.
type GmailUsersMessagesGetResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "messages"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "format" UsersMessagesGetFormat
    Core.:> Core.QueryParams "metadataHeaders" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Message

-- | Gets the specified message.
--
-- /See:/ 'newGmailUsersMessagesGet' smart constructor.
data GmailUsersMessagesGet = GmailUsersMessagesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The format to return the message in.
    format :: UsersMessagesGetFormat,
    -- | The ID of the message to retrieve. This ID is usually retrieved using @messages.list@. The ID is also contained in the result when a message is inserted (@messages.insert@) or imported (@messages.import@).
    id :: Core.Text,
    -- | When given and format is @METADATA@, only include headers specified.
    metadataHeaders :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersMessagesGet' with the minimum fields required to make a request.
newGmailUsersMessagesGet ::
  -- |  The ID of the message to retrieve. This ID is usually retrieved using @messages.list@. The ID is also contained in the result when a message is inserted (@messages.insert@) or imported (@messages.import@). See 'id'.
  Core.Text ->
  GmailUsersMessagesGet
newGmailUsersMessagesGet id =
  GmailUsersMessagesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      format = UsersMessagesGetFormat_Full,
      id = id,
      metadataHeaders = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersMessagesGet where
  type Rs GmailUsersMessagesGet = Message
  type
    Scopes GmailUsersMessagesGet =
      '[ Gmail'FullControl,
         Gmail'Addons'Current'Message'Action,
         Gmail'Addons'Current'Message'Metadata,
         Gmail'Addons'Current'Message'Readonly,
         Gmail'Metadata,
         Gmail'Modify,
         Gmail'Readonly
       ]
  requestClient GmailUsersMessagesGet {..} =
    go
      userId
      id
      xgafv
      accessToken
      callback
      (Core.Just format)
      (metadataHeaders Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gmailService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GmailUsersMessagesGetResource)
          Core.mempty
