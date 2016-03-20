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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Defers a user\'s subscription purchase until a specified future
-- expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.purchases.subscriptions.defer@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer
    (
    -- * REST Resource
      PurchasesSubscriptionsDeferResource

    -- * Creating a Request
    , purchasesSubscriptionsDefer
    , PurchasesSubscriptionsDefer

    -- * Request Lenses
    , psdPackageName
    , psdToken
    , psdPayload
    , psdSubscriptionId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.defer@ method which the
-- 'PurchasesSubscriptionsDefer' request conforms to.
type PurchasesSubscriptionsDeferResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     CaptureMode "token" "defer" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SubscriptionPurchasesDeferRequest :>
                           Post '[JSON] SubscriptionPurchasesDeferResponse

-- | Defers a user\'s subscription purchase until a specified future
-- expiration time.
--
-- /See:/ 'purchasesSubscriptionsDefer' smart constructor.
data PurchasesSubscriptionsDefer = PurchasesSubscriptionsDefer
    { _psdPackageName    :: !Text
    , _psdToken          :: !Text
    , _psdPayload        :: !SubscriptionPurchasesDeferRequest
    , _psdSubscriptionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsDefer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdPackageName'
--
-- * 'psdToken'
--
-- * 'psdPayload'
--
-- * 'psdSubscriptionId'
purchasesSubscriptionsDefer
    :: Text -- ^ 'psdPackageName'
    -> Text -- ^ 'psdToken'
    -> SubscriptionPurchasesDeferRequest -- ^ 'psdPayload'
    -> Text -- ^ 'psdSubscriptionId'
    -> PurchasesSubscriptionsDefer
purchasesSubscriptionsDefer pPsdPackageName_ pPsdToken_ pPsdPayload_ pPsdSubscriptionId_ =
    PurchasesSubscriptionsDefer
    { _psdPackageName = pPsdPackageName_
    , _psdToken = pPsdToken_
    , _psdPayload = pPsdPayload_
    , _psdSubscriptionId = pPsdSubscriptionId_
    }

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psdPackageName :: Lens' PurchasesSubscriptionsDefer Text
psdPackageName
  = lens _psdPackageName
      (\ s a -> s{_psdPackageName = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psdToken :: Lens' PurchasesSubscriptionsDefer Text
psdToken = lens _psdToken (\ s a -> s{_psdToken = a})

-- | Multipart request metadata.
psdPayload :: Lens' PurchasesSubscriptionsDefer SubscriptionPurchasesDeferRequest
psdPayload
  = lens _psdPayload (\ s a -> s{_psdPayload = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psdSubscriptionId :: Lens' PurchasesSubscriptionsDefer Text
psdSubscriptionId
  = lens _psdSubscriptionId
      (\ s a -> s{_psdSubscriptionId = a})

instance GoogleRequest PurchasesSubscriptionsDefer
         where
        type Rs PurchasesSubscriptionsDefer =
             SubscriptionPurchasesDeferResponse
        requestClient PurchasesSubscriptionsDefer{..}
          = go _psdPackageName _psdSubscriptionId _psdToken
              (Just AltJSON)
              _psdPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsDeferResource)
                      mempty
