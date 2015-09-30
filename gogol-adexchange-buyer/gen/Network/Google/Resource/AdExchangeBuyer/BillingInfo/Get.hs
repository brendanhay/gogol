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
    , bigUserIp
    , bigAccountId
    , bigKey
    , bigOauthToken
    , bigFields
    , bigAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerBillingInfoGet@ which the
-- 'BillingInfoGet'' request conforms to.
type BillingInfoGetResource =
     "billinginfo" :>
       Capture "accountId" Int32 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] BillingInfo

-- | Returns the billing information for one account specified by account ID.
--
-- /See:/ 'billingInfoGet'' smart constructor.
data BillingInfoGet' = BillingInfoGet'
    { _bigQuotaUser   :: !(Maybe Text)
    , _bigPrettyPrint :: !Bool
    , _bigUserIp      :: !(Maybe Text)
    , _bigAccountId   :: !Int32
    , _bigKey         :: !(Maybe Text)
    , _bigOauthToken  :: !(Maybe Text)
    , _bigFields      :: !(Maybe Text)
    , _bigAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingInfoGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bigQuotaUser'
--
-- * 'bigPrettyPrint'
--
-- * 'bigUserIp'
--
-- * 'bigAccountId'
--
-- * 'bigKey'
--
-- * 'bigOauthToken'
--
-- * 'bigFields'
--
-- * 'bigAlt'
billingInfoGet'
    :: Int32 -- ^ 'accountId'
    -> BillingInfoGet'
billingInfoGet' pBigAccountId_ =
    BillingInfoGet'
    { _bigQuotaUser = Nothing
    , _bigPrettyPrint = True
    , _bigUserIp = Nothing
    , _bigAccountId = pBigAccountId_
    , _bigKey = Nothing
    , _bigOauthToken = Nothing
    , _bigFields = Nothing
    , _bigAlt = JSON
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
bigUserIp :: Lens' BillingInfoGet' (Maybe Text)
bigUserIp
  = lens _bigUserIp (\ s a -> s{_bigUserIp = a})

-- | The account id.
bigAccountId :: Lens' BillingInfoGet' Int32
bigAccountId
  = lens _bigAccountId (\ s a -> s{_bigAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bigKey :: Lens' BillingInfoGet' (Maybe Text)
bigKey = lens _bigKey (\ s a -> s{_bigKey = a})

-- | OAuth 2.0 token for the current user.
bigOauthToken :: Lens' BillingInfoGet' (Maybe Text)
bigOauthToken
  = lens _bigOauthToken
      (\ s a -> s{_bigOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bigFields :: Lens' BillingInfoGet' (Maybe Text)
bigFields
  = lens _bigFields (\ s a -> s{_bigFields = a})

-- | Data format for the response.
bigAlt :: Lens' BillingInfoGet' Alt
bigAlt = lens _bigAlt (\ s a -> s{_bigAlt = a})

instance GoogleRequest BillingInfoGet' where
        type Rs BillingInfoGet' = BillingInfo
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BillingInfoGet'{..}
          = go _bigQuotaUser (Just _bigPrettyPrint) _bigUserIp
              _bigAccountId
              _bigKey
              _bigOauthToken
              _bigFields
              (Just _bigAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BillingInfoGetResource)
                      r
                      u
