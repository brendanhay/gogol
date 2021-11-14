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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Association instance under a given Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.associations.create@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Create
    (
    -- * REST Resource
      CatalogsAssociationsCreateResource

    -- * Creating a Request
    , catalogsAssociationsCreate
    , CatalogsAssociationsCreate

    -- * Request Lenses
    , cacParent
    , cacXgafv
    , cacUploadProtocol
    , cacAccessToken
    , cacUploadType
    , cacPayload
    , cacCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.associations.create@ method which the
-- 'CatalogsAssociationsCreate' request conforms to.
type CatalogsAssociationsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "associations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
                         :>
                         Post '[JSON]
                           GoogleCloudPrivatecatalogproducerV1beta1Association

-- | Creates an Association instance under a given Catalog.
--
-- /See:/ 'catalogsAssociationsCreate' smart constructor.
data CatalogsAssociationsCreate =
  CatalogsAssociationsCreate'
    { _cacParent :: !Text
    , _cacXgafv :: !(Maybe Xgafv)
    , _cacUploadProtocol :: !(Maybe Text)
    , _cacAccessToken :: !(Maybe Text)
    , _cacUploadType :: !(Maybe Text)
    , _cacPayload :: !GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    , _cacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsAssociationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cacParent'
--
-- * 'cacXgafv'
--
-- * 'cacUploadProtocol'
--
-- * 'cacAccessToken'
--
-- * 'cacUploadType'
--
-- * 'cacPayload'
--
-- * 'cacCallback'
catalogsAssociationsCreate
    :: Text -- ^ 'cacParent'
    -> GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest -- ^ 'cacPayload'
    -> CatalogsAssociationsCreate
catalogsAssociationsCreate pCacParent_ pCacPayload_ =
  CatalogsAssociationsCreate'
    { _cacParent = pCacParent_
    , _cacXgafv = Nothing
    , _cacUploadProtocol = Nothing
    , _cacAccessToken = Nothing
    , _cacUploadType = Nothing
    , _cacPayload = pCacPayload_
    , _cacCallback = Nothing
    }


-- | The \`Catalog\` resource\'s name.
cacParent :: Lens' CatalogsAssociationsCreate Text
cacParent
  = lens _cacParent (\ s a -> s{_cacParent = a})

-- | V1 error format.
cacXgafv :: Lens' CatalogsAssociationsCreate (Maybe Xgafv)
cacXgafv = lens _cacXgafv (\ s a -> s{_cacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cacUploadProtocol :: Lens' CatalogsAssociationsCreate (Maybe Text)
cacUploadProtocol
  = lens _cacUploadProtocol
      (\ s a -> s{_cacUploadProtocol = a})

-- | OAuth access token.
cacAccessToken :: Lens' CatalogsAssociationsCreate (Maybe Text)
cacAccessToken
  = lens _cacAccessToken
      (\ s a -> s{_cacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cacUploadType :: Lens' CatalogsAssociationsCreate (Maybe Text)
cacUploadType
  = lens _cacUploadType
      (\ s a -> s{_cacUploadType = a})

-- | Multipart request metadata.
cacPayload :: Lens' CatalogsAssociationsCreate GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
cacPayload
  = lens _cacPayload (\ s a -> s{_cacPayload = a})

-- | JSONP
cacCallback :: Lens' CatalogsAssociationsCreate (Maybe Text)
cacCallback
  = lens _cacCallback (\ s a -> s{_cacCallback = a})

instance GoogleRequest CatalogsAssociationsCreate
         where
        type Rs CatalogsAssociationsCreate =
             GoogleCloudPrivatecatalogproducerV1beta1Association
        type Scopes CatalogsAssociationsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsAssociationsCreate'{..}
          = go _cacParent _cacXgafv _cacUploadProtocol
              _cacAccessToken
              _cacUploadType
              _cacCallback
              (Just AltJSON)
              _cacPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsAssociationsCreateResource)
                      mempty
