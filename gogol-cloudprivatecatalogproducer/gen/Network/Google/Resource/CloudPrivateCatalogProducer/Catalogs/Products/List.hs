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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Product resources that the producer has access to, within the
-- scope of the parent catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.list@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.List
    (
    -- * REST Resource
      CatalogsProductsListResource

    -- * Creating a Request
    , catalogsProductsList
    , CatalogsProductsList

    -- * Request Lenses
    , cplParent
    , cplXgafv
    , cplUploadProtocol
    , cplAccessToken
    , cplUploadType
    , cplFilter
    , cplPageToken
    , cplPageSize
    , cplCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.list@ method which the
-- 'CatalogsProductsList' request conforms to.
type CatalogsProductsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "products" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse

-- | Lists Product resources that the producer has access to, within the
-- scope of the parent catalog.
--
-- /See:/ 'catalogsProductsList' smart constructor.
data CatalogsProductsList =
  CatalogsProductsList'
    { _cplParent :: !Text
    , _cplXgafv :: !(Maybe Xgafv)
    , _cplUploadProtocol :: !(Maybe Text)
    , _cplAccessToken :: !(Maybe Text)
    , _cplUploadType :: !(Maybe Text)
    , _cplFilter :: !(Maybe Text)
    , _cplPageToken :: !(Maybe Text)
    , _cplPageSize :: !(Maybe (Textual Int32))
    , _cplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cplParent'
--
-- * 'cplXgafv'
--
-- * 'cplUploadProtocol'
--
-- * 'cplAccessToken'
--
-- * 'cplUploadType'
--
-- * 'cplFilter'
--
-- * 'cplPageToken'
--
-- * 'cplPageSize'
--
-- * 'cplCallback'
catalogsProductsList
    :: Text -- ^ 'cplParent'
    -> CatalogsProductsList
catalogsProductsList pCplParent_ =
  CatalogsProductsList'
    { _cplParent = pCplParent_
    , _cplXgafv = Nothing
    , _cplUploadProtocol = Nothing
    , _cplAccessToken = Nothing
    , _cplUploadType = Nothing
    , _cplFilter = Nothing
    , _cplPageToken = Nothing
    , _cplPageSize = Nothing
    , _cplCallback = Nothing
    }


-- | The resource name of the parent resource.
cplParent :: Lens' CatalogsProductsList Text
cplParent
  = lens _cplParent (\ s a -> s{_cplParent = a})

-- | V1 error format.
cplXgafv :: Lens' CatalogsProductsList (Maybe Xgafv)
cplXgafv = lens _cplXgafv (\ s a -> s{_cplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cplUploadProtocol :: Lens' CatalogsProductsList (Maybe Text)
cplUploadProtocol
  = lens _cplUploadProtocol
      (\ s a -> s{_cplUploadProtocol = a})

-- | OAuth access token.
cplAccessToken :: Lens' CatalogsProductsList (Maybe Text)
cplAccessToken
  = lens _cplAccessToken
      (\ s a -> s{_cplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cplUploadType :: Lens' CatalogsProductsList (Maybe Text)
cplUploadType
  = lens _cplUploadType
      (\ s a -> s{_cplUploadType = a})

-- | A filter expression used to restrict the returned results based upon
-- properties of the product.
cplFilter :: Lens' CatalogsProductsList (Maybe Text)
cplFilter
  = lens _cplFilter (\ s a -> s{_cplFilter = a})

-- | A pagination token returned from a previous call to ListProducts that
-- indicates where this listing should continue from. This field is
-- optional.
cplPageToken :: Lens' CatalogsProductsList (Maybe Text)
cplPageToken
  = lens _cplPageToken (\ s a -> s{_cplPageToken = a})

-- | The maximum number of products to return.
cplPageSize :: Lens' CatalogsProductsList (Maybe Int32)
cplPageSize
  = lens _cplPageSize (\ s a -> s{_cplPageSize = a}) .
      mapping _Coerce

-- | JSONP
cplCallback :: Lens' CatalogsProductsList (Maybe Text)
cplCallback
  = lens _cplCallback (\ s a -> s{_cplCallback = a})

instance GoogleRequest CatalogsProductsList where
        type Rs CatalogsProductsList =
             GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
        type Scopes CatalogsProductsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsList'{..}
          = go _cplParent _cplXgafv _cplUploadProtocol
              _cplAccessToken
              _cplUploadType
              _cplFilter
              _cplPageToken
              _cplPageSize
              _cplCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsListResource)
                      mempty
