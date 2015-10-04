{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Subscriptions.StartPaidService
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Starts paid service of a trial subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsStartPaidService@.
module Network.Google.Resource.Reseller.Subscriptions.StartPaidService
    (
    -- * REST Resource
      SubscriptionsStartPaidServiceResource

    -- * Creating a Request
    , subscriptionsStartPaidService'
    , SubscriptionsStartPaidService'

    -- * Request Lenses
    , sspsQuotaUser
    , sspsPrettyPrint
    , sspsUserIP
    , sspsCustomerId
    , sspsKey
    , sspsOAuthToken
    , sspsSubscriptionId
    , sspsFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsStartPaidService@ which the
-- 'SubscriptionsStartPaidService'' request conforms to.
type SubscriptionsStartPaidServiceResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "startPaidService" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Subscription

-- | Starts paid service of a trial subscription
--
-- /See:/ 'subscriptionsStartPaidService'' smart constructor.
data SubscriptionsStartPaidService' = SubscriptionsStartPaidService'
    { _sspsQuotaUser      :: !(Maybe Text)
    , _sspsPrettyPrint    :: !Bool
    , _sspsUserIP         :: !(Maybe Text)
    , _sspsCustomerId     :: !Text
    , _sspsKey            :: !(Maybe Key)
    , _sspsOAuthToken     :: !(Maybe OAuthToken)
    , _sspsSubscriptionId :: !Text
    , _sspsFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsStartPaidService'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sspsQuotaUser'
--
-- * 'sspsPrettyPrint'
--
-- * 'sspsUserIP'
--
-- * 'sspsCustomerId'
--
-- * 'sspsKey'
--
-- * 'sspsOAuthToken'
--
-- * 'sspsSubscriptionId'
--
-- * 'sspsFields'
subscriptionsStartPaidService'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsStartPaidService'
subscriptionsStartPaidService' pSspsCustomerId_ pSspsSubscriptionId_ =
    SubscriptionsStartPaidService'
    { _sspsQuotaUser = Nothing
    , _sspsPrettyPrint = True
    , _sspsUserIP = Nothing
    , _sspsCustomerId = pSspsCustomerId_
    , _sspsKey = Nothing
    , _sspsOAuthToken = Nothing
    , _sspsSubscriptionId = pSspsSubscriptionId_
    , _sspsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sspsQuotaUser :: Lens' SubscriptionsStartPaidService' (Maybe Text)
sspsQuotaUser
  = lens _sspsQuotaUser
      (\ s a -> s{_sspsQuotaUser = a})

-- | Returns response with indentations and line breaks.
sspsPrettyPrint :: Lens' SubscriptionsStartPaidService' Bool
sspsPrettyPrint
  = lens _sspsPrettyPrint
      (\ s a -> s{_sspsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sspsUserIP :: Lens' SubscriptionsStartPaidService' (Maybe Text)
sspsUserIP
  = lens _sspsUserIP (\ s a -> s{_sspsUserIP = a})

-- | Id of the Customer
sspsCustomerId :: Lens' SubscriptionsStartPaidService' Text
sspsCustomerId
  = lens _sspsCustomerId
      (\ s a -> s{_sspsCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sspsKey :: Lens' SubscriptionsStartPaidService' (Maybe Key)
sspsKey = lens _sspsKey (\ s a -> s{_sspsKey = a})

-- | OAuth 2.0 token for the current user.
sspsOAuthToken :: Lens' SubscriptionsStartPaidService' (Maybe OAuthToken)
sspsOAuthToken
  = lens _sspsOAuthToken
      (\ s a -> s{_sspsOAuthToken = a})

-- | Id of the subscription, which is unique for a customer
sspsSubscriptionId :: Lens' SubscriptionsStartPaidService' Text
sspsSubscriptionId
  = lens _sspsSubscriptionId
      (\ s a -> s{_sspsSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
sspsFields :: Lens' SubscriptionsStartPaidService' (Maybe Text)
sspsFields
  = lens _sspsFields (\ s a -> s{_sspsFields = a})

instance GoogleAuth SubscriptionsStartPaidService'
         where
        authKey = sspsKey . _Just
        authToken = sspsOAuthToken . _Just

instance GoogleRequest SubscriptionsStartPaidService'
         where
        type Rs SubscriptionsStartPaidService' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u
          SubscriptionsStartPaidService'{..}
          = go _sspsCustomerId _sspsSubscriptionId
              _sspsQuotaUser
              (Just _sspsPrettyPrint)
              _sspsUserIP
              _sspsFields
              _sspsKey
              _sspsOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy SubscriptionsStartPaidServiceResource)
                      r
                      u
