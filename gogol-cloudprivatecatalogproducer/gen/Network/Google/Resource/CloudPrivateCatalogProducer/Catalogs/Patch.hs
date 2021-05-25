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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific Catalog resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.patch@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Patch
    (
    -- * REST Resource
      CatalogsPatchResource

    -- * Creating a Request
    , catalogsPatch
    , CatalogsPatch

    -- * Request Lenses
    , cpXgafv
    , cpUploadProtocol
    , cpUpdateMask
    , cpAccessToken
    , cpUploadType
    , cpPayload
    , cpName
    , cpCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.patch@ method which the
-- 'CatalogsPatch' request conforms to.
type CatalogsPatchResource =
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
                         GoogleCloudPrivatecatalogproducerV1beta1Catalog
                         :>
                         Patch '[JSON]
                           GoogleCloudPrivatecatalogproducerV1beta1Catalog

-- | Updates a specific Catalog resource.
--
-- /See:/ 'catalogsPatch' smart constructor.
data CatalogsPatch =
  CatalogsPatch'
    { _cpXgafv :: !(Maybe Xgafv)
    , _cpUploadProtocol :: !(Maybe Text)
    , _cpUpdateMask :: !(Maybe GFieldMask)
    , _cpAccessToken :: !(Maybe Text)
    , _cpUploadType :: !(Maybe Text)
    , _cpPayload :: !GoogleCloudPrivatecatalogproducerV1beta1Catalog
    , _cpName :: !Text
    , _cpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpXgafv'
--
-- * 'cpUploadProtocol'
--
-- * 'cpUpdateMask'
--
-- * 'cpAccessToken'
--
-- * 'cpUploadType'
--
-- * 'cpPayload'
--
-- * 'cpName'
--
-- * 'cpCallback'
catalogsPatch
    :: GoogleCloudPrivatecatalogproducerV1beta1Catalog -- ^ 'cpPayload'
    -> Text -- ^ 'cpName'
    -> CatalogsPatch
catalogsPatch pCpPayload_ pCpName_ =
  CatalogsPatch'
    { _cpXgafv = Nothing
    , _cpUploadProtocol = Nothing
    , _cpUpdateMask = Nothing
    , _cpAccessToken = Nothing
    , _cpUploadType = Nothing
    , _cpPayload = pCpPayload_
    , _cpName = pCpName_
    , _cpCallback = Nothing
    }


-- | V1 error format.
cpXgafv :: Lens' CatalogsPatch (Maybe Xgafv)
cpXgafv = lens _cpXgafv (\ s a -> s{_cpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpUploadProtocol :: Lens' CatalogsPatch (Maybe Text)
cpUploadProtocol
  = lens _cpUploadProtocol
      (\ s a -> s{_cpUploadProtocol = a})

-- | Field mask that controls which fields of the catalog should be updated.
cpUpdateMask :: Lens' CatalogsPatch (Maybe GFieldMask)
cpUpdateMask
  = lens _cpUpdateMask (\ s a -> s{_cpUpdateMask = a})

-- | OAuth access token.
cpAccessToken :: Lens' CatalogsPatch (Maybe Text)
cpAccessToken
  = lens _cpAccessToken
      (\ s a -> s{_cpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpUploadType :: Lens' CatalogsPatch (Maybe Text)
cpUploadType
  = lens _cpUploadType (\ s a -> s{_cpUploadType = a})

-- | Multipart request metadata.
cpPayload :: Lens' CatalogsPatch GoogleCloudPrivatecatalogproducerV1beta1Catalog
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | Output only. The resource name of the catalog, in the format
-- \`catalogs\/{catalog_id}\'. A unique identifier for the catalog, which
-- is generated by catalog service.
cpName :: Lens' CatalogsPatch Text
cpName = lens _cpName (\ s a -> s{_cpName = a})

-- | JSONP
cpCallback :: Lens' CatalogsPatch (Maybe Text)
cpCallback
  = lens _cpCallback (\ s a -> s{_cpCallback = a})

instance GoogleRequest CatalogsPatch where
        type Rs CatalogsPatch =
             GoogleCloudPrivatecatalogproducerV1beta1Catalog
        type Scopes CatalogsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsPatch'{..}
          = go _cpName _cpXgafv _cpUploadProtocol _cpUpdateMask
              _cpAccessToken
              _cpUploadType
              _cpCallback
              (Just AltJSON)
              _cpPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient (Proxy :: Proxy CatalogsPatchResource)
                      mempty
