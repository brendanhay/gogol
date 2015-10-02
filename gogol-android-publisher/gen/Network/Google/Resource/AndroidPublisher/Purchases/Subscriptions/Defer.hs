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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Defers a user\'s subscription purchase until a specified future
-- expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherPurchasesSubscriptionsDefer@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer
    (
    -- * REST Resource
      PurchasesSubscriptionsDeferResource

    -- * Creating a Request
    , purchasesSubscriptionsDefer'
    , PurchasesSubscriptionsDefer'

    -- * Request Lenses
    , psdQuotaUser
    , psdPrettyPrint
    , psdSubscriptionPurchasesDeferRequest
    , psdPackageName
    , psdUserIP
    , psdToken
    , psdKey
    , psdOAuthToken
    , psdSubscriptionId
    , psdFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherPurchasesSubscriptionsDefer@ which the
-- 'PurchasesSubscriptionsDefer'' request conforms to.
type PurchasesSubscriptionsDeferResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               "{token}:defer" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] SubscriptionPurchasesDeferRequest
                                 :>
                                 Post '[JSON] SubscriptionPurchasesDeferResponse

-- | Defers a user\'s subscription purchase until a specified future
-- expiration time.
--
-- /See:/ 'purchasesSubscriptionsDefer'' smart constructor.
data PurchasesSubscriptionsDefer' = PurchasesSubscriptionsDefer'
    { _psdQuotaUser                         :: !(Maybe Text)
    , _psdPrettyPrint                       :: !Bool
    , _psdSubscriptionPurchasesDeferRequest :: !SubscriptionPurchasesDeferRequest
    , _psdPackageName                       :: !Text
    , _psdUserIP                            :: !(Maybe Text)
    , _psdToken                             :: !Text
    , _psdKey                               :: !(Maybe Key)
    , _psdOAuthToken                        :: !(Maybe OAuthToken)
    , _psdSubscriptionId                    :: !Text
    , _psdFields                            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsDefer'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdQuotaUser'
--
-- * 'psdPrettyPrint'
--
-- * 'psdSubscriptionPurchasesDeferRequest'
--
-- * 'psdPackageName'
--
-- * 'psdUserIP'
--
-- * 'psdToken'
--
-- * 'psdKey'
--
-- * 'psdOAuthToken'
--
-- * 'psdSubscriptionId'
--
-- * 'psdFields'
purchasesSubscriptionsDefer'
    :: SubscriptionPurchasesDeferRequest -- ^ 'SubscriptionPurchasesDeferRequest'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsDefer'
purchasesSubscriptionsDefer' pPsdSubscriptionPurchasesDeferRequest_ pPsdPackageName_ pPsdToken_ pPsdSubscriptionId_ =
    PurchasesSubscriptionsDefer'
    { _psdQuotaUser = Nothing
    , _psdPrettyPrint = True
    , _psdSubscriptionPurchasesDeferRequest = pPsdSubscriptionPurchasesDeferRequest_
    , _psdPackageName = pPsdPackageName_
    , _psdUserIP = Nothing
    , _psdToken = pPsdToken_
    , _psdKey = Nothing
    , _psdOAuthToken = Nothing
    , _psdSubscriptionId = pPsdSubscriptionId_
    , _psdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psdQuotaUser :: Lens' PurchasesSubscriptionsDefer' (Maybe Text)
psdQuotaUser
  = lens _psdQuotaUser (\ s a -> s{_psdQuotaUser = a})

-- | Returns response with indentations and line breaks.
psdPrettyPrint :: Lens' PurchasesSubscriptionsDefer' Bool
psdPrettyPrint
  = lens _psdPrettyPrint
      (\ s a -> s{_psdPrettyPrint = a})

-- | Multipart request metadata.
psdSubscriptionPurchasesDeferRequest :: Lens' PurchasesSubscriptionsDefer' SubscriptionPurchasesDeferRequest
psdSubscriptionPurchasesDeferRequest
  = lens _psdSubscriptionPurchasesDeferRequest
      (\ s a ->
         s{_psdSubscriptionPurchasesDeferRequest = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psdPackageName :: Lens' PurchasesSubscriptionsDefer' Text
psdPackageName
  = lens _psdPackageName
      (\ s a -> s{_psdPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psdUserIP :: Lens' PurchasesSubscriptionsDefer' (Maybe Text)
psdUserIP
  = lens _psdUserIP (\ s a -> s{_psdUserIP = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psdToken :: Lens' PurchasesSubscriptionsDefer' Text
psdToken = lens _psdToken (\ s a -> s{_psdToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psdKey :: Lens' PurchasesSubscriptionsDefer' (Maybe Key)
psdKey = lens _psdKey (\ s a -> s{_psdKey = a})

-- | OAuth 2.0 token for the current user.
psdOAuthToken :: Lens' PurchasesSubscriptionsDefer' (Maybe OAuthToken)
psdOAuthToken
  = lens _psdOAuthToken
      (\ s a -> s{_psdOAuthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psdSubscriptionId :: Lens' PurchasesSubscriptionsDefer' Text
psdSubscriptionId
  = lens _psdSubscriptionId
      (\ s a -> s{_psdSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
psdFields :: Lens' PurchasesSubscriptionsDefer' (Maybe Text)
psdFields
  = lens _psdFields (\ s a -> s{_psdFields = a})

instance GoogleAuth PurchasesSubscriptionsDefer'
         where
        authKey = psdKey . _Just
        authToken = psdOAuthToken . _Just

instance GoogleRequest PurchasesSubscriptionsDefer'
         where
        type Rs PurchasesSubscriptionsDefer' =
             SubscriptionPurchasesDeferResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u PurchasesSubscriptionsDefer'{..}
          = go _psdPackageName _psdSubscriptionId _psdToken
              _psdQuotaUser
              (Just _psdPrettyPrint)
              _psdUserIP
              _psdFields
              _psdKey
              _psdOAuthToken
              (Just AltJSON)
              _psdSubscriptionPurchasesDeferRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsDeferResource)
                      r
                      u
