{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Refund
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherPurchasesSubscriptionsRefund@.
module Androidpublisher.Purchases.Subscriptions.Refund
    (
    -- * REST Resource
      PurchasesSubscriptionsRefundAPI

    -- * Creating a Request
    , purchasesSubscriptionsRefund
    , PurchasesSubscriptionsRefund

    -- * Request Lenses
    , psrQuotaUser
    , psrPrettyPrint
    , psrPackageName
    , psrUserIp
    , psrToken
    , psrKey
    , psrOauthToken
    , psrSubscriptionId
    , psrFields
    , psrAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherPurchasesSubscriptionsRefund@ which the
-- 'PurchasesSubscriptionsRefund' request conforms to.
type PurchasesSubscriptionsRefundAPI =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :> "{token}:refund" :> Post '[JSON] ()

-- | Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
--
-- /See:/ 'purchasesSubscriptionsRefund' smart constructor.
data PurchasesSubscriptionsRefund = PurchasesSubscriptionsRefund
    { _psrQuotaUser      :: !(Maybe Text)
    , _psrPrettyPrint    :: !Bool
    , _psrPackageName    :: !Text
    , _psrUserIp         :: !(Maybe Text)
    , _psrToken          :: !Text
    , _psrKey            :: !(Maybe Text)
    , _psrOauthToken     :: !(Maybe Text)
    , _psrSubscriptionId :: !Text
    , _psrFields         :: !(Maybe Text)
    , _psrAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsRefund'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrQuotaUser'
--
-- * 'psrPrettyPrint'
--
-- * 'psrPackageName'
--
-- * 'psrUserIp'
--
-- * 'psrToken'
--
-- * 'psrKey'
--
-- * 'psrOauthToken'
--
-- * 'psrSubscriptionId'
--
-- * 'psrFields'
--
-- * 'psrAlt'
purchasesSubscriptionsRefund
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsRefund
purchasesSubscriptionsRefund pPsrPackageName_ pPsrToken_ pPsrSubscriptionId_ =
    PurchasesSubscriptionsRefund
    { _psrQuotaUser = Nothing
    , _psrPrettyPrint = True
    , _psrPackageName = pPsrPackageName_
    , _psrUserIp = Nothing
    , _psrToken = pPsrToken_
    , _psrKey = Nothing
    , _psrOauthToken = Nothing
    , _psrSubscriptionId = pPsrSubscriptionId_
    , _psrFields = Nothing
    , _psrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psrQuotaUser :: Lens' PurchasesSubscriptionsRefund' (Maybe Text)
psrQuotaUser
  = lens _psrQuotaUser (\ s a -> s{_psrQuotaUser = a})

-- | Returns response with indentations and line breaks.
psrPrettyPrint :: Lens' PurchasesSubscriptionsRefund' Bool
psrPrettyPrint
  = lens _psrPrettyPrint
      (\ s a -> s{_psrPrettyPrint = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psrPackageName :: Lens' PurchasesSubscriptionsRefund' Text
psrPackageName
  = lens _psrPackageName
      (\ s a -> s{_psrPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psrUserIp :: Lens' PurchasesSubscriptionsRefund' (Maybe Text)
psrUserIp
  = lens _psrUserIp (\ s a -> s{_psrUserIp = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psrToken :: Lens' PurchasesSubscriptionsRefund' Text
psrToken = lens _psrToken (\ s a -> s{_psrToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psrKey :: Lens' PurchasesSubscriptionsRefund' (Maybe Text)
psrKey = lens _psrKey (\ s a -> s{_psrKey = a})

-- | OAuth 2.0 token for the current user.
psrOauthToken :: Lens' PurchasesSubscriptionsRefund' (Maybe Text)
psrOauthToken
  = lens _psrOauthToken
      (\ s a -> s{_psrOauthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psrSubscriptionId :: Lens' PurchasesSubscriptionsRefund' Text
psrSubscriptionId
  = lens _psrSubscriptionId
      (\ s a -> s{_psrSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
psrFields :: Lens' PurchasesSubscriptionsRefund' (Maybe Text)
psrFields
  = lens _psrFields (\ s a -> s{_psrFields = a})

-- | Data format for the response.
psrAlt :: Lens' PurchasesSubscriptionsRefund' Text
psrAlt = lens _psrAlt (\ s a -> s{_psrAlt = a})

instance GoogleRequest PurchasesSubscriptionsRefund'
         where
        type Rs PurchasesSubscriptionsRefund' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u PurchasesSubscriptionsRefund{..}
          = go _psrQuotaUser _psrPrettyPrint _psrPackageName
              _psrUserIp
              _psrToken
              _psrKey
              _psrOauthToken
              _psrSubscriptionId
              _psrFields
              _psrAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsRefundAPI)
                      r
                      u
