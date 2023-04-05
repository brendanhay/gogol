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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Keypairs.Disable
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Turns off a client-side encryption key pair. The authenticated user can no longer use the key pair to decrypt incoming CSE message texts or sign outgoing CSE mail. To regain access, use the EnableCseKeyPair to turn on the key pair. After 30 days, you can permanently delete the key pair by using the ObliterateCseKeyPair method.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.keypairs.disable@.
module Gogol.Gmail.Users.Settings.Cse.Keypairs.Disable
  ( -- * Resource
    GmailUsersSettingsCseKeypairsDisableResource,

    -- ** Constructing a Request
    GmailUsersSettingsCseKeypairsDisable (..),
    newGmailUsersSettingsCseKeypairsDisable,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.cse.keypairs.disable@ method which the
-- 'GmailUsersSettingsCseKeypairsDisable' request conforms to.
type GmailUsersSettingsCseKeypairsDisableResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "cse"
    Core.:> "keypairs"
    Core.:> Core.CaptureMode "keyPairId" "disable" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              DisableCseKeyPairRequest
    Core.:> Core.Post '[Core.JSON] CseKeyPair

-- | Turns off a client-side encryption key pair. The authenticated user can no longer use the key pair to decrypt incoming CSE message texts or sign outgoing CSE mail. To regain access, use the EnableCseKeyPair to turn on the key pair. After 30 days, you can permanently delete the key pair by using the ObliterateCseKeyPair method.
--
-- /See:/ 'newGmailUsersSettingsCseKeypairsDisable' smart constructor.
data GmailUsersSettingsCseKeypairsDisable = GmailUsersSettingsCseKeypairsDisable
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The identifier of the key pair to turn off.
    keyPairId :: Core.Text,
    -- | Multipart request metadata.
    payload :: DisableCseKeyPairRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseKeypairsDisable' with the minimum fields required to make a request.
newGmailUsersSettingsCseKeypairsDisable ::
  -- |  The identifier of the key pair to turn off. See 'keyPairId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DisableCseKeyPairRequest ->
  GmailUsersSettingsCseKeypairsDisable
newGmailUsersSettingsCseKeypairsDisable keyPairId payload =
  GmailUsersSettingsCseKeypairsDisable
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      keyPairId = keyPairId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance
  Core.GoogleRequest
    GmailUsersSettingsCseKeypairsDisable
  where
  type
    Rs GmailUsersSettingsCseKeypairsDisable =
      CseKeyPair
  type
    Scopes GmailUsersSettingsCseKeypairsDisable =
      '[Gmail'Settings'Basic, Gmail'Settings'Sharing]
  requestClient
    GmailUsersSettingsCseKeypairsDisable {..} =
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
                Core.Proxy
                  GmailUsersSettingsCseKeypairsDisableResource
            )
            Core.mempty
