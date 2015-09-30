{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a subscription of the customer.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsGet@.
module Reseller.Subscriptions.Get
    (
    -- * REST Resource
      SubscriptionsGetAPI

    -- * Creating a Request
    , subscriptionsGet
    , SubscriptionsGet

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgCustomerId
    , sgKey
    , sgOauthToken
    , sgSubscriptionId
    , sgFields
    , sgAlt
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsGet@ which the
-- 'SubscriptionsGet' request conforms to.
type SubscriptionsGetAPI =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             Get '[JSON] Subscription

-- | Gets a subscription of the customer.
--
-- /See:/ 'subscriptionsGet' smart constructor.
data SubscriptionsGet = SubscriptionsGet
    { _sgQuotaUser      :: !(Maybe Text)
    , _sgPrettyPrint    :: !Bool
    , _sgUserIp         :: !(Maybe Text)
    , _sgCustomerId     :: !Text
    , _sgKey            :: !(Maybe Text)
    , _sgOauthToken     :: !(Maybe Text)
    , _sgSubscriptionId :: !Text
    , _sgFields         :: !(Maybe Text)
    , _sgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgCustomerId'
--
-- * 'sgKey'
--
-- * 'sgOauthToken'
--
-- * 'sgSubscriptionId'
--
-- * 'sgFields'
--
-- * 'sgAlt'
subscriptionsGet
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsGet
subscriptionsGet pSgCustomerId_ pSgSubscriptionId_ =
    SubscriptionsGet
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgCustomerId = pSgCustomerId_
    , _sgKey = Nothing
    , _sgOauthToken = Nothing
    , _sgSubscriptionId = pSgSubscriptionId_
    , _sgFields = Nothing
    , _sgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SubscriptionsGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SubscriptionsGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' SubscriptionsGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | Id of the Customer
sgCustomerId :: Lens' SubscriptionsGet' Text
sgCustomerId
  = lens _sgCustomerId (\ s a -> s{_sgCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SubscriptionsGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SubscriptionsGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Id of the subscription, which is unique for a customer
sgSubscriptionId :: Lens' SubscriptionsGet' Text
sgSubscriptionId
  = lens _sgSubscriptionId
      (\ s a -> s{_sgSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SubscriptionsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' SubscriptionsGet' Text
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SubscriptionsGet' where
        type Rs SubscriptionsGet' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsGet{..}
          = go _sgQuotaUser _sgPrettyPrint _sgUserIp
              _sgCustomerId
              _sgKey
              _sgOauthToken
              _sgSubscriptionId
              _sgFields
              _sgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsGetAPI)
                      r
                      u
