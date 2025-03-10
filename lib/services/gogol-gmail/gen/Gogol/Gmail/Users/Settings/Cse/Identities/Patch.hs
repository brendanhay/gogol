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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Identities.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a different key pair with an existing client-side encryption identity. The updated key pair must validate against Google\'s <https://support.google.com/a/answer/7300887 S\/MIME certificate profiles>.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.identities.patch@.
module Gogol.Gmail.Users.Settings.Cse.Identities.Patch
  ( -- * Resource
    GmailUsersSettingsCseIdentitiesPatchResource,

    -- ** Constructing a Request
    GmailUsersSettingsCseIdentitiesPatch (..),
    newGmailUsersSettingsCseIdentitiesPatch,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.cse.identities.patch@ method which the
-- 'GmailUsersSettingsCseIdentitiesPatch' request conforms to.
type GmailUsersSettingsCseIdentitiesPatchResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "cse"
    Core.:> "identities"
    Core.:> Core.Capture "emailAddress" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CseIdentity
    Core.:> Core.Patch '[Core.JSON] CseIdentity

-- | Associates a different key pair with an existing client-side encryption identity. The updated key pair must validate against Google\'s <https://support.google.com/a/answer/7300887 S\/MIME certificate profiles>.
--
-- /See:/ 'newGmailUsersSettingsCseIdentitiesPatch' smart constructor.
data GmailUsersSettingsCseIdentitiesPatch = GmailUsersSettingsCseIdentitiesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The email address of the client-side encryption identity to update.
    emailAddress :: Core.Text,
    -- | Multipart request metadata.
    payload :: CseIdentity,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseIdentitiesPatch' with the minimum fields required to make a request.
newGmailUsersSettingsCseIdentitiesPatch ::
  -- |  The email address of the client-side encryption identity to update. See 'emailAddress'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CseIdentity ->
  GmailUsersSettingsCseIdentitiesPatch
newGmailUsersSettingsCseIdentitiesPatch emailAddress payload =
  GmailUsersSettingsCseIdentitiesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      emailAddress = emailAddress,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsCseIdentitiesPatch where
  type Rs GmailUsersSettingsCseIdentitiesPatch = CseIdentity
  type
    Scopes GmailUsersSettingsCseIdentitiesPatch =
      '[Gmail'Settings'Basic, Gmail'Settings'Sharing]
  requestClient GmailUsersSettingsCseIdentitiesPatch {..} =
    go
      userId
      emailAddress
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
              Core.Proxy GmailUsersSettingsCseIdentitiesPatchResource
          )
          Core.mempty
