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
    , bpUserIP
    , bpPayload
    , bpAccountId
    , bpKey
    , bpOAuthToken
    , bpBillingId
    , bpFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Budget :> Patch '[JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request. This
-- method supports patch semantics.
--
-- /See:/ 'budgetPatch'' smart constructor.
data BudgetPatch' = BudgetPatch'
    { _bpQuotaUser   :: !(Maybe Text)
    , _bpPrettyPrint :: !Bool
    , _bpUserIP      :: !(Maybe Text)
    , _bpPayload     :: !Budget
    , _bpAccountId   :: !Int64
    , _bpKey         :: !(Maybe AuthKey)
    , _bpOAuthToken  :: !(Maybe OAuthToken)
    , _bpBillingId   :: !Int64
    , _bpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BudgetPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpQuotaUser'
--
-- * 'bpPrettyPrint'
--
-- * 'bpUserIP'
--
-- * 'bpPayload'
--
-- * 'bpAccountId'
--
-- * 'bpKey'
--
-- * 'bpOAuthToken'
--
-- * 'bpBillingId'
--
-- * 'bpFields'
budgetPatch'
    :: Budget -- ^ 'payload'
    -> Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'billingId'
    -> BudgetPatch'
budgetPatch' pBpPayload_ pBpAccountId_ pBpBillingId_ =
    BudgetPatch'
    { _bpQuotaUser = Nothing
    , _bpPrettyPrint = True
    , _bpUserIP = Nothing
    , _bpPayload = pBpPayload_
    , _bpAccountId = pBpAccountId_
    , _bpKey = Nothing
    , _bpOAuthToken = Nothing
    , _bpBillingId = pBpBillingId_
    , _bpFields = Nothing
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
bpUserIP :: Lens' BudgetPatch' (Maybe Text)
bpUserIP = lens _bpUserIP (\ s a -> s{_bpUserIP = a})

-- | Multipart request metadata.
bpPayload :: Lens' BudgetPatch' Budget
bpPayload
  = lens _bpPayload (\ s a -> s{_bpPayload = a})

-- | The account id associated with the budget being updated.
bpAccountId :: Lens' BudgetPatch' Int64
bpAccountId
  = lens _bpAccountId (\ s a -> s{_bpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bpKey :: Lens' BudgetPatch' (Maybe AuthKey)
bpKey = lens _bpKey (\ s a -> s{_bpKey = a})

-- | OAuth 2.0 token for the current user.
bpOAuthToken :: Lens' BudgetPatch' (Maybe OAuthToken)
bpOAuthToken
  = lens _bpOAuthToken (\ s a -> s{_bpOAuthToken = a})

-- | The billing id associated with the budget being updated.
bpBillingId :: Lens' BudgetPatch' Int64
bpBillingId
  = lens _bpBillingId (\ s a -> s{_bpBillingId = a})

-- | Selector specifying which fields to include in a partial response.
bpFields :: Lens' BudgetPatch' (Maybe Text)
bpFields = lens _bpFields (\ s a -> s{_bpFields = a})

instance GoogleAuth BudgetPatch' where
        authKey = bpKey . _Just
        authToken = bpOAuthToken . _Just

instance GoogleRequest BudgetPatch' where
        type Rs BudgetPatch' = Budget
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BudgetPatch'{..}
          = go _bpAccountId _bpBillingId _bpQuotaUser
              (Just _bpPrettyPrint)
              _bpUserIP
              _bpFields
              _bpKey
              _bpOAuthToken
              (Just AltJSON)
              _bpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BudgetPatchResource)
                      r
                      u
