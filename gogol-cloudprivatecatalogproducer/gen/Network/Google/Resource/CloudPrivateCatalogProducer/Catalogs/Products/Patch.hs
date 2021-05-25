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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific Product resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.patch@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Patch
    (
    -- * REST Resource
      CatalogsProductsPatchResource

    -- * Creating a Request
    , catalogsProductsPatch
    , CatalogsProductsPatch

    -- * Request Lenses
    , cppXgafv
    , cppUploadProtocol
    , cppUpdateMask
    , cppAccessToken
    , cppUploadType
    , cppPayload
    , cppName
    , cppCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.patch@ method which the
-- 'CatalogsProductsPatch' request conforms to.
type CatalogsProductsPatchResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1Product
                         :>
                         Patch '[JSON]
                           GoogleCloudPrivatecatalogproducerV1beta1Product

-- | Updates a specific Product resource.
--
-- /See:/ 'catalogsProductsPatch' smart constructor.
data CatalogsProductsPatch =
  CatalogsProductsPatch'
    { _cppXgafv :: !(Maybe Xgafv)
    , _cppUploadProtocol :: !(Maybe Text)
    , _cppUpdateMask :: !(Maybe GFieldMask)
    , _cppAccessToken :: !(Maybe Text)
    , _cppUploadType :: !(Maybe Text)
    , _cppPayload :: !GoogleCloudPrivatecatalogproducerV1beta1Product
    , _cppName :: !Text
    , _cppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cppXgafv'
--
-- * 'cppUploadProtocol'
--
-- * 'cppUpdateMask'
--
-- * 'cppAccessToken'
--
-- * 'cppUploadType'
--
-- * 'cppPayload'
--
-- * 'cppName'
--
-- * 'cppCallback'
catalogsProductsPatch
    :: GoogleCloudPrivatecatalogproducerV1beta1Product -- ^ 'cppPayload'
    -> Text -- ^ 'cppName'
    -> CatalogsProductsPatch
catalogsProductsPatch pCppPayload_ pCppName_ =
  CatalogsProductsPatch'
    { _cppXgafv = Nothing
    , _cppUploadProtocol = Nothing
    , _cppUpdateMask = Nothing
    , _cppAccessToken = Nothing
    , _cppUploadType = Nothing
    , _cppPayload = pCppPayload_
    , _cppName = pCppName_
    , _cppCallback = Nothing
    }


-- | V1 error format.
cppXgafv :: Lens' CatalogsProductsPatch (Maybe Xgafv)
cppXgafv = lens _cppXgafv (\ s a -> s{_cppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cppUploadProtocol :: Lens' CatalogsProductsPatch (Maybe Text)
cppUploadProtocol
  = lens _cppUploadProtocol
      (\ s a -> s{_cppUploadProtocol = a})

-- | Field mask that controls which fields of the product should be updated.
cppUpdateMask :: Lens' CatalogsProductsPatch (Maybe GFieldMask)
cppUpdateMask
  = lens _cppUpdateMask
      (\ s a -> s{_cppUpdateMask = a})

-- | OAuth access token.
cppAccessToken :: Lens' CatalogsProductsPatch (Maybe Text)
cppAccessToken
  = lens _cppAccessToken
      (\ s a -> s{_cppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cppUploadType :: Lens' CatalogsProductsPatch (Maybe Text)
cppUploadType
  = lens _cppUploadType
      (\ s a -> s{_cppUploadType = a})

-- | Multipart request metadata.
cppPayload :: Lens' CatalogsProductsPatch GoogleCloudPrivatecatalogproducerV1beta1Product
cppPayload
  = lens _cppPayload (\ s a -> s{_cppPayload = a})

-- | Required. The resource name of the product in the format
-- \`catalogs\/{catalog_id}\/products\/a-z*[a-z0-9]\'. A unique identifier
-- for the product under a catalog, which cannot be changed after the
-- product is created. The final segment of the name must between 1 and 256
-- characters in length.
cppName :: Lens' CatalogsProductsPatch Text
cppName = lens _cppName (\ s a -> s{_cppName = a})

-- | JSONP
cppCallback :: Lens' CatalogsProductsPatch (Maybe Text)
cppCallback
  = lens _cppCallback (\ s a -> s{_cppCallback = a})

instance GoogleRequest CatalogsProductsPatch where
        type Rs CatalogsProductsPatch =
             GoogleCloudPrivatecatalogproducerV1beta1Product
        type Scopes CatalogsProductsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsPatch'{..}
          = go _cppName _cppXgafv _cppUploadProtocol
              _cppUpdateMask
              _cppAccessToken
              _cppUploadType
              _cppCallback
              (Just AltJSON)
              _cppPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsPatchResource)
                      mempty
