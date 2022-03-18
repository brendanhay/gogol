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
-- Module      : Gogol.Gmail.Users.Settings.ForwardingAddresses.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a forwarding address. If ownership verification is required, a message will be sent to the recipient and the resource\'s verification status will be set to @pending@; otherwise, the resource will be created with verification status set to @accepted@. This method is only available to service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.create@.
module Gogol.Gmail.Users.Settings.ForwardingAddresses.Create
  ( -- * Resource
    GmailUsersSettingsForwardingAddressesCreateResource,

    -- ** Constructing a Request
    newGmailUsersSettingsForwardingAddressesCreate,
    GmailUsersSettingsForwardingAddressesCreate,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.forwardingAddresses.create@ method which the
-- 'GmailUsersSettingsForwardingAddressesCreate' request conforms to.
type GmailUsersSettingsForwardingAddressesCreateResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "forwardingAddresses"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ForwardingAddress
    Core.:> Core.Post '[Core.JSON] ForwardingAddress

-- | Creates a forwarding address. If ownership verification is required, a message will be sent to the recipient and the resource\'s verification status will be set to @pending@; otherwise, the resource will be created with verification status set to @accepted@. This method is only available to service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'newGmailUsersSettingsForwardingAddressesCreate' smart constructor.
data GmailUsersSettingsForwardingAddressesCreate = GmailUsersSettingsForwardingAddressesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ForwardingAddress,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsForwardingAddressesCreate' with the minimum fields required to make a request.
newGmailUsersSettingsForwardingAddressesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  ForwardingAddress ->
  GmailUsersSettingsForwardingAddressesCreate
newGmailUsersSettingsForwardingAddressesCreate payload =
  GmailUsersSettingsForwardingAddressesCreate
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
    GmailUsersSettingsForwardingAddressesCreate
  where
  type
    Rs GmailUsersSettingsForwardingAddressesCreate =
      ForwardingAddress
  type
    Scopes
      GmailUsersSettingsForwardingAddressesCreate =
      '["https://www.googleapis.com/auth/gmail.settings.sharing"]
  requestClient
    GmailUsersSettingsForwardingAddressesCreate {..} =
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
                Core.Proxy
                  GmailUsersSettingsForwardingAddressesCreateResource
            )
            Core.mempty
