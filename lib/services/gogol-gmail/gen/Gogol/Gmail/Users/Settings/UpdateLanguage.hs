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
-- Module      : Gogol.Gmail.Users.Settings.UpdateLanguage
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates language settings. If successful, the return object contains the @displayLanguage@ that was saved for the user, which may differ from the value passed into the request. This is because the requested @displayLanguage@ may not be directly supported by Gmail but have a close variant that is, and so the variant may be chosen and saved instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateLanguage@.
module Gogol.Gmail.Users.Settings.UpdateLanguage
  ( -- * Resource
    GmailUsersSettingsUpdateLanguageResource,

    -- ** Constructing a Request
    GmailUsersSettingsUpdateLanguage (..),
    newGmailUsersSettingsUpdateLanguage,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.updateLanguage@ method which the
-- 'GmailUsersSettingsUpdateLanguage' request conforms to.
type GmailUsersSettingsUpdateLanguageResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "language"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LanguageSettings
    Core.:> Core.Put '[Core.JSON] LanguageSettings

-- | Updates language settings. If successful, the return object contains the @displayLanguage@ that was saved for the user, which may differ from the value passed into the request. This is because the requested @displayLanguage@ may not be directly supported by Gmail but have a close variant that is, and so the variant may be chosen and saved instead.
--
-- /See:/ 'newGmailUsersSettingsUpdateLanguage' smart constructor.
data GmailUsersSettingsUpdateLanguage = GmailUsersSettingsUpdateLanguage
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LanguageSettings,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsUpdateLanguage' with the minimum fields required to make a request.
newGmailUsersSettingsUpdateLanguage ::
  -- |  Multipart request metadata. See 'payload'.
  LanguageSettings ->
  GmailUsersSettingsUpdateLanguage
newGmailUsersSettingsUpdateLanguage payload =
  GmailUsersSettingsUpdateLanguage
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsUpdateLanguage where
  type Rs GmailUsersSettingsUpdateLanguage = LanguageSettings
  type
    Scopes GmailUsersSettingsUpdateLanguage =
      '[Gmail'Settings'Basic]
  requestClient GmailUsersSettingsUpdateLanguage {..} =
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
          (Core.Proxy :: Core.Proxy GmailUsersSettingsUpdateLanguageResource)
          Core.mempty
