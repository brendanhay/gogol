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
    , scrsCustomerId
    , scrsKey
    , scrsOAuthToken
    , scrsRenewalSettings
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
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RenewalSettings :>
                               Post '[JSON] Subscription

-- | Changes the renewal settings of a subscription
--
-- /See:/ 'subscriptionsChangeRenewalSettings'' smart constructor.
data SubscriptionsChangeRenewalSettings' = SubscriptionsChangeRenewalSettings'
    { _scrsQuotaUser       :: !(Maybe Text)
    , _scrsPrettyPrint     :: !Bool
    , _scrsUserIP          :: !(Maybe Text)
    , _scrsCustomerId      :: !Text
    , _scrsKey             :: !(Maybe Key)
    , _scrsOAuthToken      :: !(Maybe OAuthToken)
    , _scrsRenewalSettings :: !RenewalSettings
    , _scrsSubscriptionId  :: !Text
    , _scrsFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'scrsCustomerId'
--
-- * 'scrsKey'
--
-- * 'scrsOAuthToken'
--
-- * 'scrsRenewalSettings'
--
-- * 'scrsSubscriptionId'
--
-- * 'scrsFields'
subscriptionsChangeRenewalSettings'
    :: Text -- ^ 'customerId'
    -> RenewalSettings -- ^ 'RenewalSettings'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsChangeRenewalSettings'
subscriptionsChangeRenewalSettings' pScrsCustomerId_ pScrsRenewalSettings_ pScrsSubscriptionId_ =
    SubscriptionsChangeRenewalSettings'
    { _scrsQuotaUser = Nothing
    , _scrsPrettyPrint = True
    , _scrsUserIP = Nothing
    , _scrsCustomerId = pScrsCustomerId_
    , _scrsKey = Nothing
    , _scrsOAuthToken = Nothing
    , _scrsRenewalSettings = pScrsRenewalSettings_
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

-- | Id of the Customer
scrsCustomerId :: Lens' SubscriptionsChangeRenewalSettings' Text
scrsCustomerId
  = lens _scrsCustomerId
      (\ s a -> s{_scrsCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scrsKey :: Lens' SubscriptionsChangeRenewalSettings' (Maybe Key)
scrsKey = lens _scrsKey (\ s a -> s{_scrsKey = a})

-- | OAuth 2.0 token for the current user.
scrsOAuthToken :: Lens' SubscriptionsChangeRenewalSettings' (Maybe OAuthToken)
scrsOAuthToken
  = lens _scrsOAuthToken
      (\ s a -> s{_scrsOAuthToken = a})

-- | Multipart request metadata.
scrsRenewalSettings :: Lens' SubscriptionsChangeRenewalSettings' RenewalSettings
scrsRenewalSettings
  = lens _scrsRenewalSettings
      (\ s a -> s{_scrsRenewalSettings = a})

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
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u
          SubscriptionsChangeRenewalSettings'{..}
          = go _scrsQuotaUser (Just _scrsPrettyPrint)
              _scrsUserIP
              _scrsCustomerId
              _scrsKey
              _scrsOAuthToken
              _scrsSubscriptionId
              _scrsFields
              (Just AltJSON)
              _scrsRenewalSettings
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy SubscriptionsChangeRenewalSettingsResource)
                      r
                      u
