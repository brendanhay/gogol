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
-- Module      : Gogol.AdExchangeSeller.Accounts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all accounts available to this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.list@.
module Gogol.AdExchangeSeller.Accounts.List
    (
    -- * Resource
      AdExchangeSellerAccountsListResource

    -- ** Constructing a Request
    , newAdExchangeSellerAccountsList
    , AdExchangeSellerAccountsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeSeller.Types

-- | A resource alias for @adexchangeseller.accounts.list@ method which the
-- 'AdExchangeSellerAccountsList' request conforms to.
type AdExchangeSellerAccountsListResource =
     "adexchangeseller" Core.:>
       "v2.0" Core.:>
         "accounts" Core.:>
           Core.QueryParam "maxResults" Core.Int32 Core.:>
             Core.QueryParam "pageToken" Core.Text Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Get '[Core.JSON] Accounts

-- | List all accounts available to this Ad Exchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsList' smart constructor.
data AdExchangeSellerAccountsList = AdExchangeSellerAccountsList
    {
      -- | The maximum number of accounts to include in the response, used for paging.
      maxResults :: (Core.Maybe Core.Int32)
      -- | A continuation token, used to page through accounts. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsList 
    ::  AdExchangeSellerAccountsList
newAdExchangeSellerAccountsList =
  AdExchangeSellerAccountsList
    {maxResults = Core.Nothing, pageToken = Core.Nothing}

instance Core.GoogleRequest
           AdExchangeSellerAccountsList
         where
        type Rs AdExchangeSellerAccountsList = Accounts
        type Scopes AdExchangeSellerAccountsList =
             '["https://www.googleapis.com/auth/adexchange.seller",
               "https://www.googleapis.com/auth/adexchange.seller.readonly"]
        requestClient AdExchangeSellerAccountsList{..}
          = go maxResults pageToken (Core.Just Core.AltJSON)
              adExchangeSellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdExchangeSellerAccountsListResource)
                      Core.mempty

