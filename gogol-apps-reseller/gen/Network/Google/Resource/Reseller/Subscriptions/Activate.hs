{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Subscriptions.Activate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Activates a subscription previously suspended by the reseller
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsActivate@.
module Reseller.Subscriptions.Activate
    (
    -- * REST Resource
      SubscriptionsActivateAPI

    -- * Creating a Request
    , subscriptionsActivate
    , SubscriptionsActivate

    -- * Request Lenses
    , saQuotaUser
    , saPrettyPrint
    , saUserIp
    , saCustomerId
    , saKey
    , saOauthToken
    , saSubscriptionId
    , saFields
    , saAlt
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsActivate@ which the
-- 'SubscriptionsActivate' request conforms to.
type SubscriptionsActivateAPI =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "activate" :> Post '[JSON] Subscription

-- | Activates a subscription previously suspended by the reseller
--
-- /See:/ 'subscriptionsActivate' smart constructor.
data SubscriptionsActivate = SubscriptionsActivate
    { _saQuotaUser      :: !(Maybe Text)
    , _saPrettyPrint    :: !Bool
    , _saUserIp         :: !(Maybe Text)
    , _saCustomerId     :: !Text
    , _saKey            :: !(Maybe Text)
    , _saOauthToken     :: !(Maybe Text)
    , _saSubscriptionId :: !Text
    , _saFields         :: !(Maybe Text)
    , _saAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsActivate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saQuotaUser'
--
-- * 'saPrettyPrint'
--
-- * 'saUserIp'
--
-- * 'saCustomerId'
--
-- * 'saKey'
--
-- * 'saOauthToken'
--
-- * 'saSubscriptionId'
--
-- * 'saFields'
--
-- * 'saAlt'
subscriptionsActivate
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsActivate
subscriptionsActivate pSaCustomerId_ pSaSubscriptionId_ =
    SubscriptionsActivate
    { _saQuotaUser = Nothing
    , _saPrettyPrint = True
    , _saUserIp = Nothing
    , _saCustomerId = pSaCustomerId_
    , _saKey = Nothing
    , _saOauthToken = Nothing
    , _saSubscriptionId = pSaSubscriptionId_
    , _saFields = Nothing
    , _saAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
saQuotaUser :: Lens' SubscriptionsActivate' (Maybe Text)
saQuotaUser
  = lens _saQuotaUser (\ s a -> s{_saQuotaUser = a})

-- | Returns response with indentations and line breaks.
saPrettyPrint :: Lens' SubscriptionsActivate' Bool
saPrettyPrint
  = lens _saPrettyPrint
      (\ s a -> s{_saPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
saUserIp :: Lens' SubscriptionsActivate' (Maybe Text)
saUserIp = lens _saUserIp (\ s a -> s{_saUserIp = a})

-- | Id of the Customer
saCustomerId :: Lens' SubscriptionsActivate' Text
saCustomerId
  = lens _saCustomerId (\ s a -> s{_saCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
saKey :: Lens' SubscriptionsActivate' (Maybe Text)
saKey = lens _saKey (\ s a -> s{_saKey = a})

-- | OAuth 2.0 token for the current user.
saOauthToken :: Lens' SubscriptionsActivate' (Maybe Text)
saOauthToken
  = lens _saOauthToken (\ s a -> s{_saOauthToken = a})

-- | Id of the subscription, which is unique for a customer
saSubscriptionId :: Lens' SubscriptionsActivate' Text
saSubscriptionId
  = lens _saSubscriptionId
      (\ s a -> s{_saSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
saFields :: Lens' SubscriptionsActivate' (Maybe Text)
saFields = lens _saFields (\ s a -> s{_saFields = a})

-- | Data format for the response.
saAlt :: Lens' SubscriptionsActivate' Text
saAlt = lens _saAlt (\ s a -> s{_saAlt = a})

instance GoogleRequest SubscriptionsActivate' where
        type Rs SubscriptionsActivate' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsActivate{..}
          = go _saQuotaUser _saPrettyPrint _saUserIp
              _saCustomerId
              _saKey
              _saOauthToken
              _saSubscriptionId
              _saFields
              _saAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsActivateAPI)
                      r
                      u
