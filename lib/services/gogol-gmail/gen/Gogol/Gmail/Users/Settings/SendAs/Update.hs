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
-- Module      : Gogol.Gmail.Users.Settings.SendAs.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a send-as alias. If a signature is provided, Gmail will sanitize the HTML before saving it with the alias. Addresses other than the primary address for the account can only be updated by service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.update@.
module Gogol.Gmail.Users.Settings.SendAs.Update
  ( -- * Resource
    GmailUsersSettingsSendAsUpdateResource,

    -- ** Constructing a Request
    newGmailUsersSettingsSendAsUpdate,
    GmailUsersSettingsSendAsUpdate,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.sendAs.update@ method which the
-- 'GmailUsersSettingsSendAsUpdate' request conforms to.
type GmailUsersSettingsSendAsUpdateResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "sendAs"
    Core.:> Core.Capture "sendAsEmail" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SendAs
    Core.:> Core.Put '[Core.JSON] SendAs

-- | Updates a send-as alias. If a signature is provided, Gmail will sanitize the HTML before saving it with the alias. Addresses other than the primary address for the account can only be updated by service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'newGmailUsersSettingsSendAsUpdate' smart constructor.
data GmailUsersSettingsSendAsUpdate = GmailUsersSettingsSendAsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SendAs,
    -- | The send-as alias to be updated.
    sendAsEmail :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsSendAsUpdate' with the minimum fields required to make a request.
newGmailUsersSettingsSendAsUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  SendAs ->
  -- |  The send-as alias to be updated. See 'sendAsEmail'.
  Core.Text ->
  GmailUsersSettingsSendAsUpdate
newGmailUsersSettingsSendAsUpdate payload sendAsEmail =
  GmailUsersSettingsSendAsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      sendAsEmail = sendAsEmail,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance
  Core.GoogleRequest
    GmailUsersSettingsSendAsUpdate
  where
  type Rs GmailUsersSettingsSendAsUpdate = SendAs
  type
    Scopes GmailUsersSettingsSendAsUpdate =
      '[Gmail'Settings'Basic, Gmail'Settings'Sharing]
  requestClient GmailUsersSettingsSendAsUpdate {..} =
    go
      userId
      sendAsEmail
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
          ( Core.Proxy ::
              Core.Proxy GmailUsersSettingsSendAsUpdateResource
          )
          Core.mempty
