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
-- Module      : Gogol.AdExchangeBuyer.BillingInfo.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the billing information for one account specified by account ID.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.billingInfo.get@.
module Gogol.AdExchangeBuyer.BillingInfo.Get
    (
    -- * Resource
      AdExchangeBuyerBillingInfoGetResource

    -- ** Constructing a Request
    , newAdExchangeBuyerBillingInfoGet
    , AdExchangeBuyerBillingInfoGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.billingInfo.get@ method which the
-- 'AdExchangeBuyerBillingInfoGet' request conforms to.
type AdExchangeBuyerBillingInfoGetResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "billinginfo" Core.:>
           Core.Capture "accountId" Core.Int32 Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Get '[Core.JSON] BillingInfo

-- | Returns the billing information for one account specified by account ID.
--
-- /See:/ 'newAdExchangeBuyerBillingInfoGet' smart constructor.
newtype AdExchangeBuyerBillingInfoGet = AdExchangeBuyerBillingInfoGet
    {
      -- | The account id.
      accountId :: Core.Int32
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerBillingInfoGet' with the minimum fields required to make a request.
newAdExchangeBuyerBillingInfoGet 
    ::  Core.Int32
       -- ^  The account id. See 'accountId'.
    -> AdExchangeBuyerBillingInfoGet
newAdExchangeBuyerBillingInfoGet accountId =
  AdExchangeBuyerBillingInfoGet {accountId = accountId}

instance Core.GoogleRequest
           AdExchangeBuyerBillingInfoGet
         where
        type Rs AdExchangeBuyerBillingInfoGet = BillingInfo
        type Scopes AdExchangeBuyerBillingInfoGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AdExchangeBuyerBillingInfoGet{..}
          = go accountId (Core.Just Core.AltJSON)
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdExchangeBuyerBillingInfoGetResource)
                      Core.mempty

