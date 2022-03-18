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
-- Module      : Gogol.AdExchangeSeller.Accounts.Alerts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the alerts for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.alerts.list@.
module Gogol.AdExchangeSeller.Accounts.Alerts.List
    (
    -- * Resource
      AdExchangeSellerAccountsAlertsListResource

    -- ** Constructing a Request
    , newAdExchangeSellerAccountsAlertsList
    , AdExchangeSellerAccountsAlertsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeSeller.Types

-- | A resource alias for @adexchangeseller.accounts.alerts.list@ method which the
-- 'AdExchangeSellerAccountsAlertsList' request conforms to.
type AdExchangeSellerAccountsAlertsListResource =
     "adexchangeseller" Core.:>
       "v2.0" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Text Core.:>
             "alerts" Core.:>
               Core.QueryParam "locale" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] Alerts

-- | List the alerts for this Ad Exchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsAlertsList' smart constructor.
data AdExchangeSellerAccountsAlertsList = AdExchangeSellerAccountsAlertsList
    {
      -- | Account owning the alerts.
      accountId :: Core.Text
      -- | The locale to use for translating alert messages. The account locale will be used if this is not supplied. The AdSense default (English) will be used if the supplied locale is invalid or unsupported.
    , locale :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsAlertsList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsAlertsList 
    ::  Core.Text
       -- ^  Account owning the alerts. See 'accountId'.
    -> AdExchangeSellerAccountsAlertsList
newAdExchangeSellerAccountsAlertsList accountId =
  AdExchangeSellerAccountsAlertsList
    {accountId = accountId, locale = Core.Nothing}

instance Core.GoogleRequest
           AdExchangeSellerAccountsAlertsList
         where
        type Rs AdExchangeSellerAccountsAlertsList = Alerts
        type Scopes AdExchangeSellerAccountsAlertsList =
             '["https://www.googleapis.com/auth/adexchange.seller",
               "https://www.googleapis.com/auth/adexchange.seller.readonly"]
        requestClient AdExchangeSellerAccountsAlertsList{..}
          = go accountId locale (Core.Just Core.AltJSON)
              adExchangeSellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeSellerAccountsAlertsListResource)
                      Core.mempty

