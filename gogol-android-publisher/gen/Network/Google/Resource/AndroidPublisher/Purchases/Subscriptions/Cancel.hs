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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherPurchasesSubscriptionsCancel@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel
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
    , pscUserIP
    , pscToken
    , pscKey
    , pscOAuthToken
    , pscSubscriptionId
    , pscFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherPurchasesSubscriptionsCancel@ which the
-- 'PurchasesSubscriptionsCancel'' request conforms to.
type PurchasesSubscriptionsCancelResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               CaptureMode "token" "cancel" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
--
-- /See:/ 'purchasesSubscriptionsCancel'' smart constructor.
data PurchasesSubscriptionsCancel' = PurchasesSubscriptionsCancel'
    { _pscQuotaUser      :: !(Maybe Text)
    , _pscPrettyPrint    :: !Bool
    , _pscPackageName    :: !Text
    , _pscUserIP         :: !(Maybe Text)
    , _pscToken          :: !Text
    , _pscKey            :: !(Maybe AuthKey)
    , _pscOAuthToken     :: !(Maybe OAuthToken)
    , _pscSubscriptionId :: !Text
    , _pscFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pscUserIP'
--
-- * 'pscToken'
--
-- * 'pscKey'
--
-- * 'pscOAuthToken'
--
-- * 'pscSubscriptionId'
--
-- * 'pscFields'
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
    , _pscUserIP = Nothing
    , _pscToken = pPscToken_
    , _pscKey = Nothing
    , _pscOAuthToken = Nothing
    , _pscSubscriptionId = pPscSubscriptionId_
    , _pscFields = Nothing
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
pscUserIP :: Lens' PurchasesSubscriptionsCancel' (Maybe Text)
pscUserIP
  = lens _pscUserIP (\ s a -> s{_pscUserIP = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pscToken :: Lens' PurchasesSubscriptionsCancel' Text
pscToken = lens _pscToken (\ s a -> s{_pscToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pscKey :: Lens' PurchasesSubscriptionsCancel' (Maybe AuthKey)
pscKey = lens _pscKey (\ s a -> s{_pscKey = a})

-- | OAuth 2.0 token for the current user.
pscOAuthToken :: Lens' PurchasesSubscriptionsCancel' (Maybe OAuthToken)
pscOAuthToken
  = lens _pscOAuthToken
      (\ s a -> s{_pscOAuthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pscSubscriptionId :: Lens' PurchasesSubscriptionsCancel' Text
pscSubscriptionId
  = lens _pscSubscriptionId
      (\ s a -> s{_pscSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
pscFields :: Lens' PurchasesSubscriptionsCancel' (Maybe Text)
pscFields
  = lens _pscFields (\ s a -> s{_pscFields = a})

instance GoogleAuth PurchasesSubscriptionsCancel'
         where
        authKey = pscKey . _Just
        authToken = pscOAuthToken . _Just

instance GoogleRequest PurchasesSubscriptionsCancel'
         where
        type Rs PurchasesSubscriptionsCancel' = ()
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u
          PurchasesSubscriptionsCancel'{..}
          = go _pscPackageName _pscSubscriptionId _pscToken
              _pscQuotaUser
              (Just _pscPrettyPrint)
              _pscUserIP
              _pscFields
              _pscKey
              _pscOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsCancelResource)
                      r
                      u
