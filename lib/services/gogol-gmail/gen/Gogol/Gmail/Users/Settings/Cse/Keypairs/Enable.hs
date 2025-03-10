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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Keypairs.Enable
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Turns on a client-side encryption key pair that was turned off. The key pair becomes active again for any associated client-side encryption identities.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.keypairs.enable@.
module Gogol.Gmail.Users.Settings.Cse.Keypairs.Enable
  ( -- * Resource
    GmailUsersSettingsCseKeypairsEnableResource,

    -- ** Constructing a Request
    GmailUsersSettingsCseKeypairsEnable (..),
    newGmailUsersSettingsCseKeypairsEnable,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.cse.keypairs.enable@ method which the
-- 'GmailUsersSettingsCseKeypairsEnable' request conforms to.
type GmailUsersSettingsCseKeypairsEnableResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "cse"
    Core.:> "keypairs"
    Core.:> Core.CaptureMode "keyPairId" "enable" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EnableCseKeyPairRequest
    Core.:> Core.Post '[Core.JSON] CseKeyPair

-- | Turns on a client-side encryption key pair that was turned off. The key pair becomes active again for any associated client-side encryption identities.
--
-- /See:/ 'newGmailUsersSettingsCseKeypairsEnable' smart constructor.
data GmailUsersSettingsCseKeypairsEnable = GmailUsersSettingsCseKeypairsEnable
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The identifier of the key pair to turn on.
    keyPairId :: Core.Text,
    -- | Multipart request metadata.
    payload :: EnableCseKeyPairRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseKeypairsEnable' with the minimum fields required to make a request.
newGmailUsersSettingsCseKeypairsEnable ::
  -- |  The identifier of the key pair to turn on. See 'keyPairId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EnableCseKeyPairRequest ->
  GmailUsersSettingsCseKeypairsEnable
newGmailUsersSettingsCseKeypairsEnable keyPairId payload =
  GmailUsersSettingsCseKeypairsEnable
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      keyPairId = keyPairId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsCseKeypairsEnable where
  type Rs GmailUsersSettingsCseKeypairsEnable = CseKeyPair
  type
    Scopes GmailUsersSettingsCseKeypairsEnable =
      '[Gmail'Settings'Basic, Gmail'Settings'Sharing]
  requestClient GmailUsersSettingsCseKeypairsEnable {..} =
    go
      userId
      keyPairId
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
              Core.Proxy GmailUsersSettingsCseKeypairsEnableResource
          )
          Core.mempty
