{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdSenseHost.Accounts.Adunits.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert the supplied ad unit into the specified publisher AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.insert@.
module Gogol.AdSenseHost.Accounts.Adunits.Insert
    (
    -- * Resource
      AdSenseHostAccountsAdunitsInsertResource

    -- ** Constructing a Request
    , AdSenseHostAccountsAdunitsInsert (..)
    , newAdSenseHostAccountsAdunitsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSenseHost.Types

-- | A resource alias for @adsensehost.accounts.adunits.insert@ method which the
-- 'AdSenseHostAccountsAdunitsInsert' request conforms to.
type AdSenseHostAccountsAdunitsInsertResource =
     "adsensehost" Core.:>
       "v4.1" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Text Core.:>
             "adclients" Core.:>
               Core.Capture "adClientId" Core.Text Core.:>
                 "adunits" Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AdUnit Core.:>
                       Core.Post '[Core.JSON] AdUnit

-- | Insert the supplied ad unit into the specified publisher AdSense account.
--
-- /See:/ 'newAdSenseHostAccountsAdunitsInsert' smart constructor.
data AdSenseHostAccountsAdunitsInsert = AdSenseHostAccountsAdunitsInsert
    {
      -- | Account which will contain the ad unit.
      accountId :: Core.Text
      -- | Ad client into which to insert the ad unit.
    , adClientId :: Core.Text
      -- | Multipart request metadata.
    , payload :: AdUnit
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsAdunitsInsert' with the minimum fields required to make a request.
newAdSenseHostAccountsAdunitsInsert 
    ::  Core.Text
       -- ^  Account which will contain the ad unit. See 'accountId'.
    -> Core.Text
       -- ^  Ad client into which to insert the ad unit. See 'adClientId'.
    -> AdUnit
       -- ^  Multipart request metadata. See 'payload'.
    -> AdSenseHostAccountsAdunitsInsert
newAdSenseHostAccountsAdunitsInsert accountId adClientId payload =
  AdSenseHostAccountsAdunitsInsert
    {accountId = accountId, adClientId = adClientId, payload = payload}

instance Core.GoogleRequest
           AdSenseHostAccountsAdunitsInsert
         where
        type Rs AdSenseHostAccountsAdunitsInsert = AdUnit
        type Scopes AdSenseHostAccountsAdunitsInsert =
             '[Adsensehost'FullControl]
        requestClient AdSenseHostAccountsAdunitsInsert{..}
          = go accountId adClientId (Core.Just Core.AltJSON)
              payload
              adSenseHostService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseHostAccountsAdunitsInsertResource)
                      Core.mempty

