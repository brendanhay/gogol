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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Identities.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a client-side encryption identity configuration.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.identities.get@.
module Gogol.Gmail.Users.Settings.Cse.Identities.Get
    (
    -- * Resource
      GmailUsersSettingsCseIdentitiesGetResource

    -- ** Constructing a Request
    , GmailUsersSettingsCseIdentitiesGet (..)
    , newGmailUsersSettingsCseIdentitiesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.settings.cse.identities.get@ method which the
-- 'GmailUsersSettingsCseIdentitiesGet' request conforms to.
type GmailUsersSettingsCseIdentitiesGetResource =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "settings" Core.:>
               "cse" Core.:>
                 "identities" Core.:>
                   Core.Capture "cseEmailAddress" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] CseIdentity

-- | Retrieves a client-side encryption identity configuration.
--
-- /See:/ 'newGmailUsersSettingsCseIdentitiesGet' smart constructor.
data GmailUsersSettingsCseIdentitiesGet = GmailUsersSettingsCseIdentitiesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The primary email address associated with the client-side encryption identity configuration that\'s retrieved.
    , cseEmailAddress :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseIdentitiesGet' with the minimum fields required to make a request.
newGmailUsersSettingsCseIdentitiesGet 
    ::  Core.Text
       -- ^  The primary email address associated with the client-side encryption identity configuration that\'s retrieved. See 'cseEmailAddress'.
    -> GmailUsersSettingsCseIdentitiesGet
newGmailUsersSettingsCseIdentitiesGet cseEmailAddress =
  GmailUsersSettingsCseIdentitiesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , cseEmailAddress = cseEmailAddress
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = "me"
    }

instance Core.GoogleRequest
           GmailUsersSettingsCseIdentitiesGet
         where
        type Rs GmailUsersSettingsCseIdentitiesGet =
             CseIdentity
        type Scopes GmailUsersSettingsCseIdentitiesGet =
             '[Gmail'FullControl, Gmail'Modify, Gmail'Readonly,
               Gmail'Settings'Basic, Gmail'Settings'Sharing]
        requestClient GmailUsersSettingsCseIdentitiesGet{..}
          = go userId cseEmailAddress xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GmailUsersSettingsCseIdentitiesGetResource)
                      Core.mempty

