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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.purchases.subscriptions.refund@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund
    (
    -- * REST Resource
      PurchasesSubscriptionsRefundResource

    -- * Creating a Request
    , purchasesSubscriptionsRefund'
    , PurchasesSubscriptionsRefund'

    -- * Request Lenses
    , pPackageName
    , pToken
    , pSubscriptionId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.refund@ method which the
-- 'PurchasesSubscriptionsRefund'' request conforms to.
type PurchasesSubscriptionsRefundResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               CaptureMode "token" "refund" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
--
-- /See:/ 'purchasesSubscriptionsRefund'' smart constructor.
data PurchasesSubscriptionsRefund' = PurchasesSubscriptionsRefund'
    { _pPackageName    :: !Text
    , _pToken          :: !Text
    , _pSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsRefund'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPackageName'
--
-- * 'pToken'
--
-- * 'pSubscriptionId'
purchasesSubscriptionsRefund'
    :: Text -- ^ 'pPackageName'
    -> Text -- ^ 'pToken'
    -> Text -- ^ 'pSubscriptionId'
    -> PurchasesSubscriptionsRefund'
purchasesSubscriptionsRefund' pPPackageName_ pPToken_ pPSubscriptionId_ =
    PurchasesSubscriptionsRefund'
    { _pPackageName = pPPackageName_
    , _pToken = pPToken_
    , _pSubscriptionId = pPSubscriptionId_
    }

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
pPackageName :: Lens' PurchasesSubscriptionsRefund' Text
pPackageName
  = lens _pPackageName (\ s a -> s{_pPackageName = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pToken :: Lens' PurchasesSubscriptionsRefund' Text
pToken = lens _pToken (\ s a -> s{_pToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pSubscriptionId :: Lens' PurchasesSubscriptionsRefund' Text
pSubscriptionId
  = lens _pSubscriptionId
      (\ s a -> s{_pSubscriptionId = a})

instance GoogleRequest PurchasesSubscriptionsRefund'
         where
        type Rs PurchasesSubscriptionsRefund' = ()
        requestClient PurchasesSubscriptionsRefund'{..}
          = go _pPackageName _pSubscriptionId _pToken
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsRefundResource)
                      mempty
