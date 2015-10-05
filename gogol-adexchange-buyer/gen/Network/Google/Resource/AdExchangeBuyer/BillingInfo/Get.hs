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
-- Module      : Network.Google.Resource.AdExchangeBuyer.BillingInfo.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the billing information for one account specified by account ID.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerBillingInfoGet@.
module Network.Google.Resource.AdExchangeBuyer.BillingInfo.Get
    (
    -- * REST Resource
      BillingInfoGetResource

    -- * Creating a Request
    , billingInfoGet'
    , BillingInfoGet'

    -- * Request Lenses
    , bigQuotaUser
    , bigPrettyPrint
    , bigUserIP
    , bigAccountId
    , bigKey
    , bigOAuthToken
    , bigFields
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerBillingInfoGet@ which the
-- 'BillingInfoGet'' request conforms to.
type BillingInfoGetResource =
     "billinginfo" :>
       Capture "accountId" Int32 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] BillingInfo

-- | Returns the billing information for one account specified by account ID.
--
-- /See:/ 'billingInfoGet'' smart constructor.
data BillingInfoGet' = BillingInfoGet'
    { _bigQuotaUser :: !(Maybe Text)
    , _bigPrettyPrint :: !Bool
    , _bigUserIP :: !(Maybe Text)
    , _bigAccountId :: !Int32
    , _bigKey :: !(Maybe Key)
    , _bigOAuthToken :: !(Maybe OAuthToken)
    , _bigFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingInfoGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bigQuotaUser'
--
-- * 'bigPrettyPrint'
--
-- * 'bigUserIP'
--
-- * 'bigAccountId'
--
-- * 'bigKey'
--
-- * 'bigOAuthToken'
--
-- * 'bigFields'
billingInfoGet'
    :: Int32 -- ^ 'accountId'
    -> BillingInfoGet'
billingInfoGet' pBigAccountId_ = 
    BillingInfoGet'
    { _bigQuotaUser = Nothing
    , _bigPrettyPrint = True
    , _bigUserIP = Nothing
    , _bigAccountId = pBigAccountId_
    , _bigKey = Nothing
    , _bigOAuthToken = Nothing
    , _bigFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bigQuotaUser :: Lens' BillingInfoGet' (Maybe Text)
bigQuotaUser
  = lens _bigQuotaUser (\ s a -> s{_bigQuotaUser = a})

-- | Returns response with indentations and line breaks.
bigPrettyPrint :: Lens' BillingInfoGet' Bool
bigPrettyPrint
  = lens _bigPrettyPrint
      (\ s a -> s{_bigPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bigUserIP :: Lens' BillingInfoGet' (Maybe Text)
bigUserIP
  = lens _bigUserIP (\ s a -> s{_bigUserIP = a})

-- | The account id.
bigAccountId :: Lens' BillingInfoGet' Int32
bigAccountId
  = lens _bigAccountId (\ s a -> s{_bigAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bigKey :: Lens' BillingInfoGet' (Maybe Key)
bigKey = lens _bigKey (\ s a -> s{_bigKey = a})

-- | OAuth 2.0 token for the current user.
bigOAuthToken :: Lens' BillingInfoGet' (Maybe OAuthToken)
bigOAuthToken
  = lens _bigOAuthToken
      (\ s a -> s{_bigOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bigFields :: Lens' BillingInfoGet' (Maybe Text)
bigFields
  = lens _bigFields (\ s a -> s{_bigFields = a})

instance GoogleAuth BillingInfoGet' where
        authKey = bigKey . _Just
        authToken = bigOAuthToken . _Just

instance GoogleRequest BillingInfoGet' where
        type Rs BillingInfoGet' = BillingInfo
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BillingInfoGet'{..}
          = go _bigAccountId _bigQuotaUser
              (Just _bigPrettyPrint)
              _bigUserIP
              _bigFields
              _bigKey
              _bigOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BillingInfoGetResource)
                      r
                      u
