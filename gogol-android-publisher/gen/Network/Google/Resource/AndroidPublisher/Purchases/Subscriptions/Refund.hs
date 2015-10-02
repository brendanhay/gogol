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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherPurchasesSubscriptionsRefund@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund
    (
    -- * REST Resource
      PurchasesSubscriptionsRefundResource

    -- * Creating a Request
    , purchasesSubscriptionsRefund'
    , PurchasesSubscriptionsRefund'

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pPackageName
    , pUserIP
    , pToken
    , pKey
    , pOAuthToken
    , pSubscriptionId
    , pFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherPurchasesSubscriptionsRefund@ which the
-- 'PurchasesSubscriptionsRefund'' request conforms to.
type PurchasesSubscriptionsRefundResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               "{token}:refund" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
--
-- /See:/ 'purchasesSubscriptionsRefund'' smart constructor.
data PurchasesSubscriptionsRefund' = PurchasesSubscriptionsRefund'
    { _pQuotaUser      :: !(Maybe Text)
    , _pPrettyPrint    :: !Bool
    , _pPackageName    :: !Text
    , _pUserIP         :: !(Maybe Text)
    , _pToken          :: !Text
    , _pKey            :: !(Maybe Key)
    , _pOAuthToken     :: !(Maybe OAuthToken)
    , _pSubscriptionId :: !Text
    , _pFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsRefund'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pPackageName'
--
-- * 'pUserIP'
--
-- * 'pToken'
--
-- * 'pKey'
--
-- * 'pOAuthToken'
--
-- * 'pSubscriptionId'
--
-- * 'pFields'
purchasesSubscriptionsRefund'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsRefund'
purchasesSubscriptionsRefund' pPPackageName_ pPToken_ pPSubscriptionId_ =
    PurchasesSubscriptionsRefund'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pPackageName = pPPackageName_
    , _pUserIP = Nothing
    , _pToken = pPToken_
    , _pKey = Nothing
    , _pOAuthToken = Nothing
    , _pSubscriptionId = pPSubscriptionId_
    , _pFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' PurchasesSubscriptionsRefund' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' PurchasesSubscriptionsRefund' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
pPackageName :: Lens' PurchasesSubscriptionsRefund' Text
pPackageName
  = lens _pPackageName (\ s a -> s{_pPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIP :: Lens' PurchasesSubscriptionsRefund' (Maybe Text)
pUserIP = lens _pUserIP (\ s a -> s{_pUserIP = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pToken :: Lens' PurchasesSubscriptionsRefund' Text
pToken = lens _pToken (\ s a -> s{_pToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' PurchasesSubscriptionsRefund' (Maybe Key)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | OAuth 2.0 token for the current user.
pOAuthToken :: Lens' PurchasesSubscriptionsRefund' (Maybe OAuthToken)
pOAuthToken
  = lens _pOAuthToken (\ s a -> s{_pOAuthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pSubscriptionId :: Lens' PurchasesSubscriptionsRefund' Text
pSubscriptionId
  = lens _pSubscriptionId
      (\ s a -> s{_pSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' PurchasesSubscriptionsRefund' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

instance GoogleAuth PurchasesSubscriptionsRefund'
         where
        authKey = pKey . _Just
        authToken = pOAuthToken . _Just

instance GoogleRequest PurchasesSubscriptionsRefund'
         where
        type Rs PurchasesSubscriptionsRefund' = ()
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u
          PurchasesSubscriptionsRefund'{..}
          = go _pPackageName _pSubscriptionId _pToken
              _pQuotaUser
              (Just _pPrettyPrint)
              _pUserIP
              _pFields
              _pKey
              _pOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsRefundResource)
                      r
                      u
