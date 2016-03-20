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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , purchasesSubscriptionsRefund
    , PurchasesSubscriptionsRefund

    -- * Request Lenses
    , psrPackageName
    , psrToken
    , psrSubscriptionId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.refund@ method which the
-- 'PurchasesSubscriptionsRefund' request conforms to.
type PurchasesSubscriptionsRefundResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
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
-- /See:/ 'purchasesSubscriptionsRefund' smart constructor.
data PurchasesSubscriptionsRefund = PurchasesSubscriptionsRefund
    { _psrPackageName    :: !Text
    , _psrToken          :: !Text
    , _psrSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrPackageName'
--
-- * 'psrToken'
--
-- * 'psrSubscriptionId'
purchasesSubscriptionsRefund
    :: Text -- ^ 'psrPackageName'
    -> Text -- ^ 'psrToken'
    -> Text -- ^ 'psrSubscriptionId'
    -> PurchasesSubscriptionsRefund
purchasesSubscriptionsRefund pPsrPackageName_ pPsrToken_ pPsrSubscriptionId_ =
    PurchasesSubscriptionsRefund
    { _psrPackageName = pPsrPackageName_
    , _psrToken = pPsrToken_
    , _psrSubscriptionId = pPsrSubscriptionId_
    }

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psrPackageName :: Lens' PurchasesSubscriptionsRefund Text
psrPackageName
  = lens _psrPackageName
      (\ s a -> s{_psrPackageName = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psrToken :: Lens' PurchasesSubscriptionsRefund Text
psrToken = lens _psrToken (\ s a -> s{_psrToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psrSubscriptionId :: Lens' PurchasesSubscriptionsRefund Text
psrSubscriptionId
  = lens _psrSubscriptionId
      (\ s a -> s{_psrSubscriptionId = a})

instance GoogleRequest PurchasesSubscriptionsRefund
         where
        type Rs PurchasesSubscriptionsRefund = ()
        requestClient PurchasesSubscriptionsRefund{..}
          = go _psrPackageName _psrSubscriptionId _psrToken
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsRefundResource)
                      mempty
