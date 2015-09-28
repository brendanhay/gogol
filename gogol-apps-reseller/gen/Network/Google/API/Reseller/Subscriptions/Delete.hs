{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Reseller.Subscriptions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels\/Downgrades a subscription.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Enterprise Apps Reseller API Reference> for @reseller.subscriptions.delete@.
module Network.Google.API.Reseller.Subscriptions.Delete
    (
    -- * REST Resource
      SubscriptionsDeleteAPI

    -- * Creating a Request
    , subscriptionsDelete'
    , SubscriptionsDelete'

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdUserIp
    , sdCustomerId
    , sdDeletionType
    , sdKey
    , sdOauthToken
    , sdSubscriptionId
    , sdFields
    , sdAlt
    ) where

import           Network.Google.Apps.Reseller.Types
import           Network.Google.Prelude

-- | A resource alias for reseller.subscriptions.delete which the
-- 'SubscriptionsDelete'' request conforms to.
type SubscriptionsDeleteAPI =
     "customers" :>
       Capture "customerId" Text :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "deletionType"
                     SubscriptionsDelete'DeletionType
                     :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Cancels\/Downgrades a subscription.
--
-- /See:/ 'subscriptionsDelete'' smart constructor.
data SubscriptionsDelete' = SubscriptionsDelete'
    { _sdQuotaUser      :: !(Maybe Text)
    , _sdPrettyPrint    :: !Bool
    , _sdUserIp         :: !(Maybe Text)
    , _sdCustomerId     :: !Text
    , _sdDeletionType   :: !SubscriptionsDelete'DeletionType
    , _sdKey            :: !(Maybe Text)
    , _sdOauthToken     :: !(Maybe Text)
    , _sdSubscriptionId :: !Text
    , _sdFields         :: !(Maybe Text)
    , _sdAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdUserIp'
--
-- * 'sdCustomerId'
--
-- * 'sdDeletionType'
--
-- * 'sdKey'
--
-- * 'sdOauthToken'
--
-- * 'sdSubscriptionId'
--
-- * 'sdFields'
--
-- * 'sdAlt'
subscriptionsDelete'
    :: Text -- ^ 'customerId'
    -> SubscriptionsDelete'DeletionType -- ^ 'deletionType'
    -> Text -- ^ 'subscriptionId'
    -> SubscriptionsDelete'
subscriptionsDelete' pSdCustomerId_ pSdDeletionType_ pSdSubscriptionId_ =
    SubscriptionsDelete'
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIp = Nothing
    , _sdCustomerId = pSdCustomerId_
    , _sdDeletionType = pSdDeletionType_
    , _sdKey = Nothing
    , _sdOauthToken = Nothing
    , _sdSubscriptionId = pSdSubscriptionId_
    , _sdFields = Nothing
    , _sdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sdQuotaUser :: Lens' SubscriptionsDelete' (Maybe Text)
sdQuotaUser
  = lens _sdQuotaUser (\ s a -> s{_sdQuotaUser = a})

-- | Returns response with indentations and line breaks.
sdPrettyPrint :: Lens' SubscriptionsDelete' Bool
sdPrettyPrint
  = lens _sdPrettyPrint
      (\ s a -> s{_sdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sdUserIp :: Lens' SubscriptionsDelete' (Maybe Text)
sdUserIp = lens _sdUserIp (\ s a -> s{_sdUserIp = a})

-- | Id of the Customer
sdCustomerId :: Lens' SubscriptionsDelete' Text
sdCustomerId
  = lens _sdCustomerId (\ s a -> s{_sdCustomerId = a})

-- | Whether the subscription is to be fully cancelled or downgraded
sdDeletionType :: Lens' SubscriptionsDelete' SubscriptionsDelete'DeletionType
sdDeletionType
  = lens _sdDeletionType
      (\ s a -> s{_sdDeletionType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' SubscriptionsDelete' (Maybe Text)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | OAuth 2.0 token for the current user.
sdOauthToken :: Lens' SubscriptionsDelete' (Maybe Text)
sdOauthToken
  = lens _sdOauthToken (\ s a -> s{_sdOauthToken = a})

-- | Id of the subscription, which is unique for a customer
sdSubscriptionId :: Lens' SubscriptionsDelete' Text
sdSubscriptionId
  = lens _sdSubscriptionId
      (\ s a -> s{_sdSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' SubscriptionsDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

-- | Data format for the response.
sdAlt :: Lens' SubscriptionsDelete' Alt
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest SubscriptionsDelete' where
        type Rs SubscriptionsDelete' = ()
        request = requestWithRoute defReq appsResellerURL
        requestWithRoute r u SubscriptionsDelete'{..}
          = go _sdQuotaUser (Just _sdPrettyPrint) _sdUserIp
              _sdCustomerId
              (Just _sdDeletionType)
              _sdKey
              _sdOauthToken
              _sdSubscriptionId
              _sdFields
              (Just _sdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsDeleteAPI)
                      r
                      u
