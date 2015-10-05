{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherPurchasesSubscriptionsRevoke@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke
    (
    -- * REST Resource
      PurchasesSubscriptionsRevokeResource

    -- * Creating a Request
    , purchasesSubscriptionsRevoke'
    , PurchasesSubscriptionsRevoke'

    -- * Request Lenses
    , psrQuotaUser
    , psrPrettyPrint
    , psrPackageName
    , psrUserIP
    , psrToken
    , psrKey
    , psrOAuthToken
    , psrSubscriptionId
    , psrFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherPurchasesSubscriptionsRevoke@ which the
-- 'PurchasesSubscriptionsRevoke'' request conforms to.
type PurchasesSubscriptionsRevokeResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               CaptureMode "token" "revoke" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ 'purchasesSubscriptionsRevoke'' smart constructor.
data PurchasesSubscriptionsRevoke' = PurchasesSubscriptionsRevoke'
    { _psrQuotaUser      :: !(Maybe Text)
    , _psrPrettyPrint    :: !Bool
    , _psrPackageName    :: !Text
    , _psrUserIP         :: !(Maybe Text)
    , _psrToken          :: !Text
    , _psrKey            :: !(Maybe Key)
    , _psrOAuthToken     :: !(Maybe OAuthToken)
    , _psrSubscriptionId :: !Text
    , _psrFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsRevoke'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrQuotaUser'
--
-- * 'psrPrettyPrint'
--
-- * 'psrPackageName'
--
-- * 'psrUserIP'
--
-- * 'psrToken'
--
-- * 'psrKey'
--
-- * 'psrOAuthToken'
--
-- * 'psrSubscriptionId'
--
-- * 'psrFields'
purchasesSubscriptionsRevoke'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsRevoke'
purchasesSubscriptionsRevoke' pPsrPackageName_ pPsrToken_ pPsrSubscriptionId_ =
    PurchasesSubscriptionsRevoke'
    { _psrQuotaUser = Nothing
    , _psrPrettyPrint = True
    , _psrPackageName = pPsrPackageName_
    , _psrUserIP = Nothing
    , _psrToken = pPsrToken_
    , _psrKey = Nothing
    , _psrOAuthToken = Nothing
    , _psrSubscriptionId = pPsrSubscriptionId_
    , _psrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psrQuotaUser :: Lens' PurchasesSubscriptionsRevoke' (Maybe Text)
psrQuotaUser
  = lens _psrQuotaUser (\ s a -> s{_psrQuotaUser = a})

-- | Returns response with indentations and line breaks.
psrPrettyPrint :: Lens' PurchasesSubscriptionsRevoke' Bool
psrPrettyPrint
  = lens _psrPrettyPrint
      (\ s a -> s{_psrPrettyPrint = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psrPackageName :: Lens' PurchasesSubscriptionsRevoke' Text
psrPackageName
  = lens _psrPackageName
      (\ s a -> s{_psrPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psrUserIP :: Lens' PurchasesSubscriptionsRevoke' (Maybe Text)
psrUserIP
  = lens _psrUserIP (\ s a -> s{_psrUserIP = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psrToken :: Lens' PurchasesSubscriptionsRevoke' Text
psrToken = lens _psrToken (\ s a -> s{_psrToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psrKey :: Lens' PurchasesSubscriptionsRevoke' (Maybe Key)
psrKey = lens _psrKey (\ s a -> s{_psrKey = a})

-- | OAuth 2.0 token for the current user.
psrOAuthToken :: Lens' PurchasesSubscriptionsRevoke' (Maybe OAuthToken)
psrOAuthToken
  = lens _psrOAuthToken
      (\ s a -> s{_psrOAuthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psrSubscriptionId :: Lens' PurchasesSubscriptionsRevoke' Text
psrSubscriptionId
  = lens _psrSubscriptionId
      (\ s a -> s{_psrSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
psrFields :: Lens' PurchasesSubscriptionsRevoke' (Maybe Text)
psrFields
  = lens _psrFields (\ s a -> s{_psrFields = a})

instance GoogleAuth PurchasesSubscriptionsRevoke'
         where
        authKey = psrKey . _Just
        authToken = psrOAuthToken . _Just

instance GoogleRequest PurchasesSubscriptionsRevoke'
         where
        type Rs PurchasesSubscriptionsRevoke' = ()
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u
          PurchasesSubscriptionsRevoke'{..}
          = go _psrPackageName _psrSubscriptionId _psrToken
              _psrQuotaUser
              (Just _psrPrettyPrint)
              _psrUserIP
              _psrFields
              _psrKey
              _psrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsRevokeResource)
                      r
                      u
