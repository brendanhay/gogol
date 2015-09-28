{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Reseller.Subscriptions.ChangeRenewalSettings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes the renewal settings of a subscription
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.changeRenewalSettings@.
module Network.Google.API.Reseller.Subscriptions.ChangeRenewalSettings
    (
    -- * REST Resource
      SubscriptionsChangeRenewalSettingsAPI

    -- * Creating a Request
    , subscriptionsChangeRenewalSettings'
    , SubscriptionsChangeRenewalSettings'

    -- * Request Lenses
    , scrsQuotaUser
    , scrsPrettyPrint
    , scrsUserIp
    , scrsCustomerId
    , scrsKey
    , scrsOauthToken
    , scrsSubscriptionId
    , scrsFields
    , scrsAlt
    ) where

import           Network.Google.Apps.Reseller.Types
import           Network.Google.Prelude

-- | A resource alias for reseller.subscriptions.changeRenewalSettings which the
-- 'SubscriptionsChangeRenewalSettings'' request conforms to.
type SubscriptionsChangeRenewalSettingsAPI =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "changeRenewalSettings" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Subscription

-- | Changes the renewal settings of a subscription
--
-- /See:/ 'subscriptionsChangeRenewalSettings'' smart constructor.
data SubscriptionsChangeRenewalSettings' = SubscriptionsChangeRenewalSettings'
    { _scrsQuotaUser      :: !(Maybe Text)
    , _scrsPrettyPrint    :: !Bool
    , _scrsUserIp         :: !(Maybe Text)
    , _scrsCustomerId     :: !Text
    , _scrsKey            :: !(Maybe Text)
    , _scrsOauthToken     :: !(Maybe Text)
    , _scrsSubscriptionId :: !Text
    , _scrsFields         :: !(Maybe Text)
    , _scrsAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsChangeRenewalSettings'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrsQuotaUser'
--
-- * 'scrsPrettyPrint'
--
-- * 'scrsUserIp'
--
-- * 'scrsCustomerId'
--
-- * 'scrsKey'
--
-- * 'scrsOauthToken'
--
-- * 'scrsSubscriptionId'
--
-- * 'scrsFields'
--
-- * 'scrsAlt'
subscriptionsChangeRenewalSettings'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsChangeRenewalSettings'
subscriptionsChangeRenewalSettings' pScrsCustomerId_ pScrsSubscriptionId_ =
    SubscriptionsChangeRenewalSettings'
    { _scrsQuotaUser = Nothing
    , _scrsPrettyPrint = True
    , _scrsUserIp = Nothing
    , _scrsCustomerId = pScrsCustomerId_
    , _scrsKey = Nothing
    , _scrsOauthToken = Nothing
    , _scrsSubscriptionId = pScrsSubscriptionId_
    , _scrsFields = Nothing
    , _scrsAlt = JSON
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
scrsUserIp :: Lens' SubscriptionsChangeRenewalSettings' (Maybe Text)
scrsUserIp
  = lens _scrsUserIp (\ s a -> s{_scrsUserIp = a})

-- | Id of the Customer
scrsCustomerId :: Lens' SubscriptionsChangeRenewalSettings' Text
scrsCustomerId
  = lens _scrsCustomerId
      (\ s a -> s{_scrsCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scrsKey :: Lens' SubscriptionsChangeRenewalSettings' (Maybe Text)
scrsKey = lens _scrsKey (\ s a -> s{_scrsKey = a})

-- | OAuth 2.0 token for the current user.
scrsOauthToken :: Lens' SubscriptionsChangeRenewalSettings' (Maybe Text)
scrsOauthToken
  = lens _scrsOauthToken
      (\ s a -> s{_scrsOauthToken = a})

-- | Id of the subscription, which is unique for a customer
scrsSubscriptionId :: Lens' SubscriptionsChangeRenewalSettings' Text
scrsSubscriptionId
  = lens _scrsSubscriptionId
      (\ s a -> s{_scrsSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
scrsFields :: Lens' SubscriptionsChangeRenewalSettings' (Maybe Text)
scrsFields
  = lens _scrsFields (\ s a -> s{_scrsFields = a})

-- | Data format for the response.
scrsAlt :: Lens' SubscriptionsChangeRenewalSettings' Alt
scrsAlt = lens _scrsAlt (\ s a -> s{_scrsAlt = a})

instance GoogleRequest
         SubscriptionsChangeRenewalSettings' where
        type Rs SubscriptionsChangeRenewalSettings' =
             Subscription
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u
          SubscriptionsChangeRenewalSettings'{..}
          = go _scrsQuotaUser (Just _scrsPrettyPrint)
              _scrsUserIp
              _scrsCustomerId
              _scrsKey
              _scrsOauthToken
              _scrsSubscriptionId
              _scrsFields
              (Just _scrsAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy SubscriptionsChangeRenewalSettingsAPI)
                      r
                      u
