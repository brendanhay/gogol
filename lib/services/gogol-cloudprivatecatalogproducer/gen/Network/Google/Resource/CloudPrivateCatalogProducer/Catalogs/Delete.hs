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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Soft deletes an existing Catalog and all resources under it. The catalog
-- can only be deleted if there is no associations under it or
-- DeleteCatalogRequest.force is true. The delete operation can be
-- recovered by the PrivateCatalogProducer.UndeleteCatalog method.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.delete@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Delete
    (
    -- * REST Resource
      CatalogsDeleteResource

    -- * Creating a Request
    , catalogsDelete
    , CatalogsDelete

    -- * Request Lenses
    , cdXgafv
    , cdUploadProtocol
    , cdForce
    , cdAccessToken
    , cdUploadType
    , cdName
    , cdCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.delete@ method which the
-- 'CatalogsDelete' request conforms to.
type CatalogsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "force" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Delete '[JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1Catalog

-- | Soft deletes an existing Catalog and all resources under it. The catalog
-- can only be deleted if there is no associations under it or
-- DeleteCatalogRequest.force is true. The delete operation can be
-- recovered by the PrivateCatalogProducer.UndeleteCatalog method.
--
-- /See:/ 'catalogsDelete' smart constructor.
data CatalogsDelete =
  CatalogsDelete'
    { _cdXgafv :: !(Maybe Xgafv)
    , _cdUploadProtocol :: !(Maybe Text)
    , _cdForce :: !(Maybe Bool)
    , _cdAccessToken :: !(Maybe Text)
    , _cdUploadType :: !(Maybe Text)
    , _cdName :: !Text
    , _cdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdXgafv'
--
-- * 'cdUploadProtocol'
--
-- * 'cdForce'
--
-- * 'cdAccessToken'
--
-- * 'cdUploadType'
--
-- * 'cdName'
--
-- * 'cdCallback'
catalogsDelete
    :: Text -- ^ 'cdName'
    -> CatalogsDelete
catalogsDelete pCdName_ =
  CatalogsDelete'
    { _cdXgafv = Nothing
    , _cdUploadProtocol = Nothing
    , _cdForce = Nothing
    , _cdAccessToken = Nothing
    , _cdUploadType = Nothing
    , _cdName = pCdName_
    , _cdCallback = Nothing
    }


-- | V1 error format.
cdXgafv :: Lens' CatalogsDelete (Maybe Xgafv)
cdXgafv = lens _cdXgafv (\ s a -> s{_cdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdUploadProtocol :: Lens' CatalogsDelete (Maybe Text)
cdUploadProtocol
  = lens _cdUploadProtocol
      (\ s a -> s{_cdUploadProtocol = a})

-- | Forces deletion of the \`Catalog\` and its \`Association\` resources. If
-- the \`Catalog\` is still associated with other resources and force is
-- not set to true, then the operation fails.
cdForce :: Lens' CatalogsDelete (Maybe Bool)
cdForce = lens _cdForce (\ s a -> s{_cdForce = a})

-- | OAuth access token.
cdAccessToken :: Lens' CatalogsDelete (Maybe Text)
cdAccessToken
  = lens _cdAccessToken
      (\ s a -> s{_cdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdUploadType :: Lens' CatalogsDelete (Maybe Text)
cdUploadType
  = lens _cdUploadType (\ s a -> s{_cdUploadType = a})

-- | The resource name of the catalog.
cdName :: Lens' CatalogsDelete Text
cdName = lens _cdName (\ s a -> s{_cdName = a})

-- | JSONP
cdCallback :: Lens' CatalogsDelete (Maybe Text)
cdCallback
  = lens _cdCallback (\ s a -> s{_cdCallback = a})

instance GoogleRequest CatalogsDelete where
        type Rs CatalogsDelete =
             GoogleCloudPrivatecatalogproducerV1beta1Catalog
        type Scopes CatalogsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsDelete'{..}
          = go _cdName _cdXgafv _cdUploadProtocol _cdForce
              _cdAccessToken
              _cdUploadType
              _cdCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient (Proxy :: Proxy CatalogsDeleteResource)
                      mempty
