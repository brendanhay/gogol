{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified S\/MIME config for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.get@.
module Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.Get
    (
    -- * Resource
      GmailUsersSettingsSendAsSmimeInfoGetResource

    -- ** Constructing a Request
    , GmailUsersSettingsSendAsSmimeInfoGet (..)
    , newGmailUsersSettingsSendAsSmimeInfoGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.get@ method which the
-- 'GmailUsersSettingsSendAsSmimeInfoGet' request conforms to.
type GmailUsersSettingsSendAsSmimeInfoGetResource =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "settings" Core.:>
               "sendAs" Core.:>
                 Core.Capture "sendAsEmail" Core.Text Core.:>
                   "smimeInfo" Core.:>
                     Core.Capture "id" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] SmimeInfo

-- | Gets the specified S\/MIME config for the specified send-as alias.
--
-- /See:/ 'newGmailUsersSettingsSendAsSmimeInfoGet' smart constructor.
data GmailUsersSettingsSendAsSmimeInfoGet = GmailUsersSettingsSendAsSmimeInfoGet
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

-- | Creates a value of 'GmailUsersSettingsSendAsSmimeInfoGet' with the minimum fields required to make a request.
newGmailUsersSettingsSendAsSmimeInfoGet 
    ::  Core.Text
       -- ^  The immutable ID for the SmimeInfo. See 'id'.
    -> Core.Text
       -- ^  The email address that appears in the \"From:\" header for mail sent using this alias. See 'sendAsEmail'.
    -> GmailUsersSettingsSendAsSmimeInfoGet
newGmailUsersSettingsSendAsSmimeInfoGet id sendAsEmail =
  GmailUsersSettingsSendAsSmimeInfoGet
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
           GmailUsersSettingsSendAsSmimeInfoGet
         where
        type Rs GmailUsersSettingsSendAsSmimeInfoGet =
             SmimeInfo
        type Scopes GmailUsersSettingsSendAsSmimeInfoGet =
             '[Gmail'FullControl, Gmail'Modify, Gmail'Readonly,
               Gmail'Settings'Basic, Gmail'Settings'Sharing]
        requestClient
          GmailUsersSettingsSendAsSmimeInfoGet{..}
          = go userId sendAsEmail id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GmailUsersSettingsSendAsSmimeInfoGetResource)
                      Core.mempty

