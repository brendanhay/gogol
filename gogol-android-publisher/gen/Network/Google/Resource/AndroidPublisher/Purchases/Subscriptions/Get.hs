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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Checks whether a user\'s subscription purchase is valid and returns its
-- expiry time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherPurchasesSubscriptionsGet@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Get
    (
    -- * REST Resource
      PurchasesSubscriptionsGetResource

    -- * Creating a Request
    , purchasesSubscriptionsGet'
    , PurchasesSubscriptionsGet'

    -- * Request Lenses
    , psgQuotaUser
    , psgPrettyPrint
    , psgPackageName
    , psgUserIP
    , psgToken
    , psgKey
    , psgOAuthToken
    , psgSubscriptionId
    , psgFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherPurchasesSubscriptionsGet@ method which the
-- 'PurchasesSubscriptionsGet'' request conforms to.
type PurchasesSubscriptionsGetResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               Capture "token" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] SubscriptionPurchase

-- | Checks whether a user\'s subscription purchase is valid and returns its
-- expiry time.
--
-- /See:/ 'purchasesSubscriptionsGet'' smart constructor.
data PurchasesSubscriptionsGet' = PurchasesSubscriptionsGet'
    { _psgQuotaUser      :: !(Maybe Text)
    , _psgPrettyPrint    :: !Bool
    , _psgPackageName    :: !Text
    , _psgUserIP         :: !(Maybe Text)
    , _psgToken          :: !Text
    , _psgKey            :: !(Maybe AuthKey)
    , _psgOAuthToken     :: !(Maybe OAuthToken)
    , _psgSubscriptionId :: !Text
    , _psgFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgQuotaUser'
--
-- * 'psgPrettyPrint'
--
-- * 'psgPackageName'
--
-- * 'psgUserIP'
--
-- * 'psgToken'
--
-- * 'psgKey'
--
-- * 'psgOAuthToken'
--
-- * 'psgSubscriptionId'
--
-- * 'psgFields'
purchasesSubscriptionsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsGet'
purchasesSubscriptionsGet' pPsgPackageName_ pPsgToken_ pPsgSubscriptionId_ =
    PurchasesSubscriptionsGet'
    { _psgQuotaUser = Nothing
    , _psgPrettyPrint = True
    , _psgPackageName = pPsgPackageName_
    , _psgUserIP = Nothing
    , _psgToken = pPsgToken_
    , _psgKey = Nothing
    , _psgOAuthToken = Nothing
    , _psgSubscriptionId = pPsgSubscriptionId_
    , _psgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psgQuotaUser :: Lens' PurchasesSubscriptionsGet' (Maybe Text)
psgQuotaUser
  = lens _psgQuotaUser (\ s a -> s{_psgQuotaUser = a})

-- | Returns response with indentations and line breaks.
psgPrettyPrint :: Lens' PurchasesSubscriptionsGet' Bool
psgPrettyPrint
  = lens _psgPrettyPrint
      (\ s a -> s{_psgPrettyPrint = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psgPackageName :: Lens' PurchasesSubscriptionsGet' Text
psgPackageName
  = lens _psgPackageName
      (\ s a -> s{_psgPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psgUserIP :: Lens' PurchasesSubscriptionsGet' (Maybe Text)
psgUserIP
  = lens _psgUserIP (\ s a -> s{_psgUserIP = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psgToken :: Lens' PurchasesSubscriptionsGet' Text
psgToken = lens _psgToken (\ s a -> s{_psgToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psgKey :: Lens' PurchasesSubscriptionsGet' (Maybe AuthKey)
psgKey = lens _psgKey (\ s a -> s{_psgKey = a})

-- | OAuth 2.0 token for the current user.
psgOAuthToken :: Lens' PurchasesSubscriptionsGet' (Maybe OAuthToken)
psgOAuthToken
  = lens _psgOAuthToken
      (\ s a -> s{_psgOAuthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psgSubscriptionId :: Lens' PurchasesSubscriptionsGet' Text
psgSubscriptionId
  = lens _psgSubscriptionId
      (\ s a -> s{_psgSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
psgFields :: Lens' PurchasesSubscriptionsGet' (Maybe Text)
psgFields
  = lens _psgFields (\ s a -> s{_psgFields = a})

instance GoogleAuth PurchasesSubscriptionsGet' where
        _AuthKey = psgKey . _Just
        _AuthToken = psgOAuthToken . _Just

instance GoogleRequest PurchasesSubscriptionsGet'
         where
        type Rs PurchasesSubscriptionsGet' =
             SubscriptionPurchase
        request = requestWith androidPublisherRequest
        requestWith rq PurchasesSubscriptionsGet'{..}
          = go _psgPackageName _psgSubscriptionId _psgToken
              _psgQuotaUser
              (Just _psgPrettyPrint)
              _psgUserIP
              _psgFields
              _psgKey
              _psgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PurchasesSubscriptionsGetResource)
                      rq
