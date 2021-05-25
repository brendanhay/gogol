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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the requested Association resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.associations.get@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Get
    (
    -- * REST Resource
      CatalogsAssociationsGetResource

    -- * Creating a Request
    , catalogsAssociationsGet
    , CatalogsAssociationsGet

    -- * Request Lenses
    , cagXgafv
    , cagUploadProtocol
    , cagAccessToken
    , cagUploadType
    , cagName
    , cagCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.associations.get@ method which the
-- 'CatalogsAssociationsGet' request conforms to.
type CatalogsAssociationsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON]
                       GoogleCloudPrivatecatalogproducerV1beta1Association

-- | Returns the requested Association resource.
--
-- /See:/ 'catalogsAssociationsGet' smart constructor.
data CatalogsAssociationsGet =
  CatalogsAssociationsGet'
    { _cagXgafv :: !(Maybe Xgafv)
    , _cagUploadProtocol :: !(Maybe Text)
    , _cagAccessToken :: !(Maybe Text)
    , _cagUploadType :: !(Maybe Text)
    , _cagName :: !Text
    , _cagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsAssociationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cagXgafv'
--
-- * 'cagUploadProtocol'
--
-- * 'cagAccessToken'
--
-- * 'cagUploadType'
--
-- * 'cagName'
--
-- * 'cagCallback'
catalogsAssociationsGet
    :: Text -- ^ 'cagName'
    -> CatalogsAssociationsGet
catalogsAssociationsGet pCagName_ =
  CatalogsAssociationsGet'
    { _cagXgafv = Nothing
    , _cagUploadProtocol = Nothing
    , _cagAccessToken = Nothing
    , _cagUploadType = Nothing
    , _cagName = pCagName_
    , _cagCallback = Nothing
    }


-- | V1 error format.
cagXgafv :: Lens' CatalogsAssociationsGet (Maybe Xgafv)
cagXgafv = lens _cagXgafv (\ s a -> s{_cagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cagUploadProtocol :: Lens' CatalogsAssociationsGet (Maybe Text)
cagUploadProtocol
  = lens _cagUploadProtocol
      (\ s a -> s{_cagUploadProtocol = a})

-- | OAuth access token.
cagAccessToken :: Lens' CatalogsAssociationsGet (Maybe Text)
cagAccessToken
  = lens _cagAccessToken
      (\ s a -> s{_cagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cagUploadType :: Lens' CatalogsAssociationsGet (Maybe Text)
cagUploadType
  = lens _cagUploadType
      (\ s a -> s{_cagUploadType = a})

-- | The resource name of the \`Association\` to retrieve.
cagName :: Lens' CatalogsAssociationsGet Text
cagName = lens _cagName (\ s a -> s{_cagName = a})

-- | JSONP
cagCallback :: Lens' CatalogsAssociationsGet (Maybe Text)
cagCallback
  = lens _cagCallback (\ s a -> s{_cagCallback = a})

instance GoogleRequest CatalogsAssociationsGet where
        type Rs CatalogsAssociationsGet =
             GoogleCloudPrivatecatalogproducerV1beta1Association
        type Scopes CatalogsAssociationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsAssociationsGet'{..}
          = go _cagName _cagXgafv _cagUploadProtocol
              _cagAccessToken
              _cagUploadType
              _cagCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsAssociationsGetResource)
                      mempty
