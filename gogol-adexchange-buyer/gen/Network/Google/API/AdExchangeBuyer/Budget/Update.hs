{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Budget.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.budget.update@.
module Network.Google.API.AdExchangeBuyer.Budget.Update
    (
    -- * REST Resource
      BudgetUpdateAPI

    -- * Creating a Request
    , budgetUpdate'
    , BudgetUpdate'

    -- * Request Lenses
    , buQuotaUser
    , buPrettyPrint
    , buUserIp
    , buAccountId
    , buKey
    , buOauthToken
    , buBillingId
    , buFields
    , buAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.budget.update which the
-- 'BudgetUpdate'' request conforms to.
type BudgetUpdateAPI =
     "billinginfo" :>
       Capture "accountId" Int64 :>
         Capture "billingId" Int64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request.
--
-- /See:/ 'budgetUpdate'' smart constructor.
data BudgetUpdate' = BudgetUpdate'
    { _buQuotaUser   :: !(Maybe Text)
    , _buPrettyPrint :: !Bool
    , _buUserIp      :: !(Maybe Text)
    , _buAccountId   :: !Int64
    , _buKey         :: !(Maybe Text)
    , _buOauthToken  :: !(Maybe Text)
    , _buBillingId   :: !Int64
    , _buFields      :: !(Maybe Text)
    , _buAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BudgetUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buQuotaUser'
--
-- * 'buPrettyPrint'
--
-- * 'buUserIp'
--
-- * 'buAccountId'
--
-- * 'buKey'
--
-- * 'buOauthToken'
--
-- * 'buBillingId'
--
-- * 'buFields'
--
-- * 'buAlt'
budgetUpdate'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'billingId'
    -> BudgetUpdate'
budgetUpdate' pBuAccountId_ pBuBillingId_ =
    BudgetUpdate'
    { _buQuotaUser = Nothing
    , _buPrettyPrint = True
    , _buUserIp = Nothing
    , _buAccountId = pBuAccountId_
    , _buKey = Nothing
    , _buOauthToken = Nothing
    , _buBillingId = pBuBillingId_
    , _buFields = Nothing
    , _buAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
buQuotaUser :: Lens' BudgetUpdate' (Maybe Text)
buQuotaUser
  = lens _buQuotaUser (\ s a -> s{_buQuotaUser = a})

-- | Returns response with indentations and line breaks.
buPrettyPrint :: Lens' BudgetUpdate' Bool
buPrettyPrint
  = lens _buPrettyPrint
      (\ s a -> s{_buPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
buUserIp :: Lens' BudgetUpdate' (Maybe Text)
buUserIp = lens _buUserIp (\ s a -> s{_buUserIp = a})

-- | The account id associated with the budget being updated.
buAccountId :: Lens' BudgetUpdate' Int64
buAccountId
  = lens _buAccountId (\ s a -> s{_buAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
buKey :: Lens' BudgetUpdate' (Maybe Text)
buKey = lens _buKey (\ s a -> s{_buKey = a})

-- | OAuth 2.0 token for the current user.
buOauthToken :: Lens' BudgetUpdate' (Maybe Text)
buOauthToken
  = lens _buOauthToken (\ s a -> s{_buOauthToken = a})

-- | The billing id associated with the budget being updated.
buBillingId :: Lens' BudgetUpdate' Int64
buBillingId
  = lens _buBillingId (\ s a -> s{_buBillingId = a})

-- | Selector specifying which fields to include in a partial response.
buFields :: Lens' BudgetUpdate' (Maybe Text)
buFields = lens _buFields (\ s a -> s{_buFields = a})

-- | Data format for the response.
buAlt :: Lens' BudgetUpdate' Alt
buAlt = lens _buAlt (\ s a -> s{_buAlt = a})

instance GoogleRequest BudgetUpdate' where
        type Rs BudgetUpdate' = Budget
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BudgetUpdate'{..}
          = go _buQuotaUser (Just _buPrettyPrint) _buUserIp
              _buAccountId
              _buKey
              _buOauthToken
              _buBillingId
              _buFields
              (Just _buAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy BudgetUpdateAPI) r
                      u
