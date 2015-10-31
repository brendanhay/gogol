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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.purchases.subscriptions.revoke@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke
    (
    -- * REST Resource
      PurchasesSubscriptionsRevokeResource

    -- * Creating a Request
    , purchasesSubscriptionsRevoke
    , PurchasesSubscriptionsRevoke

    -- * Request Lenses
    , pPackageName
    , pToken
    , pSubscriptionId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.revoke@ method which the
-- 'PurchasesSubscriptionsRevoke' request conforms to.
type PurchasesSubscriptionsRevokeResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     CaptureMode "token" "revoke" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
--
-- /See:/ 'purchasesSubscriptionsRevoke' smart constructor.
data PurchasesSubscriptionsRevoke = PurchasesSubscriptionsRevoke
    { _pPackageName    :: !Text
    , _pToken          :: !Text
    , _pSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsRevoke' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPackageName'
--
-- * 'pToken'
--
-- * 'pSubscriptionId'
purchasesSubscriptionsRevoke
    :: Text -- ^ 'pPackageName'
    -> Text -- ^ 'pToken'
    -> Text -- ^ 'pSubscriptionId'
    -> PurchasesSubscriptionsRevoke
purchasesSubscriptionsRevoke pPPackageName_ pPToken_ pPSubscriptionId_ =
    PurchasesSubscriptionsRevoke
    { _pPackageName = pPPackageName_
    , _pToken = pPToken_
    , _pSubscriptionId = pPSubscriptionId_
    }

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
pPackageName :: Lens' PurchasesSubscriptionsRevoke Text
pPackageName
  = lens _pPackageName (\ s a -> s{_pPackageName = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pToken :: Lens' PurchasesSubscriptionsRevoke Text
pToken = lens _pToken (\ s a -> s{_pToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pSubscriptionId :: Lens' PurchasesSubscriptionsRevoke Text
pSubscriptionId
  = lens _pSubscriptionId
      (\ s a -> s{_pSubscriptionId = a})

instance GoogleRequest PurchasesSubscriptionsRevoke
         where
        type Rs PurchasesSubscriptionsRevoke = ()
        type Scopes PurchasesSubscriptionsRevoke =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesSubscriptionsRevoke{..}
          = go _pPackageName _pSubscriptionId _pToken
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsRevokeResource)
                      mempty
