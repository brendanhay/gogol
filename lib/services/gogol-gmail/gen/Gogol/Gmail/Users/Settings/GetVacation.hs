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
-- Module      : Gogol.Gmail.Users.Settings.GetVacation
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets vacation responder settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.getVacation@.
module Gogol.Gmail.Users.Settings.GetVacation
  ( -- * Resource
    GmailUsersSettingsGetVacationResource,

    -- ** Constructing a Request
    GmailUsersSettingsGetVacation (..),
    newGmailUsersSettingsGetVacation,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.getVacation@ method which the
-- 'GmailUsersSettingsGetVacation' request conforms to.
type GmailUsersSettingsGetVacationResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "vacation"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] VacationSettings

-- | Gets vacation responder settings.
--
-- /See:/ 'newGmailUsersSettingsGetVacation' smart constructor.
data GmailUsersSettingsGetVacation = GmailUsersSettingsGetVacation
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsGetVacation' with the minimum fields required to make a request.
newGmailUsersSettingsGetVacation ::
  GmailUsersSettingsGetVacation
newGmailUsersSettingsGetVacation =
  GmailUsersSettingsGetVacation
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsGetVacation where
  type Rs GmailUsersSettingsGetVacation = VacationSettings
  type
    Scopes GmailUsersSettingsGetVacation =
      '[ Gmail'FullControl,
         Gmail'Modify,
         Gmail'Readonly,
         Gmail'Settings'Basic
       ]
  requestClient GmailUsersSettingsGetVacation {..} =
    go
      userId
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
          (Core.Proxy :: Core.Proxy GmailUsersSettingsGetVacationResource)
          Core.mempty
