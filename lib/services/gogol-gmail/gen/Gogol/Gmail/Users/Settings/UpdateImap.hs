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
-- Module      : Gogol.Gmail.Users.Settings.UpdateImap
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates IMAP settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateImap@.
module Gogol.Gmail.Users.Settings.UpdateImap
  ( -- * Resource
    GmailUsersSettingsUpdateImapResource,

    -- ** Constructing a Request
    GmailUsersSettingsUpdateImap (..),
    newGmailUsersSettingsUpdateImap,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.updateImap@ method which the
-- 'GmailUsersSettingsUpdateImap' request conforms to.
type GmailUsersSettingsUpdateImapResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "imap"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ImapSettings
    Core.:> Core.Put '[Core.JSON] ImapSettings

-- | Updates IMAP settings.
--
-- /See:/ 'newGmailUsersSettingsUpdateImap' smart constructor.
data GmailUsersSettingsUpdateImap = GmailUsersSettingsUpdateImap
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ImapSettings,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsUpdateImap' with the minimum fields required to make a request.
newGmailUsersSettingsUpdateImap ::
  -- |  Multipart request metadata. See 'payload'.
  ImapSettings ->
  GmailUsersSettingsUpdateImap
newGmailUsersSettingsUpdateImap payload =
  GmailUsersSettingsUpdateImap
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsUpdateImap where
  type Rs GmailUsersSettingsUpdateImap = ImapSettings
  type Scopes GmailUsersSettingsUpdateImap = '[Gmail'Settings'Basic]
  requestClient GmailUsersSettingsUpdateImap {..} =
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
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GmailUsersSettingsUpdateImapResource)
          Core.mempty
