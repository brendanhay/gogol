{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Reseller.Subscriptions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists subscriptions of a reseller, optionally filtered by a customer
-- name prefix.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.list@.
module Network.Google.API.Reseller.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListAPI

    -- * Creating a Request
    , subscriptionsList'
    , SubscriptionsList'

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIp
    , slCustomerNamePrefix
    , slCustomerId
    , slKey
    , slCustomerAuthToken
    , slPageToken
    , slOauthToken
    , slMaxResults
    , slFields
    , slAlt
    ) where

import           Network.Google.Apps.Reseller.Types
import           Network.Google.Prelude

-- | A resource alias for reseller.subscriptions.list which the
-- 'SubscriptionsList'' request conforms to.
type SubscriptionsListAPI =
     "subscriptions" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "customerNamePrefix" Text :>
               QueryParam "customerId" Text :>
                 QueryParam "key" Text :>
                   QueryParam "customerAuthToken" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Nat :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Subscriptions

-- | Lists subscriptions of a reseller, optionally filtered by a customer
-- name prefix.
--
-- /See:/ 'subscriptionsList'' smart constructor.
data SubscriptionsList' = SubscriptionsList'
    { _slQuotaUser          :: !(Maybe Text)
    , _slPrettyPrint        :: !Bool
    , _slUserIp             :: !(Maybe Text)
    , _slCustomerNamePrefix :: !(Maybe Text)
    , _slCustomerId         :: !(Maybe Text)
    , _slKey                :: !(Maybe Text)
    , _slCustomerAuthToken  :: !(Maybe Text)
    , _slPageToken          :: !(Maybe Text)
    , _slOauthToken         :: !(Maybe Text)
    , _slMaxResults         :: !(Maybe Nat)
    , _slFields             :: !(Maybe Text)
    , _slAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slCustomerNamePrefix'
--
-- * 'slCustomerId'
--
-- * 'slKey'
--
-- * 'slCustomerAuthToken'
--
-- * 'slPageToken'
--
-- * 'slOauthToken'
--
-- * 'slMaxResults'
--
-- * 'slFields'
--
-- * 'slAlt'
subscriptionsList'
    :: SubscriptionsList'
subscriptionsList' =
    SubscriptionsList'
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slCustomerNamePrefix = Nothing
    , _slCustomerId = Nothing
    , _slKey = Nothing
    , _slCustomerAuthToken = Nothing
    , _slPageToken = Nothing
    , _slOauthToken = Nothing
    , _slMaxResults = Nothing
    , _slFields = Nothing
    , _slAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SubscriptionsList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SubscriptionsList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SubscriptionsList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | Prefix of the customer\'s domain name by which the subscriptions should
-- be filtered. Optional
slCustomerNamePrefix :: Lens' SubscriptionsList' (Maybe Text)
slCustomerNamePrefix
  = lens _slCustomerNamePrefix
      (\ s a -> s{_slCustomerNamePrefix = a})

-- | Id of the Customer
slCustomerId :: Lens' SubscriptionsList' (Maybe Text)
slCustomerId
  = lens _slCustomerId (\ s a -> s{_slCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SubscriptionsList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | An auth token needed if the customer is not a resold customer of this
-- reseller. Can be generated at
-- https:\/\/www.google.com\/a\/cpanel\/customer-domain\/TransferToken.Optional.
slCustomerAuthToken :: Lens' SubscriptionsList' (Maybe Text)
slCustomerAuthToken
  = lens _slCustomerAuthToken
      (\ s a -> s{_slCustomerAuthToken = a})

-- | Token to specify next page in the list
slPageToken :: Lens' SubscriptionsList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SubscriptionsList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Maximum number of results to return
slMaxResults :: Lens' SubscriptionsList' (Maybe Natural)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SubscriptionsList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SubscriptionsList' Alt
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SubscriptionsList' where
        type Rs SubscriptionsList' = Subscriptions
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsList'{..}
          = go _slQuotaUser (Just _slPrettyPrint) _slUserIp
              _slCustomerNamePrefix
              _slCustomerId
              _slKey
              _slCustomerAuthToken
              _slPageToken
              _slOauthToken
              _slMaxResults
              _slFields
              (Just _slAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsListAPI)
                      r
                      u
