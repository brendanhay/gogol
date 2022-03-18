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
-- Module      : Network.Google.AdSenseHost.Accounts.Adunits.GetAdCode
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get ad code for the specified ad unit, attaching the specified host custom channels.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.getAdCode@.
module Network.Google.AdSenseHost.Accounts.Adunits.GetAdCode
  ( -- * Resource
    AdSenseHostAccountsAdunitsGetAdCodeResource,

    -- ** Constructing a Request
    newAdSenseHostAccountsAdunitsGetAdCode,
    AdSenseHostAccountsAdunitsGetAdCode,
  )
where

import Network.Google.AdSenseHost.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsensehost.accounts.adunits.getAdCode@ method which the
-- 'AdSenseHostAccountsAdunitsGetAdCode' request conforms to.
type AdSenseHostAccountsAdunitsGetAdCodeResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "adunits"
    Core.:> Core.Capture "adUnitId" Core.Text
    Core.:> "adcode"
    Core.:> Core.QueryParams "hostCustomChannelId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdCode

-- | Get ad code for the specified ad unit, attaching the specified host custom channels.
--
-- /See:/ 'newAdSenseHostAccountsAdunitsGetAdCode' smart constructor.
data AdSenseHostAccountsAdunitsGetAdCode = AdSenseHostAccountsAdunitsGetAdCode
  { -- | Account which contains the ad client.
    accountId :: Core.Text,
    -- | Ad client with contains the ad unit.
    adClientId :: Core.Text,
    -- | Ad unit to get the code for.
    adUnitId :: Core.Text,
    -- | Host custom channel to attach to the ad code.
    hostCustomChannelId :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdunitsGetAdCode' with the minimum fields required to make a request.
newAdSenseHostAccountsAdunitsGetAdCode ::
  -- |  Account which contains the ad client. See 'accountId'.
  Core.Text ->
  -- |  Ad client with contains the ad unit. See 'adClientId'.
  Core.Text ->
  -- |  Ad unit to get the code for. See 'adUnitId'.
  Core.Text ->
  AdSenseHostAccountsAdunitsGetAdCode
newAdSenseHostAccountsAdunitsGetAdCode accountId adClientId adUnitId =
  AdSenseHostAccountsAdunitsGetAdCode
    { accountId = accountId,
      adClientId = adClientId,
      adUnitId = adUnitId,
      hostCustomChannelId = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseHostAccountsAdunitsGetAdCode
  where
  type Rs AdSenseHostAccountsAdunitsGetAdCode = AdCode
  type
    Scopes AdSenseHostAccountsAdunitsGetAdCode =
      '["https://www.googleapis.com/auth/adsensehost"]
  requestClient AdSenseHostAccountsAdunitsGetAdCode {..} =
    go
      accountId
      adClientId
      adUnitId
      (hostCustomChannelId Core.^. Core._Default)
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AdSenseHostAccountsAdunitsGetAdCodeResource
          )
          Core.mempty
