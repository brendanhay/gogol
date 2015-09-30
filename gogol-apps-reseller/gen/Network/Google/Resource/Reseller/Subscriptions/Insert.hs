{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates\/Transfers a subscription for the customer.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsInsert@.
module Reseller.Subscriptions.Insert
    (
    -- * REST Resource
      SubscriptionsInsertAPI

    -- * Creating a Request
    , subscriptionsInsert
    , SubscriptionsInsert

    -- * Request Lenses
    , siQuotaUser
    , siPrettyPrint
    , siUserIp
    , siCustomerId
    , siKey
    , siCustomerAuthToken
    , siOauthToken
    , siFields
    , siAlt
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsInsert@ which the
-- 'SubscriptionsInsert' request conforms to.
type SubscriptionsInsertAPI =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           QueryParam "customerAuthToken" Text :>
             Post '[JSON] Subscription

-- | Creates\/Transfers a subscription for the customer.
--
-- /See:/ 'subscriptionsInsert' smart constructor.
data SubscriptionsInsert = SubscriptionsInsert
    { _siQuotaUser         :: !(Maybe Text)
    , _siPrettyPrint       :: !Bool
    , _siUserIp            :: !(Maybe Text)
    , _siCustomerId        :: !Text
    , _siKey               :: !(Maybe Text)
    , _siCustomerAuthToken :: !(Maybe Text)
    , _siOauthToken        :: !(Maybe Text)
    , _siFields            :: !(Maybe Text)
    , _siAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIp'
--
-- * 'siCustomerId'
--
-- * 'siKey'
--
-- * 'siCustomerAuthToken'
--
-- * 'siOauthToken'
--
-- * 'siFields'
--
-- * 'siAlt'
subscriptionsInsert
    :: Text -- ^ 'customerId'
    -> SubscriptionsInsert
subscriptionsInsert pSiCustomerId_ =
    SubscriptionsInsert
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIp = Nothing
    , _siCustomerId = pSiCustomerId_
    , _siKey = Nothing
    , _siCustomerAuthToken = Nothing
    , _siOauthToken = Nothing
    , _siFields = Nothing
    , _siAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' SubscriptionsInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' SubscriptionsInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIp :: Lens' SubscriptionsInsert' (Maybe Text)
siUserIp = lens _siUserIp (\ s a -> s{_siUserIp = a})

-- | Id of the Customer
siCustomerId :: Lens' SubscriptionsInsert' Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SubscriptionsInsert' (Maybe Text)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | An auth token needed for transferring a subscription. Can be generated
-- at https:\/\/www.google.com\/a\/cpanel\/customer-domain\/TransferToken.
-- Optional.
siCustomerAuthToken :: Lens' SubscriptionsInsert' (Maybe Text)
siCustomerAuthToken
  = lens _siCustomerAuthToken
      (\ s a -> s{_siCustomerAuthToken = a})

-- | OAuth 2.0 token for the current user.
siOauthToken :: Lens' SubscriptionsInsert' (Maybe Text)
siOauthToken
  = lens _siOauthToken (\ s a -> s{_siOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SubscriptionsInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

-- | Data format for the response.
siAlt :: Lens' SubscriptionsInsert' Text
siAlt = lens _siAlt (\ s a -> s{_siAlt = a})

instance GoogleRequest SubscriptionsInsert' where
        type Rs SubscriptionsInsert' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsInsert{..}
          = go _siQuotaUser _siPrettyPrint _siUserIp
              _siCustomerId
              _siKey
              _siCustomerAuthToken
              _siOauthToken
              _siFields
              _siAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsInsertAPI)
                      r
                      u
