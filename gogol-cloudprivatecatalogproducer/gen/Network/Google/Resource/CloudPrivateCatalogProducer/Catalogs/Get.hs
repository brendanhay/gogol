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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the requested Catalog resource.
--
-- /See:/ <https://sites.google.com/corp/google.com/cloudprivatecatalog Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.get@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Get
    (
    -- * REST Resource
      CatalogsGetResource

    -- * Creating a Request
    , catalogsGet
    , CatalogsGet

    -- * Request Lenses
    , cgXgafv
    , cgUploadProtocol
    , cgAccessToken
    , cgUploadType
    , cgName
    , cgCallback
    ) where

import           Network.Google.CloudPrivateCatalogProducer.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.get@ method which the
-- 'CatalogsGet' request conforms to.
type CatalogsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON]
                       GoogleCloudPrivatecatalogproducerV1beta1Catalog

-- | Returns the requested Catalog resource.
--
-- /See:/ 'catalogsGet' smart constructor.
data CatalogsGet =
  CatalogsGet'
    { _cgXgafv          :: !(Maybe Xgafv)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgAccessToken    :: !(Maybe Text)
    , _cgUploadType     :: !(Maybe Text)
    , _cgName           :: !Text
    , _cgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgUploadProtocol'
--
-- * 'cgAccessToken'
--
-- * 'cgUploadType'
--
-- * 'cgName'
--
-- * 'cgCallback'
catalogsGet
    :: Text -- ^ 'cgName'
    -> CatalogsGet
catalogsGet pCgName_ =
  CatalogsGet'
    { _cgXgafv = Nothing
    , _cgUploadProtocol = Nothing
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgName = pCgName_
    , _cgCallback = Nothing
    }


-- | V1 error format.
cgXgafv :: Lens' CatalogsGet (Maybe Xgafv)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CatalogsGet (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | OAuth access token.
cgAccessToken :: Lens' CatalogsGet (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CatalogsGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | The resource name of the catalog.
cgName :: Lens' CatalogsGet Text
cgName = lens _cgName (\ s a -> s{_cgName = a})

-- | JSONP
cgCallback :: Lens' CatalogsGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest CatalogsGet where
        type Rs CatalogsGet =
             GoogleCloudPrivatecatalogproducerV1beta1Catalog
        type Scopes CatalogsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsGet'{..}
          = go _cgName _cgXgafv _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient (Proxy :: Proxy CatalogsGetResource)
                      mempty
