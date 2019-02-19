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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether a user\'s subscription purchase is valid and returns its
-- expiry time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.purchases.subscriptions.get@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Get
    (
    -- * REST Resource
      PurchasesSubscriptionsGetResource

    -- * Creating a Request
    , purchasesSubscriptionsGet
    , PurchasesSubscriptionsGet

    -- * Request Lenses
    , psgPackageName
    , psgToken
    , psgSubscriptionId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.get@ method which the
-- 'PurchasesSubscriptionsGet' request conforms to.
type PurchasesSubscriptionsGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     Capture "token" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] SubscriptionPurchase

-- | Checks whether a user\'s subscription purchase is valid and returns its
-- expiry time.
--
-- /See:/ 'purchasesSubscriptionsGet' smart constructor.
data PurchasesSubscriptionsGet =
  PurchasesSubscriptionsGet'
    { _psgPackageName    :: !Text
    , _psgToken          :: !Text
    , _psgSubscriptionId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PurchasesSubscriptionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgPackageName'
--
-- * 'psgToken'
--
-- * 'psgSubscriptionId'
purchasesSubscriptionsGet
    :: Text -- ^ 'psgPackageName'
    -> Text -- ^ 'psgToken'
    -> Text -- ^ 'psgSubscriptionId'
    -> PurchasesSubscriptionsGet
purchasesSubscriptionsGet pPsgPackageName_ pPsgToken_ pPsgSubscriptionId_ =
  PurchasesSubscriptionsGet'
    { _psgPackageName = pPsgPackageName_
    , _psgToken = pPsgToken_
    , _psgSubscriptionId = pPsgSubscriptionId_
    }

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psgPackageName :: Lens' PurchasesSubscriptionsGet Text
psgPackageName
  = lens _psgPackageName
      (\ s a -> s{_psgPackageName = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psgToken :: Lens' PurchasesSubscriptionsGet Text
psgToken = lens _psgToken (\ s a -> s{_psgToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psgSubscriptionId :: Lens' PurchasesSubscriptionsGet Text
psgSubscriptionId
  = lens _psgSubscriptionId
      (\ s a -> s{_psgSubscriptionId = a})

instance GoogleRequest PurchasesSubscriptionsGet
         where
        type Rs PurchasesSubscriptionsGet =
             SubscriptionPurchase
        type Scopes PurchasesSubscriptionsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesSubscriptionsGet'{..}
          = go _psgPackageName _psgSubscriptionId _psgToken
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsGetResource)
                      mempty
