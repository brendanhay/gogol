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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Copy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a Product under another Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.copy@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Copy
    (
    -- * REST Resource
      CatalogsProductsCopyResource

    -- * Creating a Request
    , catalogsProductsCopy
    , CatalogsProductsCopy

    -- * Request Lenses
    , cXgafv
    , cUploadProtocol
    , cAccessToken
    , cUploadType
    , cPayload
    , cName
    , cCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.copy@ method which the
-- 'CatalogsProductsCopy' request conforms to.
type CatalogsProductsCopyResource =
     "v1beta1" :>
       CaptureMode "name" "copy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Copies a Product under another Catalog.
--
-- /See:/ 'catalogsProductsCopy' smart constructor.
data CatalogsProductsCopy =
  CatalogsProductsCopy'
    { _cXgafv :: !(Maybe Xgafv)
    , _cUploadProtocol :: !(Maybe Text)
    , _cAccessToken :: !(Maybe Text)
    , _cUploadType :: !(Maybe Text)
    , _cPayload :: !GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    , _cName :: !Text
    , _cCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cXgafv'
--
-- * 'cUploadProtocol'
--
-- * 'cAccessToken'
--
-- * 'cUploadType'
--
-- * 'cPayload'
--
-- * 'cName'
--
-- * 'cCallback'
catalogsProductsCopy
    :: GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest -- ^ 'cPayload'
    -> Text -- ^ 'cName'
    -> CatalogsProductsCopy
catalogsProductsCopy pCPayload_ pCName_ =
  CatalogsProductsCopy'
    { _cXgafv = Nothing
    , _cUploadProtocol = Nothing
    , _cAccessToken = Nothing
    , _cUploadType = Nothing
    , _cPayload = pCPayload_
    , _cName = pCName_
    , _cCallback = Nothing
    }


-- | V1 error format.
cXgafv :: Lens' CatalogsProductsCopy (Maybe Xgafv)
cXgafv = lens _cXgafv (\ s a -> s{_cXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cUploadProtocol :: Lens' CatalogsProductsCopy (Maybe Text)
cUploadProtocol
  = lens _cUploadProtocol
      (\ s a -> s{_cUploadProtocol = a})

-- | OAuth access token.
cAccessToken :: Lens' CatalogsProductsCopy (Maybe Text)
cAccessToken
  = lens _cAccessToken (\ s a -> s{_cAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cUploadType :: Lens' CatalogsProductsCopy (Maybe Text)
cUploadType
  = lens _cUploadType (\ s a -> s{_cUploadType = a})

-- | Multipart request metadata.
cPayload :: Lens' CatalogsProductsCopy GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

-- | The resource name of the current product that is copied from.
cName :: Lens' CatalogsProductsCopy Text
cName = lens _cName (\ s a -> s{_cName = a})

-- | JSONP
cCallback :: Lens' CatalogsProductsCopy (Maybe Text)
cCallback
  = lens _cCallback (\ s a -> s{_cCallback = a})

instance GoogleRequest CatalogsProductsCopy where
        type Rs CatalogsProductsCopy =
             GoogleLongrunningOperation
        type Scopes CatalogsProductsCopy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsCopy'{..}
          = go _cName _cXgafv _cUploadProtocol _cAccessToken
              _cUploadType
              _cCallback
              (Just AltJSON)
              _cPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsCopyResource)
                      mempty
