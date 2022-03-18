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
-- Module      : Network.Google.Gmail.Users.Settings.ForwardingAddresses.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified forwarding address.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.get@.
module Network.Google.Gmail.Users.Settings.ForwardingAddresses.Get
  ( -- * Resource
    GmailUsersSettingsForwardingAddressesGetResource,

    -- ** Constructing a Request
    newGmailUsersSettingsForwardingAddressesGet,
    GmailUsersSettingsForwardingAddressesGet,
  )
where

import Network.Google.Gmail.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @gmail.users.settings.forwardingAddresses.get@ method which the
-- 'GmailUsersSettingsForwardingAddressesGet' request conforms to.
type GmailUsersSettingsForwardingAddressesGetResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "forwardingAddresses"
    Core.:> Core.Capture "forwardingEmail" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ForwardingAddress

-- | Gets the specified forwarding address.
--
-- /See:/ 'newGmailUsersSettingsForwardingAddressesGet' smart constructor.
data GmailUsersSettingsForwardingAddressesGet = GmailUsersSettingsForwardingAddressesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The forwarding address to be retrieved.
    forwardingEmail :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsForwardingAddressesGet' with the minimum fields required to make a request.
newGmailUsersSettingsForwardingAddressesGet ::
  -- |  The forwarding address to be retrieved. See 'forwardingEmail'.
  Core.Text ->
  GmailUsersSettingsForwardingAddressesGet
newGmailUsersSettingsForwardingAddressesGet forwardingEmail =
  GmailUsersSettingsForwardingAddressesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      forwardingEmail = forwardingEmail,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance
  Core.GoogleRequest
    GmailUsersSettingsForwardingAddressesGet
  where
  type
    Rs GmailUsersSettingsForwardingAddressesGet =
      ForwardingAddress
  type
    Scopes GmailUsersSettingsForwardingAddressesGet =
      '[ "https://mail.google.com/",
         "https://www.googleapis.com/auth/gmail.modify",
         "https://www.googleapis.com/auth/gmail.readonly",
         "https://www.googleapis.com/auth/gmail.settings.basic"
       ]
  requestClient
    GmailUsersSettingsForwardingAddressesGet {..} =
      go
        userId
        forwardingEmail
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
                Core.Proxy
                  GmailUsersSettingsForwardingAddressesGetResource
            )
            Core.mempty
