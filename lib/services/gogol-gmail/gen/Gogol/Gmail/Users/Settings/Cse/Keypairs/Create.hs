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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Keypairs.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and uploads a client-side encryption S\/MIME public key certificate chain and private key metadata for the authenticated user.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.keypairs.create@.
module Gogol.Gmail.Users.Settings.Cse.Keypairs.Create
  ( -- * Resource
    GmailUsersSettingsCseKeypairsCreateResource,

    -- ** Constructing a Request
    GmailUsersSettingsCseKeypairsCreate (..),
    newGmailUsersSettingsCseKeypairsCreate,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.cse.keypairs.create@ method which the
-- 'GmailUsersSettingsCseKeypairsCreate' request conforms to.
type GmailUsersSettingsCseKeypairsCreateResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "cse"
    Core.:> "keypairs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CseKeyPair
    Core.:> Core.Post '[Core.JSON] CseKeyPair

-- | Creates and uploads a client-side encryption S\/MIME public key certificate chain and private key metadata for the authenticated user.
--
-- /See:/ 'newGmailUsersSettingsCseKeypairsCreate' smart constructor.
data GmailUsersSettingsCseKeypairsCreate = GmailUsersSettingsCseKeypairsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CseKeyPair,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseKeypairsCreate' with the minimum fields required to make a request.
newGmailUsersSettingsCseKeypairsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  CseKeyPair ->
  GmailUsersSettingsCseKeypairsCreate
newGmailUsersSettingsCseKeypairsCreate payload =
  GmailUsersSettingsCseKeypairsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsCseKeypairsCreate where
  type Rs GmailUsersSettingsCseKeypairsCreate = CseKeyPair
  type
    Scopes GmailUsersSettingsCseKeypairsCreate =
      '[Gmail'Settings'Basic, Gmail'Settings'Sharing]
  requestClient GmailUsersSettingsCseKeypairsCreate {..} =
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
              Core.Proxy GmailUsersSettingsCseKeypairsCreateResource
          )
          Core.mempty
