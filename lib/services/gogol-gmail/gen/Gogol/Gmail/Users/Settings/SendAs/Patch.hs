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
-- Module      : Gogol.Gmail.Users.Settings.SendAs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patch the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.patch@.
module Gogol.Gmail.Users.Settings.SendAs.Patch
  ( -- * Resource
    GmailUsersSettingsSendAsPatchResource,

    -- ** Constructing a Request
    newGmailUsersSettingsSendAsPatch,
    GmailUsersSettingsSendAsPatch,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.sendAs.patch@ method which the
-- 'GmailUsersSettingsSendAsPatch' request conforms to.
type GmailUsersSettingsSendAsPatchResource =
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
    Core.:> Core.Patch '[Core.JSON] SendAs

-- | Patch the specified send-as alias.
--
-- /See:/ 'newGmailUsersSettingsSendAsPatch' smart constructor.
data GmailUsersSettingsSendAsPatch = GmailUsersSettingsSendAsPatch
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

-- | Creates a value of 'GmailUsersSettingsSendAsPatch' with the minimum fields required to make a request.
newGmailUsersSettingsSendAsPatch ::
  -- |  Multipart request metadata. See 'payload'.
  SendAs ->
  -- |  The send-as alias to be updated. See 'sendAsEmail'.
  Core.Text ->
  GmailUsersSettingsSendAsPatch
newGmailUsersSettingsSendAsPatch payload sendAsEmail =
  GmailUsersSettingsSendAsPatch
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
    GmailUsersSettingsSendAsPatch
  where
  type Rs GmailUsersSettingsSendAsPatch = SendAs
  type
    Scopes GmailUsersSettingsSendAsPatch =
      '[ "https://www.googleapis.com/auth/gmail.settings.basic",
         "https://www.googleapis.com/auth/gmail.settings.sharing"
       ]
  requestClient GmailUsersSettingsSendAsPatch {..} =
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
              Core.Proxy GmailUsersSettingsSendAsPatchResource
          )
          Core.mempty
