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
-- Module      : Gogol.Gmail.Users.Settings.ForwardingAddresses.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the forwarding addresses for the specified account.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.list@.
module Gogol.Gmail.Users.Settings.ForwardingAddresses.List
    (
    -- * Resource
      GmailUsersSettingsForwardingAddressesListResource

    -- ** Constructing a Request
    , newGmailUsersSettingsForwardingAddressesList
    , GmailUsersSettingsForwardingAddressesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.settings.forwardingAddresses.list@ method which the
-- 'GmailUsersSettingsForwardingAddressesList' request conforms to.
type GmailUsersSettingsForwardingAddressesListResource
     =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "settings" Core.:>
               "forwardingAddresses" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               ListForwardingAddressesResponse

-- | Lists the forwarding addresses for the specified account.
--
-- /See:/ 'newGmailUsersSettingsForwardingAddressesList' smart constructor.
data GmailUsersSettingsForwardingAddressesList = GmailUsersSettingsForwardingAddressesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsForwardingAddressesList' with the minimum fields required to make a request.
newGmailUsersSettingsForwardingAddressesList 
    ::  GmailUsersSettingsForwardingAddressesList
newGmailUsersSettingsForwardingAddressesList =
  GmailUsersSettingsForwardingAddressesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = "me"
    }

instance Core.GoogleRequest
           GmailUsersSettingsForwardingAddressesList
         where
        type Rs GmailUsersSettingsForwardingAddressesList =
             ListForwardingAddressesResponse
        type Scopes GmailUsersSettingsForwardingAddressesList
             =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient
          GmailUsersSettingsForwardingAddressesList{..}
          = go userId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GmailUsersSettingsForwardingAddressesListResource)
                      Core.mempty

