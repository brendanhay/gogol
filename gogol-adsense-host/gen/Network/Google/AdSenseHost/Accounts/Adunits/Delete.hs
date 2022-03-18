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
-- Module      : Network.Google.AdSenseHost.Accounts.Adunits.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the specified ad unit from the specified publisher AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.delete@.
module Network.Google.AdSenseHost.Accounts.Adunits.Delete
  ( -- * Resource
    AdSenseHostAccountsAdunitsDeleteResource,

    -- ** Constructing a Request
    newAdSenseHostAccountsAdunitsDelete,
    AdSenseHostAccountsAdunitsDelete,
  )
where

import Network.Google.AdSenseHost.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsensehost.accounts.adunits.delete@ method which the
-- 'AdSenseHostAccountsAdunitsDelete' request conforms to.
type AdSenseHostAccountsAdunitsDeleteResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "adunits"
    Core.:> Core.Capture "adUnitId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] AdUnit

-- | Delete the specified ad unit from the specified publisher AdSense account.
--
-- /See:/ 'newAdSenseHostAccountsAdunitsDelete' smart constructor.
data AdSenseHostAccountsAdunitsDelete = AdSenseHostAccountsAdunitsDelete
  { -- | Account which contains the ad unit.
    accountId :: Core.Text,
    -- | Ad client for which to get ad unit.
    adClientId :: Core.Text,
    -- | Ad unit to delete.
    adUnitId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdunitsDelete' with the minimum fields required to make a request.
newAdSenseHostAccountsAdunitsDelete ::
  -- |  Account which contains the ad unit. See 'accountId'.
  Core.Text ->
  -- |  Ad client for which to get ad unit. See 'adClientId'.
  Core.Text ->
  -- |  Ad unit to delete. See 'adUnitId'.
  Core.Text ->
  AdSenseHostAccountsAdunitsDelete
newAdSenseHostAccountsAdunitsDelete accountId adClientId adUnitId =
  AdSenseHostAccountsAdunitsDelete
    { accountId = accountId,
      adClientId = adClientId,
      adUnitId = adUnitId
    }

instance
  Core.GoogleRequest
    AdSenseHostAccountsAdunitsDelete
  where
  type Rs AdSenseHostAccountsAdunitsDelete = AdUnit
  type
    Scopes AdSenseHostAccountsAdunitsDelete =
      '["https://www.googleapis.com/auth/adsensehost"]
  requestClient AdSenseHostAccountsAdunitsDelete {..} =
    go
      accountId
      adClientId
      adUnitId
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostAccountsAdunitsDeleteResource
          )
          Core.mempty
