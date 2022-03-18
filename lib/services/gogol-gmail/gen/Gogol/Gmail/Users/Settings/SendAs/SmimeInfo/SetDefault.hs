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
-- Module      : Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.SetDefault
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the default S\/MIME config for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.setDefault@.
module Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.SetDefault
    (
    -- * Resource
      GmailUsersSettingsSendAsSmimeInfoSetDefaultResource

    -- ** Constructing a Request
    , newGmailUsersSettingsSendAsSmimeInfoSetDefault
    , GmailUsersSettingsSendAsSmimeInfoSetDefault
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.setDefault@ method which the
-- 'GmailUsersSettingsSendAsSmimeInfoSetDefault' request conforms to.
type GmailUsersSettingsSendAsSmimeInfoSetDefaultResource
     =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "settings" Core.:>
               "sendAs" Core.:>
                 Core.Capture "sendAsEmail" Core.Text Core.:>
                   "smimeInfo" Core.:>
                     Core.Capture "id" Core.Text Core.:>
                       "setDefault" Core.:>
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Post '[Core.JSON] ()

-- | Sets the default S\/MIME config for the specified send-as alias.
--
-- /See:/ 'newGmailUsersSettingsSendAsSmimeInfoSetDefault' smart constructor.
data GmailUsersSettingsSendAsSmimeInfoSetDefault = GmailUsersSettingsSendAsSmimeInfoSetDefault
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The immutable ID for the SmimeInfo.
    , id :: Core.Text
      -- | The email address that appears in the \"From:\" header for mail sent using this alias.
    , sendAsEmail :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsSendAsSmimeInfoSetDefault' with the minimum fields required to make a request.
newGmailUsersSettingsSendAsSmimeInfoSetDefault 
    ::  Core.Text
       -- ^  The immutable ID for the SmimeInfo. See 'id'.
    -> Core.Text
       -- ^  The email address that appears in the \"From:\" header for mail sent using this alias. See 'sendAsEmail'.
    -> GmailUsersSettingsSendAsSmimeInfoSetDefault
newGmailUsersSettingsSendAsSmimeInfoSetDefault id sendAsEmail =
  GmailUsersSettingsSendAsSmimeInfoSetDefault
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , sendAsEmail = sendAsEmail
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = "me"
    }

instance Core.GoogleRequest
           GmailUsersSettingsSendAsSmimeInfoSetDefault
         where
        type Rs GmailUsersSettingsSendAsSmimeInfoSetDefault =
             ()
        type Scopes
               GmailUsersSettingsSendAsSmimeInfoSetDefault
             =
             '["https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient
          GmailUsersSettingsSendAsSmimeInfoSetDefault{..}
          = go userId sendAsEmail id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GmailUsersSettingsSendAsSmimeInfoSetDefaultResource)
                      Core.mempty

