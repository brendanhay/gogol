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
-- Module      : Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherPurchasesSubscriptionsCancel@.
module Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Cancel
    (
    -- * REST Resource
      PurchasesSubscriptionsCancelResource

    -- * Creating a Request
    , purchasesSubscriptionsCancel'
    , PurchasesSubscriptionsCancel'

    -- * Request Lenses
    , pscQuotaUser
    , pscPrettyPrint
    , pscPackageName
    , pscUserIp
    , pscToken
    , pscKey
    , pscOauthToken
    , pscSubscriptionId
    , pscFields
    , pscAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherPurchasesSubscriptionsCancel@ which the
-- 'PurchasesSubscriptionsCancel'' request conforms to.
type PurchasesSubscriptionsCancelResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               "{token}:cancel" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] ()

-- | Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
--
-- /See:/ 'purchasesSubscriptionsCancel'' smart constructor.
data PurchasesSubscriptionsCancel' = PurchasesSubscriptionsCancel'
    { _pscQuotaUser      :: !(Maybe Text)
    , _pscPrettyPrint    :: !Bool
    , _pscPackageName    :: !Text
    , _pscUserIp         :: !(Maybe Text)
    , _pscToken          :: !Text
    , _pscKey            :: !(Maybe Text)
    , _pscOauthToken     :: !(Maybe Text)
    , _pscSubscriptionId :: !Text
    , _pscFields         :: !(Maybe Text)
    , _pscAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscQuotaUser'
--
-- * 'pscPrettyPrint'
--
-- * 'pscPackageName'
--
-- * 'pscUserIp'
--
-- * 'pscToken'
--
-- * 'pscKey'
--
-- * 'pscOauthToken'
--
-- * 'pscSubscriptionId'
--
-- * 'pscFields'
--
-- * 'pscAlt'
purchasesSubscriptionsCancel'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsCancel'
purchasesSubscriptionsCancel' pPscPackageName_ pPscToken_ pPscSubscriptionId_ =
    PurchasesSubscriptionsCancel'
    { _pscQuotaUser = Nothing
    , _pscPrettyPrint = True
    , _pscPackageName = pPscPackageName_
    , _pscUserIp = Nothing
    , _pscToken = pPscToken_
    , _pscKey = Nothing
    , _pscOauthToken = Nothing
    , _pscSubscriptionId = pPscSubscriptionId_
    , _pscFields = Nothing
    , _pscAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pscQuotaUser :: Lens' PurchasesSubscriptionsCancel' (Maybe Text)
pscQuotaUser
  = lens _pscQuotaUser (\ s a -> s{_pscQuotaUser = a})

-- | Returns response with indentations and line breaks.
pscPrettyPrint :: Lens' PurchasesSubscriptionsCancel' Bool
pscPrettyPrint
  = lens _pscPrettyPrint
      (\ s a -> s{_pscPrettyPrint = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
pscPackageName :: Lens' PurchasesSubscriptionsCancel' Text
pscPackageName
  = lens _pscPackageName
      (\ s a -> s{_pscPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pscUserIp :: Lens' PurchasesSubscriptionsCancel' (Maybe Text)
pscUserIp
  = lens _pscUserIp (\ s a -> s{_pscUserIp = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pscToken :: Lens' PurchasesSubscriptionsCancel' Text
pscToken = lens _pscToken (\ s a -> s{_pscToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pscKey :: Lens' PurchasesSubscriptionsCancel' (Maybe Text)
pscKey = lens _pscKey (\ s a -> s{_pscKey = a})

-- | OAuth 2.0 token for the current user.
pscOauthToken :: Lens' PurchasesSubscriptionsCancel' (Maybe Text)
pscOauthToken
  = lens _pscOauthToken
      (\ s a -> s{_pscOauthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pscSubscriptionId :: Lens' PurchasesSubscriptionsCancel' Text
pscSubscriptionId
  = lens _pscSubscriptionId
      (\ s a -> s{_pscSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
pscFields :: Lens' PurchasesSubscriptionsCancel' (Maybe Text)
pscFields
  = lens _pscFields (\ s a -> s{_pscFields = a})

-- | Data format for the response.
pscAlt :: Lens' PurchasesSubscriptionsCancel' Alt
pscAlt = lens _pscAlt (\ s a -> s{_pscAlt = a})

instance GoogleRequest PurchasesSubscriptionsCancel'
         where
        type Rs PurchasesSubscriptionsCancel' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u
          PurchasesSubscriptionsCancel'{..}
          = go _pscQuotaUser (Just _pscPrettyPrint)
              _pscPackageName
              _pscUserIp
              _pscToken
              _pscKey
              _pscOauthToken
              _pscSubscriptionId
              _pscFields
              (Just _pscAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsCancelResource)
                      r
                      u
