{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Revoke
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherPurchasesSubscriptionsRevoke@.
module Androidpublisher.Purchases.Subscriptions.Revoke
    (
    -- * REST Resource
      PurchasesSubscriptionsRevokeAPI

    -- * Creating a Request
    , purchasesSubscriptionsRevoke
    , PurchasesSubscriptionsRevoke

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pPackageName
    , pUserIp
    , pToken
    , pKey
    , pOauthToken
    , pSubscriptionId
    , pFields
    , pAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherPurchasesSubscriptionsRevoke@ which the
-- 'PurchasesSubscriptionsRevoke' request conforms to.
type PurchasesSubscriptionsRevokeAPI =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :> "{token}:revoke" :> Post '[JSON] ()

-- | Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ 'purchasesSubscriptionsRevoke' smart constructor.
data PurchasesSubscriptionsRevoke = PurchasesSubscriptionsRevoke
    { _pQuotaUser      :: !(Maybe Text)
    , _pPrettyPrint    :: !Bool
    , _pPackageName    :: !Text
    , _pUserIp         :: !(Maybe Text)
    , _pToken          :: !Text
    , _pKey            :: !(Maybe Text)
    , _pOauthToken     :: !(Maybe Text)
    , _pSubscriptionId :: !Text
    , _pFields         :: !(Maybe Text)
    , _pAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsRevoke'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pPackageName'
--
-- * 'pUserIp'
--
-- * 'pToken'
--
-- * 'pKey'
--
-- * 'pOauthToken'
--
-- * 'pSubscriptionId'
--
-- * 'pFields'
--
-- * 'pAlt'
purchasesSubscriptionsRevoke
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsRevoke
purchasesSubscriptionsRevoke pPPackageName_ pPToken_ pPSubscriptionId_ =
    PurchasesSubscriptionsRevoke
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pPackageName = pPPackageName_
    , _pUserIp = Nothing
    , _pToken = pPToken_
    , _pKey = Nothing
    , _pOauthToken = Nothing
    , _pSubscriptionId = pPSubscriptionId_
    , _pFields = Nothing
    , _pAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' PurchasesSubscriptionsRevoke' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' PurchasesSubscriptionsRevoke' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
pPackageName :: Lens' PurchasesSubscriptionsRevoke' Text
pPackageName
  = lens _pPackageName (\ s a -> s{_pPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIp :: Lens' PurchasesSubscriptionsRevoke' (Maybe Text)
pUserIp = lens _pUserIp (\ s a -> s{_pUserIp = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pToken :: Lens' PurchasesSubscriptionsRevoke' Text
pToken = lens _pToken (\ s a -> s{_pToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' PurchasesSubscriptionsRevoke' (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | OAuth 2.0 token for the current user.
pOauthToken :: Lens' PurchasesSubscriptionsRevoke' (Maybe Text)
pOauthToken
  = lens _pOauthToken (\ s a -> s{_pOauthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pSubscriptionId :: Lens' PurchasesSubscriptionsRevoke' Text
pSubscriptionId
  = lens _pSubscriptionId
      (\ s a -> s{_pSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' PurchasesSubscriptionsRevoke' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

-- | Data format for the response.
pAlt :: Lens' PurchasesSubscriptionsRevoke' Text
pAlt = lens _pAlt (\ s a -> s{_pAlt = a})

instance GoogleRequest PurchasesSubscriptionsRevoke'
         where
        type Rs PurchasesSubscriptionsRevoke' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u PurchasesSubscriptionsRevoke{..}
          = go _pQuotaUser _pPrettyPrint _pPackageName _pUserIp
              _pToken
              _pKey
              _pOauthToken
              _pSubscriptionId
              _pFields
              _pAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsRevokeAPI)
                      r
                      u
