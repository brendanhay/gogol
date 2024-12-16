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
-- Module      : Gogol.AdExchangeSeller.Accounts.Reports.Saved.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all saved reports in this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.reports.saved.list@.
module Gogol.AdExchangeSeller.Accounts.Reports.Saved.List
    (
    -- * Resource
      AdExchangeSellerAccountsReportsSavedListResource

    -- ** Constructing a Request
    , AdExchangeSellerAccountsReportsSavedList (..)
    , newAdExchangeSellerAccountsReportsSavedList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeSeller.Types

-- | A resource alias for @adexchangeseller.accounts.reports.saved.list@ method which the
-- 'AdExchangeSellerAccountsReportsSavedList' request conforms to.
type AdExchangeSellerAccountsReportsSavedListResource
     =
     "adexchangeseller" Core.:>
       "v2.0" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Text Core.:>
             "reports" Core.:>
               "saved" Core.:>
                 Core.QueryParam "maxResults" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] SavedReports

-- | List all saved reports in this Ad Exchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsReportsSavedList' smart constructor.
data AdExchangeSellerAccountsReportsSavedList = AdExchangeSellerAccountsReportsSavedList
    {
      -- | Account owning the saved reports.
      accountId :: Core.Text
      -- | The maximum number of saved reports to include in the response, used for paging.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | A continuation token, used to page through saved reports. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsReportsSavedList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsReportsSavedList 
    ::  Core.Text
       -- ^  Account owning the saved reports. See 'accountId'.
    -> AdExchangeSellerAccountsReportsSavedList
newAdExchangeSellerAccountsReportsSavedList accountId =
  AdExchangeSellerAccountsReportsSavedList
    {accountId = accountId, maxResults = Core.Nothing, pageToken = Core.Nothing}

instance Core.GoogleRequest
           AdExchangeSellerAccountsReportsSavedList
         where
        type Rs AdExchangeSellerAccountsReportsSavedList =
             SavedReports
        type Scopes AdExchangeSellerAccountsReportsSavedList
             = '[Adexchange'Seller, Adexchange'Seller'Readonly]
        requestClient
          AdExchangeSellerAccountsReportsSavedList{..}
          = go accountId maxResults pageToken
              (Core.Just Core.AltJSON)
              adExchangeSellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeSellerAccountsReportsSavedListResource)
                      Core.mempty

