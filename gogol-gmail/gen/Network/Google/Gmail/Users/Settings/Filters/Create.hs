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
-- Module      : Network.Google.Gmail.Users.Settings.Filters.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a filter. Note: you can only create a maximum of 1,000 filters.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.filters.create@.
module Network.Google.Gmail.Users.Settings.Filters.Create
  ( -- * Resource
    GmailUsersSettingsFiltersCreateResource,

    -- ** Constructing a Request
    newGmailUsersSettingsFiltersCreate,
    GmailUsersSettingsFiltersCreate,
  )
where

import Network.Google.Gmail.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @gmail.users.settings.filters.create@ method which the
-- 'GmailUsersSettingsFiltersCreate' request conforms to.
type GmailUsersSettingsFiltersCreateResource =
  "gmail"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "settings"
    Core.:> "filters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Filter
    Core.:> Core.Post '[Core.JSON] Filter

-- | Creates a filter. Note: you can only create a maximum of 1,000 filters.
--
-- /See:/ 'newGmailUsersSettingsFiltersCreate' smart constructor.
data GmailUsersSettingsFiltersCreate = GmailUsersSettingsFiltersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Filter,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | User\'s email address. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersSettingsFiltersCreate' with the minimum fields required to make a request.
newGmailUsersSettingsFiltersCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Filter ->
  GmailUsersSettingsFiltersCreate
newGmailUsersSettingsFiltersCreate payload =
  GmailUsersSettingsFiltersCreate
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
    GmailUsersSettingsFiltersCreate
  where
  type Rs GmailUsersSettingsFiltersCreate = Filter
  type
    Scopes GmailUsersSettingsFiltersCreate =
      '["https://www.googleapis.com/auth/gmail.settings.basic"]
  requestClient GmailUsersSettingsFiltersCreate {..} =
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
              Core.Proxy GmailUsersSettingsFiltersCreateResource
          )
          Core.mempty
