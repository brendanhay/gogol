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
-- Module      : Gogol.Gmail.Users.Settings.SendAs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the send-as aliases for the specified account. The result includes the primary send-as address associated with the account as well as any custom \"from\" aliases.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.list@.
module Gogol.Gmail.Users.Settings.SendAs.List
  ( -- * Resource
    GmailUsersSettingsSendAsListResource,

    -- ** Constructing a Request
    newGmailUsersSettingsSendAsList,
    GmailUsersSettingsSendAsList,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.sendAs.list@ method which the
-- 'GmailUsersSettingsSendAsList' request conforms to.
type GmailUsersSettingsSendAsListResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "sendAs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSendAsResponse

-- | Lists the send-as aliases for the specified account. The result includes the primary send-as address associated with the account as well as any custom \"from\" aliases.
--
-- /See:/ 'newGmailUsersSettingsSendAsList' smart constructor.
data GmailUsersSettingsSendAsList = GmailUsersSettingsSendAsList
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

-- | Creates a value of 'GmailUsersSettingsSendAsList' with the minimum fields required to make a request.
newGmailUsersSettingsSendAsList ::
  GmailUsersSettingsSendAsList
newGmailUsersSettingsSendAsList =
  GmailUsersSettingsSendAsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance
  Core.GoogleRequest
    GmailUsersSettingsSendAsList
  where
  type
    Rs GmailUsersSettingsSendAsList =
      ListSendAsResponse
  type
    Scopes GmailUsersSettingsSendAsList =
      '[ Gmail'FullControl,
         Gmail'Modify,
         Gmail'Readonly,
         Gmail'Settings'Basic
       ]
  requestClient GmailUsersSettingsSendAsList {..} =
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
          ( Core.Proxy ::
              Core.Proxy GmailUsersSettingsSendAsListResource
          )
          Core.mempty
