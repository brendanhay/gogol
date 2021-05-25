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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an in-app product, which can be a managed product or a
-- subscription.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.get@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Get
    (
    -- * REST Resource
      InAppProductsGetResource

    -- * Creating a Request
    , inAppProductsGet
    , InAppProductsGet

    -- * Request Lenses
    , iapgXgafv
    , iapgUploadProtocol
    , iapgPackageName
    , iapgAccessToken
    , iapgUploadType
    , iapgSKU
    , iapgCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.get@ method which the
-- 'InAppProductsGet' request conforms to.
type InAppProductsGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] InAppProduct

-- | Gets an in-app product, which can be a managed product or a
-- subscription.
--
-- /See:/ 'inAppProductsGet' smart constructor.
data InAppProductsGet =
  InAppProductsGet'
    { _iapgXgafv :: !(Maybe Xgafv)
    , _iapgUploadProtocol :: !(Maybe Text)
    , _iapgPackageName :: !Text
    , _iapgAccessToken :: !(Maybe Text)
    , _iapgUploadType :: !(Maybe Text)
    , _iapgSKU :: !Text
    , _iapgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapgXgafv'
--
-- * 'iapgUploadProtocol'
--
-- * 'iapgPackageName'
--
-- * 'iapgAccessToken'
--
-- * 'iapgUploadType'
--
-- * 'iapgSKU'
--
-- * 'iapgCallback'
inAppProductsGet
    :: Text -- ^ 'iapgPackageName'
    -> Text -- ^ 'iapgSKU'
    -> InAppProductsGet
inAppProductsGet pIapgPackageName_ pIapgSKU_ =
  InAppProductsGet'
    { _iapgXgafv = Nothing
    , _iapgUploadProtocol = Nothing
    , _iapgPackageName = pIapgPackageName_
    , _iapgAccessToken = Nothing
    , _iapgUploadType = Nothing
    , _iapgSKU = pIapgSKU_
    , _iapgCallback = Nothing
    }


-- | V1 error format.
iapgXgafv :: Lens' InAppProductsGet (Maybe Xgafv)
iapgXgafv
  = lens _iapgXgafv (\ s a -> s{_iapgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iapgUploadProtocol :: Lens' InAppProductsGet (Maybe Text)
iapgUploadProtocol
  = lens _iapgUploadProtocol
      (\ s a -> s{_iapgUploadProtocol = a})

-- | Package name of the app.
iapgPackageName :: Lens' InAppProductsGet Text
iapgPackageName
  = lens _iapgPackageName
      (\ s a -> s{_iapgPackageName = a})

-- | OAuth access token.
iapgAccessToken :: Lens' InAppProductsGet (Maybe Text)
iapgAccessToken
  = lens _iapgAccessToken
      (\ s a -> s{_iapgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iapgUploadType :: Lens' InAppProductsGet (Maybe Text)
iapgUploadType
  = lens _iapgUploadType
      (\ s a -> s{_iapgUploadType = a})

-- | Unique identifier for the in-app product.
iapgSKU :: Lens' InAppProductsGet Text
iapgSKU = lens _iapgSKU (\ s a -> s{_iapgSKU = a})

-- | JSONP
iapgCallback :: Lens' InAppProductsGet (Maybe Text)
iapgCallback
  = lens _iapgCallback (\ s a -> s{_iapgCallback = a})

instance GoogleRequest InAppProductsGet where
        type Rs InAppProductsGet = InAppProduct
        type Scopes InAppProductsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsGet'{..}
          = go _iapgPackageName _iapgSKU _iapgXgafv
              _iapgUploadProtocol
              _iapgAccessToken
              _iapgUploadType
              _iapgCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsGetResource)
                      mempty
