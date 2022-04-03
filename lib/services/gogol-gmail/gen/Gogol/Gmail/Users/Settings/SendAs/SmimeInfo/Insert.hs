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
-- Module      : Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert (upload) the given S\/MIME config for the specified send-as alias. Note that pkcs12 format is required for the key.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.insert@.
module Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.Insert
  ( -- * Resource
    GmailUsersSettingsSendAsSmimeInfoInsertResource,

    -- ** Constructing a Request
    GmailUsersSettingsSendAsSmimeInfoInsert (..),
    newGmailUsersSettingsSendAsSmimeInfoInsert,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.insert@ method which the
-- 'GmailUsersSettingsSendAsSmimeInfoInsert' request conforms to.
type GmailUsersSettingsSendAsSmimeInfoInsertResource =
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
    Core.:> Core.ReqBody '[Core.JSON] SmimeInfo
    Core.:> Core.Post '[Core.JSON] SmimeInfo

-- | Insert (upload) the given S\/MIME config for the specified send-as alias. Note that pkcs12 format is required for the key.
--
-- /See:/ 'newGmailUsersSettingsSendAsSmimeInfoInsert' smart constructor.
data GmailUsersSettingsSendAsSmimeInfoInsert = GmailUsersSettingsSendAsSmimeInfoInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SmimeInfo,
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

-- | Creates a value of 'GmailUsersSettingsSendAsSmimeInfoInsert' with the minimum fields required to make a request.
newGmailUsersSettingsSendAsSmimeInfoInsert ::
  -- |  Multipart request metadata. See 'payload'.
  SmimeInfo ->
  -- |  The email address that appears in the \"From:\" header for mail sent using this alias. See 'sendAsEmail'.
  Core.Text ->
  GmailUsersSettingsSendAsSmimeInfoInsert
newGmailUsersSettingsSendAsSmimeInfoInsert payload sendAsEmail =
  GmailUsersSettingsSendAsSmimeInfoInsert
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
    GmailUsersSettingsSendAsSmimeInfoInsert
  where
  type
    Rs GmailUsersSettingsSendAsSmimeInfoInsert =
      SmimeInfo
  type
    Scopes GmailUsersSettingsSendAsSmimeInfoInsert =
      '[Gmail'Settings'Basic, Gmail'Settings'Sharing]
  requestClient
    GmailUsersSettingsSendAsSmimeInfoInsert {..} =
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
                Core.Proxy
                  GmailUsersSettingsSendAsSmimeInfoInsertResource
            )
            Core.mempty
