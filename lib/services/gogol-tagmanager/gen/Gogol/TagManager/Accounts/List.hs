{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TagManager.Accounts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Accounts that a user has access to.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.list@.
module Gogol.TagManager.Accounts.List
  ( -- * Resource
    TagManagerAccountsListResource,

    -- ** Constructing a Request
    TagManagerAccountsList (..),
    newTagManagerAccountsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.list@ method which the
-- 'TagManagerAccountsList' request conforms to.
type TagManagerAccountsListResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> "accounts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeGoogleTags" Core.Bool
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAccountsResponse

-- | Lists all GTM Accounts that a user has access to.
--
-- /See:/ 'newTagManagerAccountsList' smart constructor.
data TagManagerAccountsList = TagManagerAccountsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Also retrieve accounts associated with Google Tag when true.
    includeGoogleTags :: (Core.Maybe Core.Bool),
    -- | Continuation token for fetching the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsList' with the minimum fields required to make a request.
newTagManagerAccountsList ::
  TagManagerAccountsList
newTagManagerAccountsList =
  TagManagerAccountsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includeGoogleTags = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TagManagerAccountsList where
  type Rs TagManagerAccountsList = ListAccountsResponse
  type
    Scopes TagManagerAccountsList =
      '[ Tagmanager'Edit'Containers,
         Tagmanager'Manage'Accounts,
         Tagmanager'Readonly
       ]
  requestClient TagManagerAccountsList {..} =
    go
      xgafv
      accessToken
      callback
      includeGoogleTags
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tagManagerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TagManagerAccountsListResource)
          Core.mempty
