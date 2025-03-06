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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Keypairs.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an existing client-side encryption key pair.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.keypairs.get@.
module Gogol.Gmail.Users.Settings.Cse.Keypairs.Get
  ( -- * Resource
    GmailUsersSettingsCseKeypairsGetResource,

    -- ** Constructing a Request
    GmailUsersSettingsCseKeypairsGet (..),
    newGmailUsersSettingsCseKeypairsGet,
  )
where

import Gogol.Gmail.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gmail.users.settings.cse.keypairs.get@ method which the
-- 'GmailUsersSettingsCseKeypairsGet' request conforms to.
type GmailUsersSettingsCseKeypairsGetResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "cse"
    Core.:> "keypairs"
    Core.:> Core.Capture "keyPairId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CseKeyPair

-- | Retrieves an existing client-side encryption key pair.
--
-- /See:/ 'newGmailUsersSettingsCseKeypairsGet' smart constructor.
data GmailUsersSettingsCseKeypairsGet = GmailUsersSettingsCseKeypairsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The identifier of the key pair to retrieve.
    keyPairId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseKeypairsGet' with the minimum fields required to make a request.
newGmailUsersSettingsCseKeypairsGet ::
  -- |  The identifier of the key pair to retrieve. See 'keyPairId'.
  Core.Text ->
  GmailUsersSettingsCseKeypairsGet
newGmailUsersSettingsCseKeypairsGet keyPairId =
  GmailUsersSettingsCseKeypairsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      keyPairId = keyPairId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance Core.GoogleRequest GmailUsersSettingsCseKeypairsGet where
  type Rs GmailUsersSettingsCseKeypairsGet = CseKeyPair
  type
    Scopes GmailUsersSettingsCseKeypairsGet =
      '[ Gmail'FullControl,
         Gmail'Modify,
         Gmail'Readonly,
         Gmail'Settings'Basic,
         Gmail'Settings'Sharing
       ]
  requestClient GmailUsersSettingsCseKeypairsGet {..} =
    go
      userId
      keyPairId
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
          (Core.Proxy :: Core.Proxy GmailUsersSettingsCseKeypairsGetResource)
          Core.mempty
