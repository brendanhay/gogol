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
-- Module      : Gogol.AdSenseHost.Accounts.Adunits.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the supplied ad unit in the specified publisher AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.update@.
module Gogol.AdSenseHost.Accounts.Adunits.Update
  ( -- * Resource
    AdSenseHostAccountsAdunitsUpdateResource,

    -- ** Constructing a Request
    AdSenseHostAccountsAdunitsUpdate (..),
    newAdSenseHostAccountsAdunitsUpdate,
  )
where

import Gogol.AdSenseHost.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsensehost.accounts.adunits.update@ method which the
-- 'AdSenseHostAccountsAdunitsUpdate' request conforms to.
type AdSenseHostAccountsAdunitsUpdateResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "adunits"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AdUnit
    Core.:> Core.Put '[Core.JSON] AdUnit

-- | Update the supplied ad unit in the specified publisher AdSense account.
--
-- /See:/ 'newAdSenseHostAccountsAdunitsUpdate' smart constructor.
data AdSenseHostAccountsAdunitsUpdate = AdSenseHostAccountsAdunitsUpdate
  { -- | Account which contains the ad client.
    accountId :: Core.Text,
    -- | Ad client which contains the ad unit.
    adClientId :: Core.Text,
    -- | Multipart request metadata.
    payload :: AdUnit
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdunitsUpdate' with the minimum fields required to make a request.
newAdSenseHostAccountsAdunitsUpdate ::
  -- |  Account which contains the ad client. See 'accountId'.
  Core.Text ->
  -- |  Ad client which contains the ad unit. See 'adClientId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AdUnit ->
  AdSenseHostAccountsAdunitsUpdate
newAdSenseHostAccountsAdunitsUpdate accountId adClientId payload =
  AdSenseHostAccountsAdunitsUpdate
    { accountId = accountId,
      adClientId = adClientId,
      payload = payload
    }

instance Core.GoogleRequest AdSenseHostAccountsAdunitsUpdate where
  type Rs AdSenseHostAccountsAdunitsUpdate = AdUnit
  type
    Scopes AdSenseHostAccountsAdunitsUpdate =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostAccountsAdunitsUpdate {..} =
    go
      accountId
      adClientId
      (Core.Just Core.AltJSON)
      payload
      adSenseHostService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdSenseHostAccountsAdunitsUpdateResource)
          Core.mempty
