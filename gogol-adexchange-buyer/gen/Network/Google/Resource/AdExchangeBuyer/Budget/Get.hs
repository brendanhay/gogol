{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Budget.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the budget information for the adgroup specified by the
-- accountId and billingId.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.budget.get@.
module Network.Google.Resource.AdExchangeBuyer.Budget.Get
    (
    -- * REST Resource
      BudgetGetResource

    -- * Creating a Request
    , budgetGet
    , BudgetGet

    -- * Request Lenses
    , bgAccountId
    , bgBillingId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.budget.get@ method which the
-- 'BudgetGet' request conforms to.
type BudgetGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "billinginfo" :>
           Capture "accountId" (JSONText Int64) :>
             Capture "billingId" (JSONText Int64) :>
               QueryParam "alt" AltJSON :> Get '[JSON] Budget

-- | Returns the budget information for the adgroup specified by the
-- accountId and billingId.
--
-- /See:/ 'budgetGet' smart constructor.
data BudgetGet = BudgetGet
    { _bgAccountId :: !(JSONText Int64)
    , _bgBillingId :: !(JSONText Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BudgetGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgAccountId'
--
-- * 'bgBillingId'
budgetGet
    :: Int64 -- ^ 'bgAccountId'
    -> Int64 -- ^ 'bgBillingId'
    -> BudgetGet
budgetGet pBgAccountId_ pBgBillingId_ =
    BudgetGet
    { _bgAccountId = pBgAccountId_
    , _bgBillingId = pBgBillingId_
    }

-- | The account id to get the budget information for.
bgAccountId :: Lens' BudgetGet Int64
bgAccountId
  = lens _bgAccountId (\ s a -> s{_bgAccountId = a}) .
      _Coerce

-- | The billing id to get the budget information for.
bgBillingId :: Lens' BudgetGet Int64
bgBillingId
  = lens _bgBillingId (\ s a -> s{_bgBillingId = a}) .
      _Coerce

instance GoogleRequest BudgetGet where
        type Rs BudgetGet = Budget
        requestClient BudgetGet{..}
          = go _bgAccountId _bgBillingId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy BudgetGetResource)
                      mempty
