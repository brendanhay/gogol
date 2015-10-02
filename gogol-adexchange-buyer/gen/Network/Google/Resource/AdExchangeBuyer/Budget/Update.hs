{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Budget.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerBudgetUpdate@.
module Network.Google.Resource.AdExchangeBuyer.Budget.Update
    (
    -- * REST Resource
      BudgetUpdateResource

    -- * Creating a Request
    , budgetUpdate'
    , BudgetUpdate'

    -- * Request Lenses
    , buQuotaUser
    , buPrettyPrint
    , buBudget
    , buUserIP
    , buAccountId
    , buKey
    , buOAuthToken
    , buBillingId
    , buFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerBudgetUpdate@ which the
-- 'BudgetUpdate'' request conforms to.
type BudgetUpdateResource =
     "billinginfo" :>
       Capture "accountId" Int64 :>
         Capture "billingId" Int64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Budget :> Put '[JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request.
--
-- /See:/ 'budgetUpdate'' smart constructor.
data BudgetUpdate' = BudgetUpdate'
    { _buQuotaUser   :: !(Maybe Text)
    , _buPrettyPrint :: !Bool
    , _buBudget      :: !Budget
    , _buUserIP      :: !(Maybe Text)
    , _buAccountId   :: !Int64
    , _buKey         :: !(Maybe Key)
    , _buOAuthToken  :: !(Maybe OAuthToken)
    , _buBillingId   :: !Int64
    , _buFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BudgetUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buQuotaUser'
--
-- * 'buPrettyPrint'
--
-- * 'buBudget'
--
-- * 'buUserIP'
--
-- * 'buAccountId'
--
-- * 'buKey'
--
-- * 'buOAuthToken'
--
-- * 'buBillingId'
--
-- * 'buFields'
budgetUpdate'
    :: Budget -- ^ 'Budget'
    -> Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'billingId'
    -> BudgetUpdate'
budgetUpdate' pBuBudget_ pBuAccountId_ pBuBillingId_ =
    BudgetUpdate'
    { _buQuotaUser = Nothing
    , _buPrettyPrint = True
    , _buBudget = pBuBudget_
    , _buUserIP = Nothing
    , _buAccountId = pBuAccountId_
    , _buKey = Nothing
    , _buOAuthToken = Nothing
    , _buBillingId = pBuBillingId_
    , _buFields = Nothing
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

-- | Multipart request metadata.
buBudget :: Lens' BudgetUpdate' Budget
buBudget = lens _buBudget (\ s a -> s{_buBudget = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
buUserIP :: Lens' BudgetUpdate' (Maybe Text)
buUserIP = lens _buUserIP (\ s a -> s{_buUserIP = a})

-- | The account id associated with the budget being updated.
buAccountId :: Lens' BudgetUpdate' Int64
buAccountId
  = lens _buAccountId (\ s a -> s{_buAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
buKey :: Lens' BudgetUpdate' (Maybe Key)
buKey = lens _buKey (\ s a -> s{_buKey = a})

-- | OAuth 2.0 token for the current user.
buOAuthToken :: Lens' BudgetUpdate' (Maybe OAuthToken)
buOAuthToken
  = lens _buOAuthToken (\ s a -> s{_buOAuthToken = a})

-- | The billing id associated with the budget being updated.
buBillingId :: Lens' BudgetUpdate' Int64
buBillingId
  = lens _buBillingId (\ s a -> s{_buBillingId = a})

-- | Selector specifying which fields to include in a partial response.
buFields :: Lens' BudgetUpdate' (Maybe Text)
buFields = lens _buFields (\ s a -> s{_buFields = a})

instance GoogleAuth BudgetUpdate' where
        authKey = buKey . _Just
        authToken = buOAuthToken . _Just

instance GoogleRequest BudgetUpdate' where
        type Rs BudgetUpdate' = Budget
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BudgetUpdate'{..}
          = go _buQuotaUser (Just _buPrettyPrint) _buUserIP
              _buAccountId
              _buKey
              _buOAuthToken
              _buBillingId
              _buFields
              (Just AltJSON)
              _buBudget
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BudgetUpdateResource)
                      r
                      u
