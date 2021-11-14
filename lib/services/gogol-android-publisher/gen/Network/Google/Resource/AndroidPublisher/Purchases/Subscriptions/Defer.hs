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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Defers a user\'s subscription purchase until a specified future
-- expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.defer@.
module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer
    (
    -- * REST Resource
      PurchasesSubscriptionsDeferResource

    -- * Creating a Request
    , purchasesSubscriptionsDefer
    , PurchasesSubscriptionsDefer

    -- * Request Lenses
    , psdXgafv
    , psdUploadProtocol
    , psdPackageName
    , psdAccessToken
    , psdToken
    , psdUploadType
    , psdPayload
    , psdSubscriptionId
    , psdCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.subscriptions.defer@ method which the
-- 'PurchasesSubscriptionsDefer' request conforms to.
type PurchasesSubscriptionsDeferResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     CaptureMode "token" "defer" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON]
                                     SubscriptionPurchasesDeferRequest
                                     :>
                                     Post '[JSON]
                                       SubscriptionPurchasesDeferResponse

-- | Defers a user\'s subscription purchase until a specified future
-- expiration time.
--
-- /See:/ 'purchasesSubscriptionsDefer' smart constructor.
data PurchasesSubscriptionsDefer =
  PurchasesSubscriptionsDefer'
    { _psdXgafv :: !(Maybe Xgafv)
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdPackageName :: !Text
    , _psdAccessToken :: !(Maybe Text)
    , _psdToken :: !Text
    , _psdUploadType :: !(Maybe Text)
    , _psdPayload :: !SubscriptionPurchasesDeferRequest
    , _psdSubscriptionId :: !Text
    , _psdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PurchasesSubscriptionsDefer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdUploadProtocol'
--
-- * 'psdPackageName'
--
-- * 'psdAccessToken'
--
-- * 'psdToken'
--
-- * 'psdUploadType'
--
-- * 'psdPayload'
--
-- * 'psdSubscriptionId'
--
-- * 'psdCallback'
purchasesSubscriptionsDefer
    :: Text -- ^ 'psdPackageName'
    -> Text -- ^ 'psdToken'
    -> SubscriptionPurchasesDeferRequest -- ^ 'psdPayload'
    -> Text -- ^ 'psdSubscriptionId'
    -> PurchasesSubscriptionsDefer
purchasesSubscriptionsDefer pPsdPackageName_ pPsdToken_ pPsdPayload_ pPsdSubscriptionId_ =
  PurchasesSubscriptionsDefer'
    { _psdXgafv = Nothing
    , _psdUploadProtocol = Nothing
    , _psdPackageName = pPsdPackageName_
    , _psdAccessToken = Nothing
    , _psdToken = pPsdToken_
    , _psdUploadType = Nothing
    , _psdPayload = pPsdPayload_
    , _psdSubscriptionId = pPsdSubscriptionId_
    , _psdCallback = Nothing
    }


-- | V1 error format.
psdXgafv :: Lens' PurchasesSubscriptionsDefer (Maybe Xgafv)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' PurchasesSubscriptionsDefer (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psdPackageName :: Lens' PurchasesSubscriptionsDefer Text
psdPackageName
  = lens _psdPackageName
      (\ s a -> s{_psdPackageName = a})

-- | OAuth access token.
psdAccessToken :: Lens' PurchasesSubscriptionsDefer (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psdToken :: Lens' PurchasesSubscriptionsDefer Text
psdToken = lens _psdToken (\ s a -> s{_psdToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' PurchasesSubscriptionsDefer (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | Multipart request metadata.
psdPayload :: Lens' PurchasesSubscriptionsDefer SubscriptionPurchasesDeferRequest
psdPayload
  = lens _psdPayload (\ s a -> s{_psdPayload = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psdSubscriptionId :: Lens' PurchasesSubscriptionsDefer Text
psdSubscriptionId
  = lens _psdSubscriptionId
      (\ s a -> s{_psdSubscriptionId = a})

-- | JSONP
psdCallback :: Lens' PurchasesSubscriptionsDefer (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleRequest PurchasesSubscriptionsDefer
         where
        type Rs PurchasesSubscriptionsDefer =
             SubscriptionPurchasesDeferResponse
        type Scopes PurchasesSubscriptionsDefer =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesSubscriptionsDefer'{..}
          = go _psdPackageName _psdSubscriptionId _psdToken
              _psdXgafv
              _psdUploadProtocol
              _psdAccessToken
              _psdUploadType
              _psdCallback
              (Just AltJSON)
              _psdPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesSubscriptionsDeferResource)
                      mempty
