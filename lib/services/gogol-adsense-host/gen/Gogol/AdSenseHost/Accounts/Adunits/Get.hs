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
-- Module      : Gogol.AdSenseHost.Accounts.Adunits.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the specified host ad unit in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.get@.
module Gogol.AdSenseHost.Accounts.Adunits.Get
  ( -- * Resource
    AdSenseHostAccountsAdunitsGetResource,

    -- ** Constructing a Request
    AdSenseHostAccountsAdunitsGet (..),
    newAdSenseHostAccountsAdunitsGet,
  )
where

import Gogol.AdSenseHost.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsensehost.accounts.adunits.get@ method which the
-- 'AdSenseHostAccountsAdunitsGet' request conforms to.
type AdSenseHostAccountsAdunitsGetResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "adunits"
    Core.:> Core.Capture "adUnitId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdUnit

-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ 'newAdSenseHostAccountsAdunitsGet' smart constructor.
data AdSenseHostAccountsAdunitsGet = AdSenseHostAccountsAdunitsGet
  { -- | Account which contains the ad unit.
    accountId :: Core.Text,
    -- | Ad client for which to get ad unit.
    adClientId :: Core.Text,
    -- | Ad unit to get.
    adUnitId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdunitsGet' with the minimum fields required to make a request.
newAdSenseHostAccountsAdunitsGet ::
  -- |  Account which contains the ad unit. See 'accountId'.
  Core.Text ->
  -- |  Ad client for which to get ad unit. See 'adClientId'.
  Core.Text ->
  -- |  Ad unit to get. See 'adUnitId'.
  Core.Text ->
  AdSenseHostAccountsAdunitsGet
newAdSenseHostAccountsAdunitsGet accountId adClientId adUnitId =
  AdSenseHostAccountsAdunitsGet
    { accountId = accountId,
      adClientId = adClientId,
      adUnitId = adUnitId
    }

instance Core.GoogleRequest AdSenseHostAccountsAdunitsGet where
  type Rs AdSenseHostAccountsAdunitsGet = AdUnit
  type
    Scopes AdSenseHostAccountsAdunitsGet =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostAccountsAdunitsGet {..} =
    go
      accountId
      adClientId
      adUnitId
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdSenseHostAccountsAdunitsGetResource)
          Core.mempty
