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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hard deletes a Product.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.delete@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Delete
    (
    -- * REST Resource
      CatalogsProductsDeleteResource

    -- * Creating a Request
    , catalogsProductsDelete
    , CatalogsProductsDelete

    -- * Request Lenses
    , cpdXgafv
    , cpdUploadProtocol
    , cpdAccessToken
    , cpdUploadType
    , cpdName
    , cpdCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.delete@ method which the
-- 'CatalogsProductsDelete' request conforms to.
type CatalogsProductsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Hard deletes a Product.
--
-- /See:/ 'catalogsProductsDelete' smart constructor.
data CatalogsProductsDelete =
  CatalogsProductsDelete'
    { _cpdXgafv :: !(Maybe Xgafv)
    , _cpdUploadProtocol :: !(Maybe Text)
    , _cpdAccessToken :: !(Maybe Text)
    , _cpdUploadType :: !(Maybe Text)
    , _cpdName :: !Text
    , _cpdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdXgafv'
--
-- * 'cpdUploadProtocol'
--
-- * 'cpdAccessToken'
--
-- * 'cpdUploadType'
--
-- * 'cpdName'
--
-- * 'cpdCallback'
catalogsProductsDelete
    :: Text -- ^ 'cpdName'
    -> CatalogsProductsDelete
catalogsProductsDelete pCpdName_ =
  CatalogsProductsDelete'
    { _cpdXgafv = Nothing
    , _cpdUploadProtocol = Nothing
    , _cpdAccessToken = Nothing
    , _cpdUploadType = Nothing
    , _cpdName = pCpdName_
    , _cpdCallback = Nothing
    }


-- | V1 error format.
cpdXgafv :: Lens' CatalogsProductsDelete (Maybe Xgafv)
cpdXgafv = lens _cpdXgafv (\ s a -> s{_cpdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpdUploadProtocol :: Lens' CatalogsProductsDelete (Maybe Text)
cpdUploadProtocol
  = lens _cpdUploadProtocol
      (\ s a -> s{_cpdUploadProtocol = a})

-- | OAuth access token.
cpdAccessToken :: Lens' CatalogsProductsDelete (Maybe Text)
cpdAccessToken
  = lens _cpdAccessToken
      (\ s a -> s{_cpdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpdUploadType :: Lens' CatalogsProductsDelete (Maybe Text)
cpdUploadType
  = lens _cpdUploadType
      (\ s a -> s{_cpdUploadType = a})

-- | The resource name of the product.
cpdName :: Lens' CatalogsProductsDelete Text
cpdName = lens _cpdName (\ s a -> s{_cpdName = a})

-- | JSONP
cpdCallback :: Lens' CatalogsProductsDelete (Maybe Text)
cpdCallback
  = lens _cpdCallback (\ s a -> s{_cpdCallback = a})

instance GoogleRequest CatalogsProductsDelete where
        type Rs CatalogsProductsDelete = GoogleProtobufEmpty
        type Scopes CatalogsProductsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsDelete'{..}
          = go _cpdName _cpdXgafv _cpdUploadProtocol
              _cpdAccessToken
              _cpdUploadType
              _cpdCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsDeleteResource)
                      mempty
