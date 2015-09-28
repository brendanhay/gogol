{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Purchases.Subscriptions.Defer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Defers a user\'s subscription purchase until a specified future
-- expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.purchases.subscriptions.defer@.
module Network.Google.API.Androidpublisher.Purchases.Subscriptions.Defer
    (
    -- * REST Resource
      PurchasesSubscriptionsDeferAPI

    -- * Creating a Request
    , purchasesSubscriptionsDefer'
    , PurchasesSubscriptionsDefer'

    -- * Request Lenses
    , psdQuotaUser
    , psdPrettyPrint
    , psdPackageName
    , psdUserIp
    , psdToken
    , psdKey
    , psdOauthToken
    , psdSubscriptionId
    , psdFields
    , psdAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.purchases.subscriptions.defer which the
-- 'PurchasesSubscriptionsDefer'' request conforms to.
type PurchasesSubscriptionsDeferAPI =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               "{token}:defer" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Post '[JSON] SubscriptionPurchasesDeferResponse

-- | Defers a user\'s subscription purchase until a specified future
-- expiration time.
--
-- /See:/ 'purchasesSubscriptionsDefer'' smart constructor.
data PurchasesSubscriptionsDefer' = PurchasesSubscriptionsDefer'
    { _psdQuotaUser      :: !(Maybe Text)
    , _psdPrettyPrint    :: !Bool
    , _psdPackageName    :: !Text
    , _psdUserIp         :: !(Maybe Text)
    , _psdToken          :: !Text
    , _psdKey            :: !(Maybe Text)
    , _psdOauthToken     :: !(Maybe Text)
    , _psdSubscriptionId :: !Text
    , _psdFields         :: !(Maybe Text)
    , _psdAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsDefer'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdQuotaUser'
--
-- * 'psdPrettyPrint'
--
-- * 'psdPackageName'
--
-- * 'psdUserIp'
--
-- * 'psdToken'
--
-- * 'psdKey'
--
-- * 'psdOauthToken'
--
-- * 'psdSubscriptionId'
--
-- * 'psdFields'
--
-- * 'psdAlt'
purchasesSubscriptionsDefer'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsDefer'
purchasesSubscriptionsDefer' pPsdPackageName_ pPsdToken_ pPsdSubscriptionId_ =
    PurchasesSubscriptionsDefer'
    { _psdQuotaUser = Nothing
    , _psdPrettyPrint = True
    , _psdPackageName = pPsdPackageName_
    , _psdUserIp = Nothing
    , _psdToken = pPsdToken_
    , _psdKey = Nothing
    , _psdOauthToken = Nothing
    , _psdSubscriptionId = pPsdSubscriptionId_
    , _psdFields = Nothing
    , _psdAlt = JSON
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

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psdPackageName :: Lens' PurchasesSubscriptionsDefer' Text
psdPackageName
  = lens _psdPackageName
      (\ s a -> s{_psdPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psdUserIp :: Lens' PurchasesSubscriptionsDefer' (Maybe Text)
psdUserIp
  = lens _psdUserIp (\ s a -> s{_psdUserIp = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psdToken :: Lens' PurchasesSubscriptionsDefer' Text
psdToken = lens _psdToken (\ s a -> s{_psdToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psdKey :: Lens' PurchasesSubscriptionsDefer' (Maybe Text)
psdKey = lens _psdKey (\ s a -> s{_psdKey = a})

-- | OAuth 2.0 token for the current user.
psdOauthToken :: Lens' PurchasesSubscriptionsDefer' (Maybe Text)
psdOauthToken
  = lens _psdOauthToken
      (\ s a -> s{_psdOauthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psdSubscriptionId :: Lens' PurchasesSubscriptionsDefer' Text
psdSubscriptionId
  = lens _psdSubscriptionId
      (\ s a -> s{_psdSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
psdFields :: Lens' PurchasesSubscriptionsDefer' (Maybe Text)
psdFields
  = lens _psdFields (\ s a -> s{_psdFields = a})

-- | Data format for the response.
psdAlt :: Lens' PurchasesSubscriptionsDefer' Alt
psdAlt = lens _psdAlt (\ s a -> s{_psdAlt = a})

instance GoogleRequest PurchasesSubscriptionsDefer'
         where
        type Rs PurchasesSubscriptionsDefer' =
             SubscriptionPurchasesDeferResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u PurchasesSubscriptionsDefer'{..}
          = go _psdQuotaUser (Just _psdPrettyPrint)
              _psdPackageName
              _psdUserIp
              _psdToken
              _psdKey
              _psdOauthToken
              _psdSubscriptionId
              _psdFields
              (Just _psdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsDeferAPI)
                      r
                      u
