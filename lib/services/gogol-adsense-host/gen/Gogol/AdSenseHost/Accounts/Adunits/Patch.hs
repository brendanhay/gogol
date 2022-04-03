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
-- Module      : Gogol.AdSenseHost.Accounts.Adunits.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the supplied ad unit in the specified publisher AdSense account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.patch@.
module Gogol.AdSenseHost.Accounts.Adunits.Patch
  ( -- * Resource
    AdSenseHostAccountsAdunitsPatchResource,

    -- ** Constructing a Request
    AdSenseHostAccountsAdunitsPatch (..),
    newAdSenseHostAccountsAdunitsPatch,
  )
where

import Gogol.AdSenseHost.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsensehost.accounts.adunits.patch@ method which the
-- 'AdSenseHostAccountsAdunitsPatch' request conforms to.
type AdSenseHostAccountsAdunitsPatchResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "adunits"
    Core.:> Core.QueryParam "adUnitId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AdUnit
    Core.:> Core.Patch '[Core.JSON] AdUnit

-- | Update the supplied ad unit in the specified publisher AdSense account. This method supports patch semantics.
--
-- /See:/ 'newAdSenseHostAccountsAdunitsPatch' smart constructor.
data AdSenseHostAccountsAdunitsPatch = AdSenseHostAccountsAdunitsPatch
  { -- | Account which contains the ad client.
    accountId :: Core.Text,
    -- | Ad client which contains the ad unit.
    adClientId :: Core.Text,
    -- | Ad unit to get.
    adUnitId :: Core.Text,
    -- | Multipart request metadata.
    payload :: AdUnit
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdunitsPatch' with the minimum fields required to make a request.
newAdSenseHostAccountsAdunitsPatch ::
  -- |  Account which contains the ad client. See 'accountId'.
  Core.Text ->
  -- |  Ad client which contains the ad unit. See 'adClientId'.
  Core.Text ->
  -- |  Ad unit to get. See 'adUnitId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AdUnit ->
  AdSenseHostAccountsAdunitsPatch
newAdSenseHostAccountsAdunitsPatch accountId adClientId adUnitId payload =
  AdSenseHostAccountsAdunitsPatch
    { accountId = accountId,
      adClientId = adClientId,
      adUnitId = adUnitId,
      payload = payload
    }

instance
  Core.GoogleRequest
    AdSenseHostAccountsAdunitsPatch
  where
  type Rs AdSenseHostAccountsAdunitsPatch = AdUnit
  type
    Scopes AdSenseHostAccountsAdunitsPatch =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostAccountsAdunitsPatch {..} =
    go
      accountId
      adClientId
      (Core.Just adUnitId)
      (Core.Just Core.AltJSON)
      payload
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostAccountsAdunitsPatchResource
          )
          Core.mempty
