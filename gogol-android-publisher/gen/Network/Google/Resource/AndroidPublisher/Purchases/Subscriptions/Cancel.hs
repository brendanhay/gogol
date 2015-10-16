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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherPurchasesSubscriptionsCancel@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel
    (
    -- * REST Resource
      PurchasesSubscriptionsCancelResource

    -- * Creating a Request
    , purchasesSubscriptionsCancel'
    , PurchasesSubscriptionsCancel'

    -- * Request Lenses
    , pscPackageName
    , pscToken
    , pscSubscriptionId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherPurchasesSubscriptionsCancel@ method which the
-- 'PurchasesSubscriptionsCancel'' request conforms to.
type PurchasesSubscriptionsCancelResource =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               CaptureMode "token" "cancel" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
--
-- /See:/ 'purchasesSubscriptionsCancel'' smart constructor.
data PurchasesSubscriptionsCancel' = PurchasesSubscriptionsCancel'
    { _pscPackageName    :: !Text
    , _pscToken          :: !Text
    , _pscSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscPackageName'
--
-- * 'pscToken'
--
-- * 'pscSubscriptionId'
purchasesSubscriptionsCancel'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsCancel'
purchasesSubscriptionsCancel' pPscPackageName_ pPscToken_ pPscSubscriptionId_ =
    PurchasesSubscriptionsCancel'
    { _pscPackageName = pPscPackageName_
    , _pscToken = pPscToken_
    , _pscSubscriptionId = pPscSubscriptionId_
    }

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
pscPackageName :: Lens' PurchasesSubscriptionsCancel' Text
pscPackageName
  = lens _pscPackageName
      (\ s a -> s{_pscPackageName = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
pscToken :: Lens' PurchasesSubscriptionsCancel' Text
pscToken = lens _pscToken (\ s a -> s{_pscToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
pscSubscriptionId :: Lens' PurchasesSubscriptionsCancel' Text
pscSubscriptionId
  = lens _pscSubscriptionId
      (\ s a -> s{_pscSubscriptionId = a})

instance GoogleRequest PurchasesSubscriptionsCancel'
         where
        type Rs PurchasesSubscriptionsCancel' = ()
        requestClient PurchasesSubscriptionsCancel'{..}
          = go _pscPackageName _pscSubscriptionId _pscToken
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsCancelResource)
                      mempty
