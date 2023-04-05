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
-- Module      : Gogol.Gmail.Users.Settings.Cse.Keypairs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists client-side encryption key pairs for an authenticated user.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.cse.keypairs.list@.
module Gogol.Gmail.Users.Settings.Cse.Keypairs.List
  ( -- * Resource
    GmailUsersSettingsCseKeypairsListResource,

    -- ** Constructing a Request
    GmailUsersSettingsCseKeypairsList (..),
    newGmailUsersSettingsCseKeypairsList,
  )
where

import Gogol.Gmail.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gmail.users.settings.cse.keypairs.list@ method which the
-- 'GmailUsersSettingsCseKeypairsList' request conforms to.
type GmailUsersSettingsCseKeypairsListResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "cse"
    Core.:> "keypairs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListCseKeyPairsResponse

-- | Lists client-side encryption key pairs for an authenticated user.
--
-- /See:/ 'newGmailUsersSettingsCseKeypairsList' smart constructor.
data GmailUsersSettingsCseKeypairsList = GmailUsersSettingsCseKeypairsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The number of key pairs to return. If not provided, the page size will default to 20 entries.
    pageSize :: Core.Int32,
    -- | Pagination token indicating which page of key pairs to return. If the token is not supplied, then the API will return the first page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The requester\'s primary email address. To indicate the authenticated user, you can use the special value @me@.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsCseKeypairsList' with the minimum fields required to make a request.
newGmailUsersSettingsCseKeypairsList ::
  GmailUsersSettingsCseKeypairsList
newGmailUsersSettingsCseKeypairsList =
  GmailUsersSettingsCseKeypairsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = 20,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = "me"
    }

instance
  Core.GoogleRequest
    GmailUsersSettingsCseKeypairsList
  where
  type
    Rs GmailUsersSettingsCseKeypairsList =
      ListCseKeyPairsResponse
  type
    Scopes GmailUsersSettingsCseKeypairsList =
      '[ Gmail'FullControl,
         Gmail'Modify,
         Gmail'Readonly,
         Gmail'Settings'Basic,
         Gmail'Settings'Sharing
       ]
  requestClient GmailUsersSettingsCseKeypairsList {..} =
    go
      userId
      xgafv
      accessToken
      callback
      (Core.Just pageSize)
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gmailService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GmailUsersSettingsCseKeypairsListResource
          )
          Core.mempty
