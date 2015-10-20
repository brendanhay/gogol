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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Budget.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.budget.update@.
module Network.Google.Resource.AdExchangeBuyer.Budget.Update
    (
    -- * REST Resource
      BudgetUpdateResource

    -- * Creating a Request
    , budgetUpdate
    , BudgetUpdate

    -- * Request Lenses
    , buPayload
    , buAccountId
    , buBillingId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.budget.update@ method which the
-- 'BudgetUpdate' request conforms to.
type BudgetUpdateResource =
     "billinginfo" :>
       Capture "accountId" Int64 :>
         Capture "billingId" Int64 :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Budget :> Put '[JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request.
--
-- /See:/ 'budgetUpdate' smart constructor.
data BudgetUpdate = BudgetUpdate
    { _buPayload   :: !Budget
    , _buAccountId :: !Int64
    , _buBillingId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BudgetUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buPayload'
--
-- * 'buAccountId'
--
-- * 'buBillingId'
budgetUpdate
    :: Budget -- ^ 'buPayload'
    -> Int64 -- ^ 'buAccountId'
    -> Int64 -- ^ 'buBillingId'
    -> BudgetUpdate
budgetUpdate pBuPayload_ pBuAccountId_ pBuBillingId_ =
    BudgetUpdate
    { _buPayload = pBuPayload_
    , _buAccountId = pBuAccountId_
    , _buBillingId = pBuBillingId_
    }

-- | Multipart request metadata.
buPayload :: Lens' BudgetUpdate Budget
buPayload
  = lens _buPayload (\ s a -> s{_buPayload = a})

-- | The account id associated with the budget being updated.
buAccountId :: Lens' BudgetUpdate Int64
buAccountId
  = lens _buAccountId (\ s a -> s{_buAccountId = a})

-- | The billing id associated with the budget being updated.
buBillingId :: Lens' BudgetUpdate Int64
buBillingId
  = lens _buBillingId (\ s a -> s{_buBillingId = a})

instance GoogleRequest BudgetUpdate where
        type Rs BudgetUpdate = Budget
        requestClient BudgetUpdate{..}
          = go _buAccountId _buBillingId (Just AltJSON)
              _buPayload
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy BudgetUpdateResource)
                      mempty
