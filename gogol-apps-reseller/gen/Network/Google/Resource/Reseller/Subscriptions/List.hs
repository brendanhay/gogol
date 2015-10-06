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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists subscriptions of a reseller, optionally filtered by a customer
-- name prefix.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsList@.
module Network.Google.Resource.Reseller.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListResource

    -- * Creating a Request
    , subscriptionsList'
    , SubscriptionsList'

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIP
    , slCustomerNamePrefix
    , slCustomerId
    , slKey
    , slCustomerAuthToken
    , slPageToken
    , slOAuthToken
    , slMaxResults
    , slFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsList@ which the
-- 'SubscriptionsList'' request conforms to.
type SubscriptionsListResource =
     "subscriptions" :>
       QueryParam "customerNamePrefix" Text :>
         QueryParam "customerId" Text :>
           QueryParam "customerAuthToken" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] Subscriptions

-- | Lists subscriptions of a reseller, optionally filtered by a customer
-- name prefix.
--
-- /See:/ 'subscriptionsList'' smart constructor.
data SubscriptionsList' = SubscriptionsList'
    { _slQuotaUser          :: !(Maybe Text)
    , _slPrettyPrint        :: !Bool
    , _slUserIP             :: !(Maybe Text)
    , _slCustomerNamePrefix :: !(Maybe Text)
    , _slCustomerId         :: !(Maybe Text)
    , _slKey                :: !(Maybe AuthKey)
    , _slCustomerAuthToken  :: !(Maybe Text)
    , _slPageToken          :: !(Maybe Text)
    , _slOAuthToken         :: !(Maybe OAuthToken)
    , _slMaxResults         :: !(Maybe Word32)
    , _slFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIP'
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
-- * 'slOAuthToken'
--
-- * 'slMaxResults'
--
-- * 'slFields'
subscriptionsList'
    :: SubscriptionsList'
subscriptionsList' =
    SubscriptionsList'
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIP = Nothing
    , _slCustomerNamePrefix = Nothing
    , _slCustomerId = Nothing
    , _slKey = Nothing
    , _slCustomerAuthToken = Nothing
    , _slPageToken = Nothing
    , _slOAuthToken = Nothing
    , _slMaxResults = Nothing
    , _slFields = Nothing
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
slUserIP :: Lens' SubscriptionsList' (Maybe Text)
slUserIP = lens _slUserIP (\ s a -> s{_slUserIP = a})

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
slKey :: Lens' SubscriptionsList' (Maybe AuthKey)
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
slOAuthToken :: Lens' SubscriptionsList' (Maybe OAuthToken)
slOAuthToken
  = lens _slOAuthToken (\ s a -> s{_slOAuthToken = a})

-- | Maximum number of results to return
slMaxResults :: Lens' SubscriptionsList' (Maybe Word32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SubscriptionsList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

instance GoogleAuth SubscriptionsList' where
        _AuthKey = slKey . _Just
        _AuthToken = slOAuthToken . _Just

instance GoogleRequest SubscriptionsList' where
        type Rs SubscriptionsList' = Subscriptions
        request = requestWith appsResellerRequest
        requestWith rq SubscriptionsList'{..}
          = go _slCustomerNamePrefix _slCustomerId
              _slCustomerAuthToken
              _slPageToken
              _slMaxResults
              _slQuotaUser
              (Just _slPrettyPrint)
              _slUserIP
              _slFields
              _slKey
              _slOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy SubscriptionsListResource)
                      rq
