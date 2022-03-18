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
-- Module      : Gogol.AdSenseHost.Accounts.Adunits.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all ad units in the specified publisher\'s AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.list@.
module Gogol.AdSenseHost.Accounts.Adunits.List
  ( -- * Resource
    AdSenseHostAccountsAdunitsListResource,

    -- ** Constructing a Request
    newAdSenseHostAccountsAdunitsList,
    AdSenseHostAccountsAdunitsList,
  )
where

import Gogol.AdSenseHost.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsensehost.accounts.adunits.list@ method which the
-- 'AdSenseHostAccountsAdunitsList' request conforms to.
type AdSenseHostAccountsAdunitsListResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "adunits"
    Core.:> Core.QueryParam "includeInactive" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdUnits

-- | List all ad units in the specified publisher\'s AdSense account.
--
-- /See:/ 'newAdSenseHostAccountsAdunitsList' smart constructor.
data AdSenseHostAccountsAdunitsList = AdSenseHostAccountsAdunitsList
  { -- | Account which contains the ad client.
    accountId :: Core.Text,
    -- | Ad client for which to list ad units.
    adClientId :: Core.Text,
    -- | Whether to include inactive ad units. Default: true.
    includeInactive :: (Core.Maybe Core.Bool),
    -- | The maximum number of ad units to include in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdunitsList' with the minimum fields required to make a request.
newAdSenseHostAccountsAdunitsList ::
  -- |  Account which contains the ad client. See 'accountId'.
  Core.Text ->
  -- |  Ad client for which to list ad units. See 'adClientId'.
  Core.Text ->
  AdSenseHostAccountsAdunitsList
newAdSenseHostAccountsAdunitsList accountId adClientId =
  AdSenseHostAccountsAdunitsList
    { accountId = accountId,
      adClientId = adClientId,
      includeInactive = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseHostAccountsAdunitsList
  where
  type Rs AdSenseHostAccountsAdunitsList = AdUnits
  type
    Scopes AdSenseHostAccountsAdunitsList =
      '["https://www.googleapis.com/auth/adsensehost"]
  requestClient AdSenseHostAccountsAdunitsList {..} =
    go
      accountId
      adClientId
      includeInactive
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostAccountsAdunitsListResource
          )
          Core.mempty
