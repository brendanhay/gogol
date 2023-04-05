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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Identities.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a client-side encryption identity. The authenticated user can no longer use the identity to send encrypted messages. You cannot restore the identity after you delete it. Instead, use the CreateCseIdentity method to create another identity with the same configuration.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.identities.delete@.
module Gogol.Gmail.Users.Settings.Cse.Identities.Delete
  ( -- * Resource
    GmailUsersSettingsCseIdentitiesDeleteResource,

    -- ** Constructing a Request
    GmailUsersSettingsCseIdentitiesDelete (..),
    newGmailUsersSettingsCseIdentitiesDelete,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.cse.identities.delete@ method which the
-- 'GmailUsersSettingsCseIdentitiesDelete' request conforms to.
type GmailUsersSettingsCseIdentitiesDeleteResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "cse"
    Core.:> "identities"
    Core.:> Core.Capture "cseEmailAddress" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a client-side encryption identity. The authenticated user can no longer use the identity to send encrypted messages. You cannot restore the identity after you delete it. Instead, use the CreateCseIdentity method to create another identity with the same configuration.
--
-- /See:/ 'newGmailUsersSettingsCseIdentitiesDelete' smart constructor.
data GmailUsersSettingsCseIdentitiesDelete = GmailUsersSettingsCseIdentitiesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The primary email address associated with the client-side encryption identity configuration that\'s removed.
    cseEmailAddress :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseIdentitiesDelete' with the minimum fields required to make a request.
newGmailUsersSettingsCseIdentitiesDelete ::
  -- |  The primary email address associated with the client-side encryption identity configuration that\'s removed. See 'cseEmailAddress'.
  Core.Text ->
  GmailUsersSettingsCseIdentitiesDelete
newGmailUsersSettingsCseIdentitiesDelete cseEmailAddress =
  GmailUsersSettingsCseIdentitiesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      cseEmailAddress = cseEmailAddress,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance
  Core.GoogleRequest
    GmailUsersSettingsCseIdentitiesDelete
  where
  type Rs GmailUsersSettingsCseIdentitiesDelete = ()
  type
    Scopes GmailUsersSettingsCseIdentitiesDelete =
      '[Gmail'Settings'Basic, Gmail'Settings'Sharing]
  requestClient
    GmailUsersSettingsCseIdentitiesDelete {..} =
      go
        userId
        cseEmailAddress
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
                  GmailUsersSettingsCseIdentitiesDeleteResource
            )
            Core.mempty
