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
-- Module      : Gogol.Gmail.Users.Settings.UpdateVacation
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates vacation responder settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateVacation@.
module Gogol.Gmail.Users.Settings.UpdateVacation
  ( -- * Resource
    GmailUsersSettingsUpdateVacationResource,

    -- ** Constructing a Request
    newGmailUsersSettingsUpdateVacation,
    GmailUsersSettingsUpdateVacation,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.updateVacation@ method which the
-- 'GmailUsersSettingsUpdateVacation' request conforms to.
type GmailUsersSettingsUpdateVacationResource =
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
    Core.:> Core.ReqBody '[Core.JSON] VacationSettings
    Core.:> Core.Put '[Core.JSON] VacationSettings

-- | Updates vacation responder settings.
--
-- /See:/ 'newGmailUsersSettingsUpdateVacation' smart constructor.
data GmailUsersSettingsUpdateVacation = GmailUsersSettingsUpdateVacation
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: VacationSettings,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsUpdateVacation' with the minimum fields required to make a request.
newGmailUsersSettingsUpdateVacation ::
  -- |  Multipart request metadata. See 'payload'.
  VacationSettings ->
  GmailUsersSettingsUpdateVacation
newGmailUsersSettingsUpdateVacation payload =
  GmailUsersSettingsUpdateVacation
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance
  Core.GoogleRequest
    GmailUsersSettingsUpdateVacation
  where
  type
    Rs GmailUsersSettingsUpdateVacation =
      VacationSettings
  type
    Scopes GmailUsersSettingsUpdateVacation =
      '[Gmail'Settings'Basic]
  requestClient GmailUsersSettingsUpdateVacation {..} =
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
          ( Core.Proxy ::
              Core.Proxy GmailUsersSettingsUpdateVacationResource
          )
          Core.mempty
