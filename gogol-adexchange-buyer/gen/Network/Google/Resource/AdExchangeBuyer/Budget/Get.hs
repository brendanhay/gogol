{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Budget.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the budget information for the adgroup specified by the
-- accountId and billingId.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerBudgetGet@.
module AdExchangeBuyer.Budget.Get
    (
    -- * REST Resource
      BudgetGetAPI

    -- * Creating a Request
    , budgetGet
    , BudgetGet

    -- * Request Lenses
    , bgQuotaUser
    , bgPrettyPrint
    , bgUserIp
    , bgAccountId
    , bgKey
    , bgOauthToken
    , bgBillingId
    , bgFields
    , bgAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerBudgetGet@ which the
-- 'BudgetGet' request conforms to.
type BudgetGetAPI =
     "billinginfo" :>
       Capture "accountId" Int64 :>
         Capture "billingId" Int64 :> Get '[JSON] Budget

-- | Returns the budget information for the adgroup specified by the
-- accountId and billingId.
--
-- /See:/ 'budgetGet' smart constructor.
data BudgetGet = BudgetGet
    { _bgQuotaUser   :: !(Maybe Text)
    , _bgPrettyPrint :: !Bool
    , _bgUserIp      :: !(Maybe Text)
    , _bgAccountId   :: !Int64
    , _bgKey         :: !(Maybe Text)
    , _bgOauthToken  :: !(Maybe Text)
    , _bgBillingId   :: !Int64
    , _bgFields      :: !(Maybe Text)
    , _bgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BudgetGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgQuotaUser'
--
-- * 'bgPrettyPrint'
--
-- * 'bgUserIp'
--
-- * 'bgAccountId'
--
-- * 'bgKey'
--
-- * 'bgOauthToken'
--
-- * 'bgBillingId'
--
-- * 'bgFields'
--
-- * 'bgAlt'
budgetGet
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'billingId'
    -> BudgetGet
budgetGet pBgAccountId_ pBgBillingId_ =
    BudgetGet
    { _bgQuotaUser = Nothing
    , _bgPrettyPrint = True
    , _bgUserIp = Nothing
    , _bgAccountId = pBgAccountId_
    , _bgKey = Nothing
    , _bgOauthToken = Nothing
    , _bgBillingId = pBgBillingId_
    , _bgFields = Nothing
    , _bgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bgQuotaUser :: Lens' BudgetGet' (Maybe Text)
bgQuotaUser
  = lens _bgQuotaUser (\ s a -> s{_bgQuotaUser = a})

-- | Returns response with indentations and line breaks.
bgPrettyPrint :: Lens' BudgetGet' Bool
bgPrettyPrint
  = lens _bgPrettyPrint
      (\ s a -> s{_bgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bgUserIp :: Lens' BudgetGet' (Maybe Text)
bgUserIp = lens _bgUserIp (\ s a -> s{_bgUserIp = a})

-- | The account id to get the budget information for.
bgAccountId :: Lens' BudgetGet' Int64
bgAccountId
  = lens _bgAccountId (\ s a -> s{_bgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgKey :: Lens' BudgetGet' (Maybe Text)
bgKey = lens _bgKey (\ s a -> s{_bgKey = a})

-- | OAuth 2.0 token for the current user.
bgOauthToken :: Lens' BudgetGet' (Maybe Text)
bgOauthToken
  = lens _bgOauthToken (\ s a -> s{_bgOauthToken = a})

-- | The billing id to get the budget information for.
bgBillingId :: Lens' BudgetGet' Int64
bgBillingId
  = lens _bgBillingId (\ s a -> s{_bgBillingId = a})

-- | Selector specifying which fields to include in a partial response.
bgFields :: Lens' BudgetGet' (Maybe Text)
bgFields = lens _bgFields (\ s a -> s{_bgFields = a})

-- | Data format for the response.
bgAlt :: Lens' BudgetGet' Text
bgAlt = lens _bgAlt (\ s a -> s{_bgAlt = a})

instance GoogleRequest BudgetGet' where
        type Rs BudgetGet' = Budget
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BudgetGet{..}
          = go _bgQuotaUser _bgPrettyPrint _bgUserIp
              _bgAccountId
              _bgKey
              _bgOauthToken
              _bgBillingId
              _bgFields
              _bgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy BudgetGetAPI) r u
