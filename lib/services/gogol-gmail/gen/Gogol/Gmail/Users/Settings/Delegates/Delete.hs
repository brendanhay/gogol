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
-- Module      : Gogol.Gmail.Users.Settings.Delegates.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified delegate (which can be of any verification status), and revokes any verification that may have been required for using it. Note that a delegate user must be referred to by their primary email address, and not an email alias. This method is only available to service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.delegates.delete@.
module Gogol.Gmail.Users.Settings.Delegates.Delete
  ( -- * Resource
    GmailUsersSettingsDelegatesDeleteResource,

    -- ** Constructing a Request
    GmailUsersSettingsDelegatesDelete (..),
    newGmailUsersSettingsDelegatesDelete,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.delegates.delete@ method which the
-- 'GmailUsersSettingsDelegatesDelete' request conforms to.
type GmailUsersSettingsDelegatesDeleteResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "delegates"
    Core.:> Core.Capture "delegateEmail" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Removes the specified delegate (which can be of any verification status), and revokes any verification that may have been required for using it. Note that a delegate user must be referred to by their primary email address, and not an email alias. This method is only available to service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'newGmailUsersSettingsDelegatesDelete' smart constructor.
data GmailUsersSettingsDelegatesDelete = GmailUsersSettingsDelegatesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The email address of the user to be removed as a delegate.
    delegateEmail :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsDelegatesDelete' with the minimum fields required to make a request.
newGmailUsersSettingsDelegatesDelete ::
  -- |  The email address of the user to be removed as a delegate. See 'delegateEmail'.
  Core.Text ->
  GmailUsersSettingsDelegatesDelete
newGmailUsersSettingsDelegatesDelete delegateEmail =
  GmailUsersSettingsDelegatesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      delegateEmail = delegateEmail,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsDelegatesDelete where
  type Rs GmailUsersSettingsDelegatesDelete = ()
  type
    Scopes GmailUsersSettingsDelegatesDelete =
      '[Gmail'Settings'Sharing]
  requestClient GmailUsersSettingsDelegatesDelete {..} =
    go
      userId
      delegateEmail
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
              Core.Proxy GmailUsersSettingsDelegatesDeleteResource
          )
          Core.mempty
