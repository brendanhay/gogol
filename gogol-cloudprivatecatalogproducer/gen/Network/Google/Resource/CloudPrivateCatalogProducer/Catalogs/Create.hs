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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Catalog resource.
--
-- /See:/ <https://sites.google.com/corp/google.com/cloudprivatecatalog Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.create@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Create
    (
    -- * REST Resource
      CatalogsCreateResource

    -- * Creating a Request
    , catalogsCreate
    , CatalogsCreate

    -- * Request Lenses
    , ccXgafv
    , ccUploadProtocol
    , ccAccessToken
    , ccUploadType
    , ccPayload
    , ccCallback
    ) where

import           Network.Google.CloudPrivateCatalogProducer.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.create@ method which the
-- 'CatalogsCreate' request conforms to.
type CatalogsCreateResource =
     "v1beta1" :>
       "catalogs" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudPrivatecatalogproducerV1beta1Catalog
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Creates a new Catalog resource.
--
-- /See:/ 'catalogsCreate' smart constructor.
data CatalogsCreate =
  CatalogsCreate'
    { _ccXgafv          :: !(Maybe Xgafv)
    , _ccUploadProtocol :: !(Maybe Text)
    , _ccAccessToken    :: !(Maybe Text)
    , _ccUploadType     :: !(Maybe Text)
    , _ccPayload        :: !GoogleCloudPrivatecatalogproducerV1beta1Catalog
    , _ccCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccXgafv'
--
-- * 'ccUploadProtocol'
--
-- * 'ccAccessToken'
--
-- * 'ccUploadType'
--
-- * 'ccPayload'
--
-- * 'ccCallback'
catalogsCreate
    :: GoogleCloudPrivatecatalogproducerV1beta1Catalog -- ^ 'ccPayload'
    -> CatalogsCreate
catalogsCreate pCcPayload_ =
  CatalogsCreate'
    { _ccXgafv = Nothing
    , _ccUploadProtocol = Nothing
    , _ccAccessToken = Nothing
    , _ccUploadType = Nothing
    , _ccPayload = pCcPayload_
    , _ccCallback = Nothing
    }


-- | V1 error format.
ccXgafv :: Lens' CatalogsCreate (Maybe Xgafv)
ccXgafv = lens _ccXgafv (\ s a -> s{_ccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccUploadProtocol :: Lens' CatalogsCreate (Maybe Text)
ccUploadProtocol
  = lens _ccUploadProtocol
      (\ s a -> s{_ccUploadProtocol = a})

-- | OAuth access token.
ccAccessToken :: Lens' CatalogsCreate (Maybe Text)
ccAccessToken
  = lens _ccAccessToken
      (\ s a -> s{_ccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccUploadType :: Lens' CatalogsCreate (Maybe Text)
ccUploadType
  = lens _ccUploadType (\ s a -> s{_ccUploadType = a})

-- | Multipart request metadata.
ccPayload :: Lens' CatalogsCreate GoogleCloudPrivatecatalogproducerV1beta1Catalog
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | JSONP
ccCallback :: Lens' CatalogsCreate (Maybe Text)
ccCallback
  = lens _ccCallback (\ s a -> s{_ccCallback = a})

instance GoogleRequest CatalogsCreate where
        type Rs CatalogsCreate = GoogleLongrunningOperation
        type Scopes CatalogsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsCreate'{..}
          = go _ccXgafv _ccUploadProtocol _ccAccessToken
              _ccUploadType
              _ccCallback
              (Just AltJSON)
              _ccPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient (Proxy :: Proxy CatalogsCreateResource)
                      mempty
