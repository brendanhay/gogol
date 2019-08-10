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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Catalog resources that the producer has access to, within the
-- scope of the parent resource.
--
-- /See:/ <https://sites.google.com/corp/google.com/cloudprivatecatalog Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.list@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.List
    (
    -- * REST Resource
      CatalogsListResource

    -- * Creating a Request
    , catalogsList
    , CatalogsList

    -- * Request Lenses
    , clParent
    , clXgafv
    , clUploadProtocol
    , clAccessToken
    , clUploadType
    , clPageToken
    , clPageSize
    , clCallback
    ) where

import           Network.Google.CloudPrivateCatalogProducer.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.list@ method which the
-- 'CatalogsList' request conforms to.
type CatalogsListResource =
     "v1beta1" :>
       "catalogs" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse

-- | Lists Catalog resources that the producer has access to, within the
-- scope of the parent resource.
--
-- /See:/ 'catalogsList' smart constructor.
data CatalogsList =
  CatalogsList'
    { _clParent         :: !(Maybe Text)
    , _clXgafv          :: !(Maybe Xgafv)
    , _clUploadProtocol :: !(Maybe Text)
    , _clAccessToken    :: !(Maybe Text)
    , _clUploadType     :: !(Maybe Text)
    , _clPageToken      :: !(Maybe Text)
    , _clPageSize       :: !(Maybe (Textual Int32))
    , _clCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clParent'
--
-- * 'clXgafv'
--
-- * 'clUploadProtocol'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clPageToken'
--
-- * 'clPageSize'
--
-- * 'clCallback'
catalogsList
    :: CatalogsList
catalogsList =
  CatalogsList'
    { _clParent = Nothing
    , _clXgafv = Nothing
    , _clUploadProtocol = Nothing
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clPageToken = Nothing
    , _clPageSize = Nothing
    , _clCallback = Nothing
    }


-- | The resource name of the parent resource.
clParent :: Lens' CatalogsList (Maybe Text)
clParent = lens _clParent (\ s a -> s{_clParent = a})

-- | V1 error format.
clXgafv :: Lens' CatalogsList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CatalogsList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | OAuth access token.
clAccessToken :: Lens' CatalogsList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CatalogsList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | A pagination token returned from a previous call to ListCatalogs that
-- indicates where this listing should continue from. This field is
-- optional.
clPageToken :: Lens' CatalogsList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | The maximum number of catalogs to return.
clPageSize :: Lens' CatalogsList (Maybe Int32)
clPageSize
  = lens _clPageSize (\ s a -> s{_clPageSize = a}) .
      mapping _Coerce

-- | JSONP
clCallback :: Lens' CatalogsList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleRequest CatalogsList where
        type Rs CatalogsList =
             GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
        type Scopes CatalogsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsList'{..}
          = go _clParent _clXgafv _clUploadProtocol
              _clAccessToken
              _clUploadType
              _clPageToken
              _clPageSize
              _clCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient (Proxy :: Proxy CatalogsListResource)
                      mempty
