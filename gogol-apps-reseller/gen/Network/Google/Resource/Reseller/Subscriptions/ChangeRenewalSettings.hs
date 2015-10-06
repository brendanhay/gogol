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
-- Module      : Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes the renewal settings of a subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @ResellerSubscriptionsChangeRenewalSettings@.
module Network.Google.Resource.Reseller.Subscriptions.ChangeRenewalSettings
    (
    -- * REST Resource
      SubscriptionsChangeRenewalSettingsResource

    -- * Creating a Request
    , subscriptionsChangeRenewalSettings'
    , SubscriptionsChangeRenewalSettings'

    -- * Request Lenses
    , scrsQuotaUser
    , scrsPrettyPrint
    , scrsUserIP
    , scrsPayload
    , scrsCustomerId
    , scrsKey
    , scrsOAuthToken
    , scrsSubscriptionId
    , scrsFields
    ) where

import           Network.Google.AppsReseller.Types
import           Network.Google.Prelude

-- | A resource alias for @ResellerSubscriptionsChangeRenewalSettings@ which the
-- 'SubscriptionsChangeRenewalSettings'' request conforms to.
type SubscriptionsChangeRenewalSettingsResource =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "changeRenewalSettings" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RenewalSettings :>
                               Post '[JSON] Subscription

-- | Changes the renewal settings of a subscription
--
-- /See:/ 'subscriptionsChangeRenewalSettings'' smart constructor.
data SubscriptionsChangeRenewalSettings' = SubscriptionsChangeRenewalSettings'
    { _scrsQuotaUser      :: !(Maybe Text)
    , _scrsPrettyPrint    :: !Bool
    , _scrsUserIP         :: !(Maybe Text)
    , _scrsPayload        :: !RenewalSettings
    , _scrsCustomerId     :: !Text
    , _scrsKey            :: !(Maybe AuthKey)
    , _scrsOAuthToken     :: !(Maybe OAuthToken)
    , _scrsSubscriptionId :: !Text
    , _scrsFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangeRenewalSettings'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrsQuotaUser'
--
-- * 'scrsPrettyPrint'
--
-- * 'scrsUserIP'
--
-- * 'scrsPayload'
--
-- * 'scrsCustomerId'
--
-- * 'scrsKey'
--
-- * 'scrsOAuthToken'
--
-- * 'scrsSubscriptionId'
--
-- * 'scrsFields'
subscriptionsChangeRenewalSettings'
    :: RenewalSettings -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsChangeRenewalSettings'
subscriptionsChangeRenewalSettings' pScrsPayload_ pScrsCustomerId_ pScrsSubscriptionId_ =
    SubscriptionsChangeRenewalSettings'
    { _scrsQuotaUser = Nothing
    , _scrsPrettyPrint = True
    , _scrsUserIP = Nothing
    , _scrsPayload = pScrsPayload_
    , _scrsCustomerId = pScrsCustomerId_
    , _scrsKey = Nothing
    , _scrsOAuthToken = Nothing
    , _scrsSubscriptionId = pScrsSubscriptionId_
    , _scrsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scrsQuotaUser :: Lens' SubscriptionsChangeRenewalSettings' (Maybe Text)
scrsQuotaUser
  = lens _scrsQuotaUser
      (\ s a -> s{_scrsQuotaUser = a})

-- | Returns response with indentations and line breaks.
scrsPrettyPrint :: Lens' SubscriptionsChangeRenewalSettings' Bool
scrsPrettyPrint
  = lens _scrsPrettyPrint
      (\ s a -> s{_scrsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scrsUserIP :: Lens' SubscriptionsChangeRenewalSettings' (Maybe Text)
scrsUserIP
  = lens _scrsUserIP (\ s a -> s{_scrsUserIP = a})

-- | Multipart request metadata.
scrsPayload :: Lens' SubscriptionsChangeRenewalSettings' RenewalSettings
scrsPayload
  = lens _scrsPayload (\ s a -> s{_scrsPayload = a})

-- | Id of the Customer
scrsCustomerId :: Lens' SubscriptionsChangeRenewalSettings' Text
scrsCustomerId
  = lens _scrsCustomerId
      (\ s a -> s{_scrsCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scrsKey :: Lens' SubscriptionsChangeRenewalSettings' (Maybe AuthKey)
scrsKey = lens _scrsKey (\ s a -> s{_scrsKey = a})

-- | OAuth 2.0 token for the current user.
scrsOAuthToken :: Lens' SubscriptionsChangeRenewalSettings' (Maybe OAuthToken)
scrsOAuthToken
  = lens _scrsOAuthToken
      (\ s a -> s{_scrsOAuthToken = a})

-- | Id of the subscription, which is unique for a customer
scrsSubscriptionId :: Lens' SubscriptionsChangeRenewalSettings' Text
scrsSubscriptionId
  = lens _scrsSubscriptionId
      (\ s a -> s{_scrsSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
scrsFields :: Lens' SubscriptionsChangeRenewalSettings' (Maybe Text)
scrsFields
  = lens _scrsFields (\ s a -> s{_scrsFields = a})

instance GoogleAuth
         SubscriptionsChangeRenewalSettings' where
        authKey = scrsKey . _Just
        authToken = scrsOAuthToken . _Just

instance GoogleRequest
         SubscriptionsChangeRenewalSettings' where
        type Rs SubscriptionsChangeRenewalSettings' =
             Subscription
        request = requestWith appsResellerRequest
        requestWith rq
          SubscriptionsChangeRenewalSettings'{..}
          = go _scrsCustomerId _scrsSubscriptionId
              _scrsQuotaUser
              (Just _scrsPrettyPrint)
              _scrsUserIP
              _scrsFields
              _scrsKey
              _scrsOAuthToken
              (Just AltJSON)
              _scrsPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy SubscriptionsChangeRenewalSettingsResource)
                      rq
