{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdSenseHost.Accounts.Adclients.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about one of the ad clients in the specified publisher\'s AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adclients.get@.
module Gogol.AdSenseHost.Accounts.Adclients.Get
    (
    -- * Resource
      AdSenseHostAccountsAdclientsGetResource

    -- ** Constructing a Request
    , newAdSenseHostAccountsAdclientsGet
    , AdSenseHostAccountsAdclientsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSenseHost.Types

-- | A resource alias for @adsensehost.accounts.adclients.get@ method which the
-- 'AdSenseHostAccountsAdclientsGet' request conforms to.
type AdSenseHostAccountsAdclientsGetResource =
     "adsensehost" Core.:>
       "v4.1" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Text Core.:>
             "adclients" Core.:>
               Core.Capture "adClientId" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] AdClient

-- | Get information about one of the ad clients in the specified publisher\'s AdSense account.
--
-- /See:/ 'newAdSenseHostAccountsAdclientsGet' smart constructor.
data AdSenseHostAccountsAdclientsGet = AdSenseHostAccountsAdclientsGet
    {
      -- | Account which contains the ad client.
      accountId :: Core.Text
      -- | Ad client to get.
    , adClientId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdclientsGet' with the minimum fields required to make a request.
newAdSenseHostAccountsAdclientsGet 
    ::  Core.Text
       -- ^  Account which contains the ad client. See 'accountId'.
    -> Core.Text
       -- ^  Ad client to get. See 'adClientId'.
    -> AdSenseHostAccountsAdclientsGet
newAdSenseHostAccountsAdclientsGet accountId adClientId =
  AdSenseHostAccountsAdclientsGet
    {accountId = accountId, adClientId = adClientId}

instance Core.GoogleRequest
           AdSenseHostAccountsAdclientsGet
         where
        type Rs AdSenseHostAccountsAdclientsGet = AdClient
        type Scopes AdSenseHostAccountsAdclientsGet =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AdSenseHostAccountsAdclientsGet{..}
          = go accountId adClientId (Core.Just Core.AltJSON)
              adSenseHostService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseHostAccountsAdclientsGetResource)
                      Core.mempty

