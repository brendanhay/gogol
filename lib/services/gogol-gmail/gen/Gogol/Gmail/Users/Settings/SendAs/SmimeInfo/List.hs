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
-- Module      : Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists S\/MIME configs for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.list@.
module Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.List
  ( -- * Resource
    GmailUsersSettingsSendAsSmimeInfoListResource,

    -- ** Constructing a Request
    GmailUsersSettingsSendAsSmimeInfoList (..),
    newGmailUsersSettingsSendAsSmimeInfoList,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.list@ method which the
-- 'GmailUsersSettingsSendAsSmimeInfoList' request conforms to.
type GmailUsersSettingsSendAsSmimeInfoListResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "sendAs"
    Core.:> Core.Capture "sendAsEmail" Core.Text
    Core.:> "smimeInfo"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSmimeInfoResponse

-- | Lists S\/MIME configs for the specified send-as alias.
--
-- /See:/ 'newGmailUsersSettingsSendAsSmimeInfoList' smart constructor.
data GmailUsersSettingsSendAsSmimeInfoList = GmailUsersSettingsSendAsSmimeInfoList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The email address that appears in the \"From:\" header for mail sent using this alias.
    sendAsEmail :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsSendAsSmimeInfoList' with the minimum fields required to make a request.
newGmailUsersSettingsSendAsSmimeInfoList ::
  -- |  The email address that appears in the \"From:\" header for mail sent using this alias. See 'sendAsEmail'.
  Core.Text ->
  GmailUsersSettingsSendAsSmimeInfoList
newGmailUsersSettingsSendAsSmimeInfoList sendAsEmail =
  GmailUsersSettingsSendAsSmimeInfoList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      sendAsEmail = sendAsEmail,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsSendAsSmimeInfoList where
  type
    Rs GmailUsersSettingsSendAsSmimeInfoList =
      ListSmimeInfoResponse
  type
    Scopes GmailUsersSettingsSendAsSmimeInfoList =
      '[ Gmail'FullControl,
         Gmail'Modify,
         Gmail'Readonly,
         Gmail'Settings'Basic,
         Gmail'Settings'Sharing
       ]
  requestClient GmailUsersSettingsSendAsSmimeInfoList {..} =
    go
      userId
      sendAsEmail
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gmailService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GmailUsersSettingsSendAsSmimeInfoListResource
          )
          Core.mempty
