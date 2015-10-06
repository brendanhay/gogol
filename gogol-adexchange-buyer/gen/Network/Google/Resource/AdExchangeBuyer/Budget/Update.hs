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
    , buUserIP
    , buPayload
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Budget :> Put '[JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the
-- accountId and billingId, with the budget amount in the request.
--
-- /See:/ 'budgetUpdate'' smart constructor.
data BudgetUpdate' = BudgetUpdate'
    { _buQuotaUser   :: !(Maybe Text)
    , _buPrettyPrint :: !Bool
    , _buUserIP      :: !(Maybe Text)
    , _buPayload     :: !Budget
    , _buAccountId   :: !Int64
    , _buKey         :: !(Maybe AuthKey)
    , _buOAuthToken  :: !(Maybe OAuthToken)
    , _buBillingId   :: !Int64
    , _buFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BudgetUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buQuotaUser'
--
-- * 'buPrettyPrint'
--
-- * 'buUserIP'
--
-- * 'buPayload'
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
    :: Budget -- ^ 'payload'
    -> Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'billingId'
    -> BudgetUpdate'
budgetUpdate' pBuPayload_ pBuAccountId_ pBuBillingId_ =
    BudgetUpdate'
    { _buQuotaUser = Nothing
    , _buPrettyPrint = True
    , _buUserIP = Nothing
    , _buPayload = pBuPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
buUserIP :: Lens' BudgetUpdate' (Maybe Text)
buUserIP = lens _buUserIP (\ s a -> s{_buUserIP = a})

-- | Multipart request metadata.
buPayload :: Lens' BudgetUpdate' Budget
buPayload
  = lens _buPayload (\ s a -> s{_buPayload = a})

-- | The account id associated with the budget being updated.
buAccountId :: Lens' BudgetUpdate' Int64
buAccountId
  = lens _buAccountId (\ s a -> s{_buAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
buKey :: Lens' BudgetUpdate' (Maybe AuthKey)
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
        _AuthKey = buKey . _Just
        _AuthToken = buOAuthToken . _Just

instance GoogleRequest BudgetUpdate' where
        type Rs BudgetUpdate' = Budget
        request = requestWith adExchangeBuyerRequest
        requestWith rq BudgetUpdate'{..}
          = go _buAccountId _buBillingId _buQuotaUser
              (Just _buPrettyPrint)
              _buUserIP
              _buFields
              _buKey
              _buOAuthToken
              (Just AltJSON)
              _buPayload
          where go
                  = clientBuild (Proxy :: Proxy BudgetUpdateResource)
                      rq
