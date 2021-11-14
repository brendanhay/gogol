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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.update@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Update
    (
    -- * REST Resource
      InAppProductsUpdateResource

    -- * Creating a Request
    , inAppProductsUpdate
    , InAppProductsUpdate

    -- * Request Lenses
    , iapuXgafv
    , iapuUploadProtocol
    , iapuAutoConvertMissingPrices
    , iapuPackageName
    , iapuAccessToken
    , iapuUploadType
    , iapuPayload
    , iapuSKU
    , iapuCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.update@ method which the
-- 'InAppProductsUpdate' request conforms to.
type InAppProductsUpdateResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "autoConvertMissingPrices" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] InAppProduct :>
                                 Put '[JSON] InAppProduct

-- | Updates an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ 'inAppProductsUpdate' smart constructor.
data InAppProductsUpdate =
  InAppProductsUpdate'
    { _iapuXgafv :: !(Maybe Xgafv)
    , _iapuUploadProtocol :: !(Maybe Text)
    , _iapuAutoConvertMissingPrices :: !(Maybe Bool)
    , _iapuPackageName :: !Text
    , _iapuAccessToken :: !(Maybe Text)
    , _iapuUploadType :: !(Maybe Text)
    , _iapuPayload :: !InAppProduct
    , _iapuSKU :: !Text
    , _iapuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapuXgafv'
--
-- * 'iapuUploadProtocol'
--
-- * 'iapuAutoConvertMissingPrices'
--
-- * 'iapuPackageName'
--
-- * 'iapuAccessToken'
--
-- * 'iapuUploadType'
--
-- * 'iapuPayload'
--
-- * 'iapuSKU'
--
-- * 'iapuCallback'
inAppProductsUpdate
    :: Text -- ^ 'iapuPackageName'
    -> InAppProduct -- ^ 'iapuPayload'
    -> Text -- ^ 'iapuSKU'
    -> InAppProductsUpdate
inAppProductsUpdate pIapuPackageName_ pIapuPayload_ pIapuSKU_ =
  InAppProductsUpdate'
    { _iapuXgafv = Nothing
    , _iapuUploadProtocol = Nothing
    , _iapuAutoConvertMissingPrices = Nothing
    , _iapuPackageName = pIapuPackageName_
    , _iapuAccessToken = Nothing
    , _iapuUploadType = Nothing
    , _iapuPayload = pIapuPayload_
    , _iapuSKU = pIapuSKU_
    , _iapuCallback = Nothing
    }


-- | V1 error format.
iapuXgafv :: Lens' InAppProductsUpdate (Maybe Xgafv)
iapuXgafv
  = lens _iapuXgafv (\ s a -> s{_iapuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iapuUploadProtocol :: Lens' InAppProductsUpdate (Maybe Text)
iapuUploadProtocol
  = lens _iapuUploadProtocol
      (\ s a -> s{_iapuUploadProtocol = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iapuAutoConvertMissingPrices :: Lens' InAppProductsUpdate (Maybe Bool)
iapuAutoConvertMissingPrices
  = lens _iapuAutoConvertMissingPrices
      (\ s a -> s{_iapuAutoConvertMissingPrices = a})

-- | Package name of the app.
iapuPackageName :: Lens' InAppProductsUpdate Text
iapuPackageName
  = lens _iapuPackageName
      (\ s a -> s{_iapuPackageName = a})

-- | OAuth access token.
iapuAccessToken :: Lens' InAppProductsUpdate (Maybe Text)
iapuAccessToken
  = lens _iapuAccessToken
      (\ s a -> s{_iapuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iapuUploadType :: Lens' InAppProductsUpdate (Maybe Text)
iapuUploadType
  = lens _iapuUploadType
      (\ s a -> s{_iapuUploadType = a})

-- | Multipart request metadata.
iapuPayload :: Lens' InAppProductsUpdate InAppProduct
iapuPayload
  = lens _iapuPayload (\ s a -> s{_iapuPayload = a})

-- | Unique identifier for the in-app product.
iapuSKU :: Lens' InAppProductsUpdate Text
iapuSKU = lens _iapuSKU (\ s a -> s{_iapuSKU = a})

-- | JSONP
iapuCallback :: Lens' InAppProductsUpdate (Maybe Text)
iapuCallback
  = lens _iapuCallback (\ s a -> s{_iapuCallback = a})

instance GoogleRequest InAppProductsUpdate where
        type Rs InAppProductsUpdate = InAppProduct
        type Scopes InAppProductsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsUpdate'{..}
          = go _iapuPackageName _iapuSKU _iapuXgafv
              _iapuUploadProtocol
              _iapuAutoConvertMissingPrices
              _iapuAccessToken
              _iapuUploadType
              _iapuCallback
              (Just AltJSON)
              _iapuPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsUpdateResource)
                      mempty
