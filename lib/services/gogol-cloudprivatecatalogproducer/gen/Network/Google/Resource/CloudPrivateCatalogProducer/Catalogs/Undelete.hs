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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Undelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a deleted Catalog and all resources under it.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.undelete@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Undelete
    (
    -- * REST Resource
      CatalogsUndeleteResource

    -- * Creating a Request
    , catalogsUndelete
    , CatalogsUndelete

    -- * Request Lenses
    , cuXgafv
    , cuUploadProtocol
    , cuAccessToken
    , cuUploadType
    , cuPayload
    , cuName
    , cuCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.undelete@ method which the
-- 'CatalogsUndelete' request conforms to.
type CatalogsUndeleteResource =
     "v1beta1" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
                       :>
                       Post '[JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1Catalog

-- | Undeletes a deleted Catalog and all resources under it.
--
-- /See:/ 'catalogsUndelete' smart constructor.
data CatalogsUndelete =
  CatalogsUndelete'
    { _cuXgafv :: !(Maybe Xgafv)
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuAccessToken :: !(Maybe Text)
    , _cuUploadType :: !(Maybe Text)
    , _cuPayload :: !GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    , _cuName :: !Text
    , _cuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuXgafv'
--
-- * 'cuUploadProtocol'
--
-- * 'cuAccessToken'
--
-- * 'cuUploadType'
--
-- * 'cuPayload'
--
-- * 'cuName'
--
-- * 'cuCallback'
catalogsUndelete
    :: GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest -- ^ 'cuPayload'
    -> Text -- ^ 'cuName'
    -> CatalogsUndelete
catalogsUndelete pCuPayload_ pCuName_ =
  CatalogsUndelete'
    { _cuXgafv = Nothing
    , _cuUploadProtocol = Nothing
    , _cuAccessToken = Nothing
    , _cuUploadType = Nothing
    , _cuPayload = pCuPayload_
    , _cuName = pCuName_
    , _cuCallback = Nothing
    }


-- | V1 error format.
cuXgafv :: Lens' CatalogsUndelete (Maybe Xgafv)
cuXgafv = lens _cuXgafv (\ s a -> s{_cuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuUploadProtocol :: Lens' CatalogsUndelete (Maybe Text)
cuUploadProtocol
  = lens _cuUploadProtocol
      (\ s a -> s{_cuUploadProtocol = a})

-- | OAuth access token.
cuAccessToken :: Lens' CatalogsUndelete (Maybe Text)
cuAccessToken
  = lens _cuAccessToken
      (\ s a -> s{_cuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' CatalogsUndelete (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | Multipart request metadata.
cuPayload :: Lens' CatalogsUndelete GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | The resource name of the catalog.
cuName :: Lens' CatalogsUndelete Text
cuName = lens _cuName (\ s a -> s{_cuName = a})

-- | JSONP
cuCallback :: Lens' CatalogsUndelete (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleRequest CatalogsUndelete where
        type Rs CatalogsUndelete =
             GoogleCloudPrivatecatalogproducerV1beta1Catalog
        type Scopes CatalogsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsUndelete'{..}
          = go _cuName _cuXgafv _cuUploadProtocol
              _cuAccessToken
              _cuUploadType
              _cuCallback
              (Just AltJSON)
              _cuPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsUndeleteResource)
                      mempty
