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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Budget.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request. This
-- method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerBudgetPatch@.
module Network.Google.Resource.AdExchangeBuyer.Budget.Patch
    (
    -- * REST Resource
      BudgetPatchResource

    -- * Creating a Request
    , budgetPatch'
    , BudgetPatch'

    -- * Request Lenses
    , bpQuotaUser
    , bpPrettyPrint
    , bpUserIp
    , bpAccountId
    , bpKey
    , bpOauthToken
    , bpBillingId
    , bpFields
    , bpAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerBudgetPatch@ which the
-- 'BudgetPatch'' request conforms to.
type BudgetPatchResource =
     "billinginfo" :>
       Capture "accountId" Int64 :>
         Capture "billingId" Int64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Patch '[JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request. This
-- method supports patch semantics.
--
-- /See:/ 'budgetPatch'' smart constructor.
data BudgetPatch' = BudgetPatch'
    { _bpQuotaUser   :: !(Maybe Text)
    , _bpPrettyPrint :: !Bool
    , _bpUserIp      :: !(Maybe Text)
    , _bpAccountId   :: !Int64
    , _bpKey         :: !(Maybe Text)
    , _bpOauthToken  :: !(Maybe Text)
    , _bpBillingId   :: !Int64
    , _bpFields      :: !(Maybe Text)
    , _bpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BudgetPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpQuotaUser'
--
-- * 'bpPrettyPrint'
--
-- * 'bpUserIp'
--
-- * 'bpAccountId'
--
-- * 'bpKey'
--
-- * 'bpOauthToken'
--
-- * 'bpBillingId'
--
-- * 'bpFields'
--
-- * 'bpAlt'
budgetPatch'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'billingId'
    -> BudgetPatch'
budgetPatch' pBpAccountId_ pBpBillingId_ =
    BudgetPatch'
    { _bpQuotaUser = Nothing
    , _bpPrettyPrint = True
    , _bpUserIp = Nothing
    , _bpAccountId = pBpAccountId_
    , _bpKey = Nothing
    , _bpOauthToken = Nothing
    , _bpBillingId = pBpBillingId_
    , _bpFields = Nothing
    , _bpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bpQuotaUser :: Lens' BudgetPatch' (Maybe Text)
bpQuotaUser
  = lens _bpQuotaUser (\ s a -> s{_bpQuotaUser = a})

-- | Returns response with indentations and line breaks.
bpPrettyPrint :: Lens' BudgetPatch' Bool
bpPrettyPrint
  = lens _bpPrettyPrint
      (\ s a -> s{_bpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bpUserIp :: Lens' BudgetPatch' (Maybe Text)
bpUserIp = lens _bpUserIp (\ s a -> s{_bpUserIp = a})

-- | The account id associated with the budget being updated.
bpAccountId :: Lens' BudgetPatch' Int64
bpAccountId
  = lens _bpAccountId (\ s a -> s{_bpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bpKey :: Lens' BudgetPatch' (Maybe Text)
bpKey = lens _bpKey (\ s a -> s{_bpKey = a})

-- | OAuth 2.0 token for the current user.
bpOauthToken :: Lens' BudgetPatch' (Maybe Text)
bpOauthToken
  = lens _bpOauthToken (\ s a -> s{_bpOauthToken = a})

-- | The billing id associated with the budget being updated.
bpBillingId :: Lens' BudgetPatch' Int64
bpBillingId
  = lens _bpBillingId (\ s a -> s{_bpBillingId = a})

-- | Selector specifying which fields to include in a partial response.
bpFields :: Lens' BudgetPatch' (Maybe Text)
bpFields = lens _bpFields (\ s a -> s{_bpFields = a})

-- | Data format for the response.
bpAlt :: Lens' BudgetPatch' Alt
bpAlt = lens _bpAlt (\ s a -> s{_bpAlt = a})

instance GoogleRequest BudgetPatch' where
        type Rs BudgetPatch' = Budget
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BudgetPatch'{..}
          = go _bpQuotaUser (Just _bpPrettyPrint) _bpUserIp
              _bpAccountId
              _bpKey
              _bpOauthToken
              _bpBillingId
              _bpFields
              (Just _bpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BudgetPatchResource)
                      r
                      u
