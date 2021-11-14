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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Association resources under a catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.associations.list@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.List
    (
    -- * REST Resource
      CatalogsAssociationsListResource

    -- * Creating a Request
    , catalogsAssociationsList
    , CatalogsAssociationsList

    -- * Request Lenses
    , calParent
    , calXgafv
    , calUploadProtocol
    , calAccessToken
    , calUploadType
    , calPageToken
    , calPageSize
    , calCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.associations.list@ method which the
-- 'CatalogsAssociationsList' request conforms to.
type CatalogsAssociationsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "associations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse

-- | Lists all Association resources under a catalog.
--
-- /See:/ 'catalogsAssociationsList' smart constructor.
data CatalogsAssociationsList =
  CatalogsAssociationsList'
    { _calParent :: !Text
    , _calXgafv :: !(Maybe Xgafv)
    , _calUploadProtocol :: !(Maybe Text)
    , _calAccessToken :: !(Maybe Text)
    , _calUploadType :: !(Maybe Text)
    , _calPageToken :: !(Maybe Text)
    , _calPageSize :: !(Maybe (Textual Int32))
    , _calCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsAssociationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calParent'
--
-- * 'calXgafv'
--
-- * 'calUploadProtocol'
--
-- * 'calAccessToken'
--
-- * 'calUploadType'
--
-- * 'calPageToken'
--
-- * 'calPageSize'
--
-- * 'calCallback'
catalogsAssociationsList
    :: Text -- ^ 'calParent'
    -> CatalogsAssociationsList
catalogsAssociationsList pCalParent_ =
  CatalogsAssociationsList'
    { _calParent = pCalParent_
    , _calXgafv = Nothing
    , _calUploadProtocol = Nothing
    , _calAccessToken = Nothing
    , _calUploadType = Nothing
    , _calPageToken = Nothing
    , _calPageSize = Nothing
    , _calCallback = Nothing
    }


-- | The resource name of the \`Catalog\` whose \`Associations\` are being
-- retrieved. In the format \`catalogs\/\`.
calParent :: Lens' CatalogsAssociationsList Text
calParent
  = lens _calParent (\ s a -> s{_calParent = a})

-- | V1 error format.
calXgafv :: Lens' CatalogsAssociationsList (Maybe Xgafv)
calXgafv = lens _calXgafv (\ s a -> s{_calXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
calUploadProtocol :: Lens' CatalogsAssociationsList (Maybe Text)
calUploadProtocol
  = lens _calUploadProtocol
      (\ s a -> s{_calUploadProtocol = a})

-- | OAuth access token.
calAccessToken :: Lens' CatalogsAssociationsList (Maybe Text)
calAccessToken
  = lens _calAccessToken
      (\ s a -> s{_calAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
calUploadType :: Lens' CatalogsAssociationsList (Maybe Text)
calUploadType
  = lens _calUploadType
      (\ s a -> s{_calUploadType = a})

-- | A pagination token returned from the previous call to
-- \`ListAssociations\`.
calPageToken :: Lens' CatalogsAssociationsList (Maybe Text)
calPageToken
  = lens _calPageToken (\ s a -> s{_calPageToken = a})

-- | The maximum number of catalog associations to return.
calPageSize :: Lens' CatalogsAssociationsList (Maybe Int32)
calPageSize
  = lens _calPageSize (\ s a -> s{_calPageSize = a}) .
      mapping _Coerce

-- | JSONP
calCallback :: Lens' CatalogsAssociationsList (Maybe Text)
calCallback
  = lens _calCallback (\ s a -> s{_calCallback = a})

instance GoogleRequest CatalogsAssociationsList where
        type Rs CatalogsAssociationsList =
             GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
        type Scopes CatalogsAssociationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsAssociationsList'{..}
          = go _calParent _calXgafv _calUploadProtocol
              _calAccessToken
              _calUploadType
              _calPageToken
              _calPageSize
              _calCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsAssociationsListResource)
                      mempty
