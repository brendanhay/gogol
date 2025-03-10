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
-- Module      : Gogol.AdSense.Accounts.ListChildAccounts
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all accounts directly managed by the given AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.listChildAccounts@.
module Gogol.AdSense.Accounts.ListChildAccounts
  ( -- * Resource
    AdSenseAccountsListChildAccountsResource,

    -- ** Constructing a Request
    AdSenseAccountsListChildAccounts (..),
    newAdSenseAccountsListChildAccounts,
  )
where

import Gogol.AdSense.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsense.accounts.listChildAccounts@ method which the
-- 'AdSenseAccountsListChildAccounts' request conforms to.
type AdSenseAccountsListChildAccountsResource =
  "v2"
    Core.:> Core.CaptureMode "parent" "listChildAccounts" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListChildAccountsResponse

-- | Lists all accounts directly managed by the given AdSense account.
--
-- /See:/ 'newAdSenseAccountsListChildAccounts' smart constructor.
data AdSenseAccountsListChildAccounts = AdSenseAccountsListChildAccounts
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of accounts to include in the response, used for paging. If unspecified, at most 10000 accounts will be returned. The maximum value is 10000; values above 10000 will be coerced to 10000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListChildAccounts@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListChildAccounts@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent account, which owns the child accounts. Format: accounts\/{account}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsListChildAccounts' with the minimum fields required to make a request.
newAdSenseAccountsListChildAccounts ::
  -- |  Required. The parent account, which owns the child accounts. Format: accounts\/{account} See 'parent'.
  Core.Text ->
  AdSenseAccountsListChildAccounts
newAdSenseAccountsListChildAccounts parent =
  AdSenseAccountsListChildAccounts
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdSenseAccountsListChildAccounts where
  type
    Rs AdSenseAccountsListChildAccounts =
      ListChildAccountsResponse
  type
    Scopes AdSenseAccountsListChildAccounts =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient AdSenseAccountsListChildAccounts {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adSenseService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdSenseAccountsListChildAccountsResource)
          Core.mempty
