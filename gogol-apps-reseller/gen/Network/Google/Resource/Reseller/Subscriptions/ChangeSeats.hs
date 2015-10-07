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
module Network.Google.Resource.Reseller.Subscriptions.ChangeSeats
    (
    -- * REST Resource
      SubscriptionsChangeSeatsResource

    -- * Creating a Request
    , subscriptionsChangeSeats'
    , SubscriptionsChangeSeats'

    -- * Request Lenses
    , scsQuotaUser
    , scsPrettyPrint
    , scsUserIP
    , scsPayload
    , scsCustomerId
    , scsKey
    , scsOAuthToken
    , scsSubscriptionId
    , scsFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsChangeSeats@ method which the
-- 'SubscriptionsChangeSeats'' request conforms to.
type SubscriptionsChangeSeatsResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "changeSeats" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Seats :> Post '[JSON] Subscription

-- | Changes the seats configuration of a subscription
--
-- /See:/ 'subscriptionsChangeSeats'' smart constructor.
data SubscriptionsChangeSeats' = SubscriptionsChangeSeats'
    { _scsQuotaUser      :: !(Maybe Text)
    , _scsPrettyPrint    :: !Bool
    , _scsUserIP         :: !(Maybe Text)
    , _scsPayload        :: !Seats
    , _scsCustomerId     :: !Text
    , _scsKey            :: !(Maybe AuthKey)
    , _scsOAuthToken     :: !(Maybe OAuthToken)
    , _scsSubscriptionId :: !Text
    , _scsFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangeSeats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsQuotaUser'
--
-- * 'scsPrettyPrint'
--
-- * 'scsUserIP'
--
-- * 'scsPayload'
--
-- * 'scsCustomerId'
--
-- * 'scsKey'
--
-- * 'scsOAuthToken'
--
-- * 'scsSubscriptionId'
--
-- * 'scsFields'
subscriptionsChangeSeats'
    :: Seats -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsChangeSeats'
subscriptionsChangeSeats' pScsPayload_ pScsCustomerId_ pScsSubscriptionId_ =
    SubscriptionsChangeSeats'
    { _scsQuotaUser = Nothing
    , _scsPrettyPrint = True
    , _scsUserIP = Nothing
    , _scsPayload = pScsPayload_
    , _scsCustomerId = pScsCustomerId_
    , _scsKey = Nothing
    , _scsOAuthToken = Nothing
    , _scsSubscriptionId = pScsSubscriptionId_
    , _scsFields = Nothing
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
scsUserIP :: Lens' SubscriptionsChangeSeats' (Maybe Text)
scsUserIP
  = lens _scsUserIP (\ s a -> s{_scsUserIP = a})

-- | Multipart request metadata.
scsPayload :: Lens' SubscriptionsChangeSeats' Seats
scsPayload
  = lens _scsPayload (\ s a -> s{_scsPayload = a})

-- | Id of the Customer
scsCustomerId :: Lens' SubscriptionsChangeSeats' Text
scsCustomerId
  = lens _scsCustomerId
      (\ s a -> s{_scsCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scsKey :: Lens' SubscriptionsChangeSeats' (Maybe AuthKey)
scsKey = lens _scsKey (\ s a -> s{_scsKey = a})

-- | OAuth 2.0 token for the current user.
scsOAuthToken :: Lens' SubscriptionsChangeSeats' (Maybe OAuthToken)
scsOAuthToken
  = lens _scsOAuthToken
      (\ s a -> s{_scsOAuthToken = a})

-- | Id of the subscription, which is unique for a customer
scsSubscriptionId :: Lens' SubscriptionsChangeSeats' Text
scsSubscriptionId
  = lens _scsSubscriptionId
      (\ s a -> s{_scsSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
scsFields :: Lens' SubscriptionsChangeSeats' (Maybe Text)
scsFields
  = lens _scsFields (\ s a -> s{_scsFields = a})

instance GoogleAuth SubscriptionsChangeSeats' where
        _AuthKey = scsKey . _Just
        _AuthToken = scsOAuthToken . _Just

instance GoogleRequest SubscriptionsChangeSeats'
         where
        type Rs SubscriptionsChangeSeats' = Subscription
        request = requestWith appsResellerRequest
        requestWith rq SubscriptionsChangeSeats'{..}
          = go _scsCustomerId _scsSubscriptionId _scsQuotaUser
              (Just _scsPrettyPrint)
              _scsUserIP
              _scsFields
              _scsKey
              _scsOAuthToken
              (Just AltJSON)
              _scsPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy SubscriptionsChangeSeatsResource)
                      rq
