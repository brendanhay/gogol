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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Budget.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request. This
-- method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.budget.patch@.
module Network.Google.Resource.AdExchangeBuyer.Budget.Patch
    (
    -- * REST Resource
      BudgetPatchResource

    -- * Creating a Request
    , budgetPatch
    , BudgetPatch

    -- * Request Lenses
    , bpPayload
    , bpAccountId
    , bpBillingId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.budget.patch@ method which the
-- 'BudgetPatch' request conforms to.
type BudgetPatchResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "billinginfo" :>
           Capture "accountId" (Textual Int64) :>
             Capture "billingId" (Textual Int64) :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Budget :> Patch '[JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request. This
-- method supports patch semantics.
--
-- /See:/ 'budgetPatch' smart constructor.
data BudgetPatch =
  BudgetPatch'
    { _bpPayload :: !Budget
    , _bpAccountId :: !(Textual Int64)
    , _bpBillingId :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BudgetPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpPayload'
--
-- * 'bpAccountId'
--
-- * 'bpBillingId'
budgetPatch
    :: Budget -- ^ 'bpPayload'
    -> Int64 -- ^ 'bpAccountId'
    -> Int64 -- ^ 'bpBillingId'
    -> BudgetPatch
budgetPatch pBpPayload_ pBpAccountId_ pBpBillingId_ =
  BudgetPatch'
    { _bpPayload = pBpPayload_
    , _bpAccountId = _Coerce # pBpAccountId_
    , _bpBillingId = _Coerce # pBpBillingId_
    }


-- | Multipart request metadata.
bpPayload :: Lens' BudgetPatch Budget
bpPayload
  = lens _bpPayload (\ s a -> s{_bpPayload = a})

-- | The account id associated with the budget being updated.
bpAccountId :: Lens' BudgetPatch Int64
bpAccountId
  = lens _bpAccountId (\ s a -> s{_bpAccountId = a}) .
      _Coerce

-- | The billing id associated with the budget being updated.
bpBillingId :: Lens' BudgetPatch Int64
bpBillingId
  = lens _bpBillingId (\ s a -> s{_bpBillingId = a}) .
      _Coerce

instance GoogleRequest BudgetPatch where
        type Rs BudgetPatch = Budget
        type Scopes BudgetPatch =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BudgetPatch'{..}
          = go _bpAccountId _bpBillingId (Just AltJSON)
              _bpPayload
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy BudgetPatchResource)
                      mempty
