{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Gmail.Users.Settings.UpdateAutoForwarding
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the auto-forwarding setting for the specified account. A verified forwarding address must be specified when auto-forwarding is enabled. This method is only available to service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateAutoForwarding@.
module Gogol.Gmail.Users.Settings.UpdateAutoForwarding
    (
    -- * Resource
      GmailUsersSettingsUpdateAutoForwardingResource

    -- ** Constructing a Request
    , newGmailUsersSettingsUpdateAutoForwarding
    , GmailUsersSettingsUpdateAutoForwarding
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.settings.updateAutoForwarding@ method which the
-- 'GmailUsersSettingsUpdateAutoForwarding' request conforms to.
type GmailUsersSettingsUpdateAutoForwardingResource =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "settings" Core.:>
               "autoForwarding" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] AutoForwarding Core.:>
                               Core.Put '[Core.JSON] AutoForwarding

-- | Updates the auto-forwarding setting for the specified account. A verified forwarding address must be specified when auto-forwarding is enabled. This method is only available to service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'newGmailUsersSettingsUpdateAutoForwarding' smart constructor.
data GmailUsersSettingsUpdateAutoForwarding = GmailUsersSettingsUpdateAutoForwarding
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: AutoForwarding
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsUpdateAutoForwarding' with the minimum fields required to make a request.
newGmailUsersSettingsUpdateAutoForwarding 
    ::  AutoForwarding
       -- ^  Multipart request metadata. See 'payload'.
    -> GmailUsersSettingsUpdateAutoForwarding
newGmailUsersSettingsUpdateAutoForwarding payload =
  GmailUsersSettingsUpdateAutoForwarding
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = "me"
    }

instance Core.GoogleRequest
           GmailUsersSettingsUpdateAutoForwarding
         where
        type Rs GmailUsersSettingsUpdateAutoForwarding =
             AutoForwarding
        type Scopes GmailUsersSettingsUpdateAutoForwarding =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient
          GmailUsersSettingsUpdateAutoForwarding{..}
          = go userId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GmailUsersSettingsUpdateAutoForwardingResource)
                      Core.mempty

