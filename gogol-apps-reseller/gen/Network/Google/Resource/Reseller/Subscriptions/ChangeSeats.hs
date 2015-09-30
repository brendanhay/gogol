{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reseller.Subscriptions.ChangeSeats
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes the seats configuration of a subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsChangeSeats@.
module Reseller.Subscriptions.ChangeSeats
    (
    -- * REST Resource
      SubscriptionsChangeSeatsAPI

    -- * Creating a Request
    , subscriptionsChangeSeats
    , SubscriptionsChangeSeats

    -- * Request Lenses
    , scsQuotaUser
    , scsPrettyPrint
    , scsUserIp
    , scsCustomerId
    , scsKey
    , scsOauthToken
    , scsSubscriptionId
    , scsFields
    , scsAlt
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsChangeSeats@ which the
-- 'SubscriptionsChangeSeats' request conforms to.
type SubscriptionsChangeSeatsAPI =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "changeSeats" :> Post '[JSON] Subscription

-- | Changes the seats configuration of a subscription
--
-- /See:/ 'subscriptionsChangeSeats' smart constructor.
data SubscriptionsChangeSeats = SubscriptionsChangeSeats
    { _scsQuotaUser      :: !(Maybe Text)
    , _scsPrettyPrint    :: !Bool
    , _scsUserIp         :: !(Maybe Text)
    , _scsCustomerId     :: !Text
    , _scsKey            :: !(Maybe Text)
    , _scsOauthToken     :: !(Maybe Text)
    , _scsSubscriptionId :: !Text
    , _scsFields         :: !(Maybe Text)
    , _scsAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangeSeats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsQuotaUser'
--
-- * 'scsPrettyPrint'
--
-- * 'scsUserIp'
--
-- * 'scsCustomerId'
--
-- * 'scsKey'
--
-- * 'scsOauthToken'
--
-- * 'scsSubscriptionId'
--
-- * 'scsFields'
--
-- * 'scsAlt'
subscriptionsChangeSeats
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsChangeSeats
subscriptionsChangeSeats pScsCustomerId_ pScsSubscriptionId_ =
    SubscriptionsChangeSeats
    { _scsQuotaUser = Nothing
    , _scsPrettyPrint = True
    , _scsUserIp = Nothing
    , _scsCustomerId = pScsCustomerId_
    , _scsKey = Nothing
    , _scsOauthToken = Nothing
    , _scsSubscriptionId = pScsSubscriptionId_
    , _scsFields = Nothing
    , _scsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scsQuotaUser :: Lens' SubscriptionsChangeSeats' (Maybe Text)
scsQuotaUser
  = lens _scsQuotaUser (\ s a -> s{_scsQuotaUser = a})

-- | Returns response with indentations and line breaks.
scsPrettyPrint :: Lens' SubscriptionsChangeSeats' Bool
scsPrettyPrint
  = lens _scsPrettyPrint
      (\ s a -> s{_scsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scsUserIp :: Lens' SubscriptionsChangeSeats' (Maybe Text)
scsUserIp
  = lens _scsUserIp (\ s a -> s{_scsUserIp = a})

-- | Id of the Customer
scsCustomerId :: Lens' SubscriptionsChangeSeats' Text
scsCustomerId
  = lens _scsCustomerId
      (\ s a -> s{_scsCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scsKey :: Lens' SubscriptionsChangeSeats' (Maybe Text)
scsKey = lens _scsKey (\ s a -> s{_scsKey = a})

-- | OAuth 2.0 token for the current user.
scsOauthToken :: Lens' SubscriptionsChangeSeats' (Maybe Text)
scsOauthToken
  = lens _scsOauthToken
      (\ s a -> s{_scsOauthToken = a})

-- | Id of the subscription, which is unique for a customer
scsSubscriptionId :: Lens' SubscriptionsChangeSeats' Text
scsSubscriptionId
  = lens _scsSubscriptionId
      (\ s a -> s{_scsSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
scsFields :: Lens' SubscriptionsChangeSeats' (Maybe Text)
scsFields
  = lens _scsFields (\ s a -> s{_scsFields = a})

-- | Data format for the response.
scsAlt :: Lens' SubscriptionsChangeSeats' Text
scsAlt = lens _scsAlt (\ s a -> s{_scsAlt = a})

instance GoogleRequest SubscriptionsChangeSeats'
         where
        type Rs SubscriptionsChangeSeats' = Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsChangeSeats{..}
          = go _scsQuotaUser _scsPrettyPrint _scsUserIp
              _scsCustomerId
              _scsKey
              _scsOauthToken
              _scsSubscriptionId
              _scsFields
              _scsAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsChangeSeatsAPI)
                      r
                      u
