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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Products.Acknowledge
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acknowledges a purchase of an inapp item.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.products.acknowledge@.
module Network.Google.Resource.AndroidPublisher.Purchases.Products.Acknowledge
    (
    -- * REST Resource
      PurchasesProductsAcknowledgeResource

    -- * Creating a Request
    , purchasesProductsAcknowledge
    , PurchasesProductsAcknowledge

    -- * Request Lenses
    , ppaXgafv
    , ppaUploadProtocol
    , ppaPackageName
    , ppaAccessToken
    , ppaToken
    , ppaUploadType
    , ppaPayload
    , ppaProductId
    , ppaCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.products.acknowledge@ method which the
-- 'PurchasesProductsAcknowledge' request conforms to.
type PurchasesProductsAcknowledgeResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "products" :>
                 Capture "productId" Text :>
                   "tokens" :>
                     CaptureMode "token" "acknowledge" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON]
                                     ProductPurchasesAcknowledgeRequest
                                     :> Post '[JSON] ()

-- | Acknowledges a purchase of an inapp item.
--
-- /See:/ 'purchasesProductsAcknowledge' smart constructor.
data PurchasesProductsAcknowledge =
  PurchasesProductsAcknowledge'
    { _ppaXgafv :: !(Maybe Xgafv)
    , _ppaUploadProtocol :: !(Maybe Text)
    , _ppaPackageName :: !Text
    , _ppaAccessToken :: !(Maybe Text)
    , _ppaToken :: !Text
    , _ppaUploadType :: !(Maybe Text)
    , _ppaPayload :: !ProductPurchasesAcknowledgeRequest
    , _ppaProductId :: !Text
    , _ppaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PurchasesProductsAcknowledge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppaXgafv'
--
-- * 'ppaUploadProtocol'
--
-- * 'ppaPackageName'
--
-- * 'ppaAccessToken'
--
-- * 'ppaToken'
--
-- * 'ppaUploadType'
--
-- * 'ppaPayload'
--
-- * 'ppaProductId'
--
-- * 'ppaCallback'
purchasesProductsAcknowledge
    :: Text -- ^ 'ppaPackageName'
    -> Text -- ^ 'ppaToken'
    -> ProductPurchasesAcknowledgeRequest -- ^ 'ppaPayload'
    -> Text -- ^ 'ppaProductId'
    -> PurchasesProductsAcknowledge
purchasesProductsAcknowledge pPpaPackageName_ pPpaToken_ pPpaPayload_ pPpaProductId_ =
  PurchasesProductsAcknowledge'
    { _ppaXgafv = Nothing
    , _ppaUploadProtocol = Nothing
    , _ppaPackageName = pPpaPackageName_
    , _ppaAccessToken = Nothing
    , _ppaToken = pPpaToken_
    , _ppaUploadType = Nothing
    , _ppaPayload = pPpaPayload_
    , _ppaProductId = pPpaProductId_
    , _ppaCallback = Nothing
    }


-- | V1 error format.
ppaXgafv :: Lens' PurchasesProductsAcknowledge (Maybe Xgafv)
ppaXgafv = lens _ppaXgafv (\ s a -> s{_ppaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppaUploadProtocol :: Lens' PurchasesProductsAcknowledge (Maybe Text)
ppaUploadProtocol
  = lens _ppaUploadProtocol
      (\ s a -> s{_ppaUploadProtocol = a})

-- | The package name of the application the inapp product was sold in (for
-- example, \'com.some.thing\').
ppaPackageName :: Lens' PurchasesProductsAcknowledge Text
ppaPackageName
  = lens _ppaPackageName
      (\ s a -> s{_ppaPackageName = a})

-- | OAuth access token.
ppaAccessToken :: Lens' PurchasesProductsAcknowledge (Maybe Text)
ppaAccessToken
  = lens _ppaAccessToken
      (\ s a -> s{_ppaAccessToken = a})

-- | The token provided to the user\'s device when the inapp product was
-- purchased.
ppaToken :: Lens' PurchasesProductsAcknowledge Text
ppaToken = lens _ppaToken (\ s a -> s{_ppaToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppaUploadType :: Lens' PurchasesProductsAcknowledge (Maybe Text)
ppaUploadType
  = lens _ppaUploadType
      (\ s a -> s{_ppaUploadType = a})

-- | Multipart request metadata.
ppaPayload :: Lens' PurchasesProductsAcknowledge ProductPurchasesAcknowledgeRequest
ppaPayload
  = lens _ppaPayload (\ s a -> s{_ppaPayload = a})

-- | The inapp product SKU (for example, \'com.some.thing.inapp1\').
ppaProductId :: Lens' PurchasesProductsAcknowledge Text
ppaProductId
  = lens _ppaProductId (\ s a -> s{_ppaProductId = a})

-- | JSONP
ppaCallback :: Lens' PurchasesProductsAcknowledge (Maybe Text)
ppaCallback
  = lens _ppaCallback (\ s a -> s{_ppaCallback = a})

instance GoogleRequest PurchasesProductsAcknowledge
         where
        type Rs PurchasesProductsAcknowledge = ()
        type Scopes PurchasesProductsAcknowledge =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesProductsAcknowledge'{..}
          = go _ppaPackageName _ppaProductId _ppaToken
              _ppaXgafv
              _ppaUploadProtocol
              _ppaAccessToken
              _ppaUploadType
              _ppaCallback
              (Just AltJSON)
              _ppaPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesProductsAcknowledgeResource)
                      mempty
