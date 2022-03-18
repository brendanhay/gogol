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
-- Module      : Network.Google.AdSenseHost.Accounts.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about the selected associated AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.get@.
module Network.Google.AdSenseHost.Accounts.Get
  ( -- * Resource
    AdSenseHostAccountsGetResource,

    -- ** Constructing a Request
    newAdSenseHostAccountsGet,
    AdSenseHostAccountsGet,
  )
where

import Network.Google.AdSenseHost.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsensehost.accounts.get@ method which the
-- 'AdSenseHostAccountsGet' request conforms to.
type AdSenseHostAccountsGetResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Account

-- | Get information about the selected associated AdSense account.
--
-- /See:/ 'newAdSenseHostAccountsGet' smart constructor.
newtype AdSenseHostAccountsGet = AdSenseHostAccountsGet
  { -- | Account to get information about.
    accountId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsGet' with the minimum fields required to make a request.
newAdSenseHostAccountsGet ::
  -- |  Account to get information about. See 'accountId'.
  Core.Text ->
  AdSenseHostAccountsGet
newAdSenseHostAccountsGet accountId =
  AdSenseHostAccountsGet {accountId = accountId}

instance Core.GoogleRequest AdSenseHostAccountsGet where
  type Rs AdSenseHostAccountsGet = Account
  type
    Scopes AdSenseHostAccountsGet =
      '["https://www.googleapis.com/auth/adsensehost"]
  requestClient AdSenseHostAccountsGet {..} =
    go
      accountId
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostAccountsGetResource
          )
          Core.mempty
