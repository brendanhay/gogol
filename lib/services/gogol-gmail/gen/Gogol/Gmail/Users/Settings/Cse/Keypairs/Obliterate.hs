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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Keypairs.Obliterate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a client-side encryption key pair permanently and immediately. You can only permanently delete key pairs that have been turned off for more than 30 days. To turn off a key pair, use the DisableCseKeyPair method. Gmail can\'t restore or decrypt any messages that were encrypted by an obliterated key. Authenticated users and Google Workspace administrators lose access to reading the encrypted messages.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.keypairs.obliterate@.
module Gogol.Gmail.Users.Settings.Cse.Keypairs.Obliterate
    (
    -- * Resource
      GmailUsersSettingsCseKeypairsObliterateResource

    -- ** Constructing a Request
    , GmailUsersSettingsCseKeypairsObliterate (..)
    , newGmailUsersSettingsCseKeypairsObliterate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.settings.cse.keypairs.obliterate@ method which the
-- 'GmailUsersSettingsCseKeypairsObliterate' request conforms to.
type GmailUsersSettingsCseKeypairsObliterateResource
     =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "settings" Core.:>
               "cse" Core.:>
                 "keypairs" Core.:>
                   Core.CaptureMode "keyPairId" "obliterate" Core.Text
                     Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON]
                                   ObliterateCseKeyPairRequest
                                   Core.:> Core.Post '[Core.JSON] ()

-- | Deletes a client-side encryption key pair permanently and immediately. You can only permanently delete key pairs that have been turned off for more than 30 days. To turn off a key pair, use the DisableCseKeyPair method. Gmail can\'t restore or decrypt any messages that were encrypted by an obliterated key. Authenticated users and Google Workspace administrators lose access to reading the encrypted messages.
--
-- /See:/ 'newGmailUsersSettingsCseKeypairsObliterate' smart constructor.
data GmailUsersSettingsCseKeypairsObliterate = GmailUsersSettingsCseKeypairsObliterate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The identifier of the key pair to obliterate.
    , keyPairId :: Core.Text
      -- | Multipart request metadata.
    , payload :: ObliterateCseKeyPairRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseKeypairsObliterate' with the minimum fields required to make a request.
newGmailUsersSettingsCseKeypairsObliterate 
    ::  Core.Text
       -- ^  The identifier of the key pair to obliterate. See 'keyPairId'.
    -> ObliterateCseKeyPairRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> GmailUsersSettingsCseKeypairsObliterate
newGmailUsersSettingsCseKeypairsObliterate keyPairId payload =
  GmailUsersSettingsCseKeypairsObliterate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , keyPairId = keyPairId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = "me"
    }

instance Core.GoogleRequest
           GmailUsersSettingsCseKeypairsObliterate
         where
        type Rs GmailUsersSettingsCseKeypairsObliterate = ()
        type Scopes GmailUsersSettingsCseKeypairsObliterate =
             '[Gmail'Settings'Basic, Gmail'Settings'Sharing]
        requestClient
          GmailUsersSettingsCseKeypairsObliterate{..}
          = go userId keyPairId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GmailUsersSettingsCseKeypairsObliterateResource)
                      Core.mempty

