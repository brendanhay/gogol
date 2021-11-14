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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the IAM permissions for the specified Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.testIamPermissions@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.TestIAMPermissions
    (
    -- * REST Resource
      CatalogsTestIAMPermissionsResource

    -- * Creating a Request
    , catalogsTestIAMPermissions
    , CatalogsTestIAMPermissions

    -- * Request Lenses
    , ctipXgafv
    , ctipUploadProtocol
    , ctipAccessToken
    , ctipUploadType
    , ctipPayload
    , ctipResource
    , ctipCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.testIamPermissions@ method which the
-- 'CatalogsTestIAMPermissions' request conforms to.
type CatalogsTestIAMPermissionsResource =
     "v1beta1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleIAMV1TestIAMPermissionsRequest
                       :> Post '[JSON] GoogleIAMV1TestIAMPermissionsResponse

-- | Tests the IAM permissions for the specified Catalog.
--
-- /See:/ 'catalogsTestIAMPermissions' smart constructor.
data CatalogsTestIAMPermissions =
  CatalogsTestIAMPermissions'
    { _ctipXgafv :: !(Maybe Xgafv)
    , _ctipUploadProtocol :: !(Maybe Text)
    , _ctipAccessToken :: !(Maybe Text)
    , _ctipUploadType :: !(Maybe Text)
    , _ctipPayload :: !GoogleIAMV1TestIAMPermissionsRequest
    , _ctipResource :: !Text
    , _ctipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctipXgafv'
--
-- * 'ctipUploadProtocol'
--
-- * 'ctipAccessToken'
--
-- * 'ctipUploadType'
--
-- * 'ctipPayload'
--
-- * 'ctipResource'
--
-- * 'ctipCallback'
catalogsTestIAMPermissions
    :: GoogleIAMV1TestIAMPermissionsRequest -- ^ 'ctipPayload'
    -> Text -- ^ 'ctipResource'
    -> CatalogsTestIAMPermissions
catalogsTestIAMPermissions pCtipPayload_ pCtipResource_ =
  CatalogsTestIAMPermissions'
    { _ctipXgafv = Nothing
    , _ctipUploadProtocol = Nothing
    , _ctipAccessToken = Nothing
    , _ctipUploadType = Nothing
    , _ctipPayload = pCtipPayload_
    , _ctipResource = pCtipResource_
    , _ctipCallback = Nothing
    }


-- | V1 error format.
ctipXgafv :: Lens' CatalogsTestIAMPermissions (Maybe Xgafv)
ctipXgafv
  = lens _ctipXgafv (\ s a -> s{_ctipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctipUploadProtocol :: Lens' CatalogsTestIAMPermissions (Maybe Text)
ctipUploadProtocol
  = lens _ctipUploadProtocol
      (\ s a -> s{_ctipUploadProtocol = a})

-- | OAuth access token.
ctipAccessToken :: Lens' CatalogsTestIAMPermissions (Maybe Text)
ctipAccessToken
  = lens _ctipAccessToken
      (\ s a -> s{_ctipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctipUploadType :: Lens' CatalogsTestIAMPermissions (Maybe Text)
ctipUploadType
  = lens _ctipUploadType
      (\ s a -> s{_ctipUploadType = a})

-- | Multipart request metadata.
ctipPayload :: Lens' CatalogsTestIAMPermissions GoogleIAMV1TestIAMPermissionsRequest
ctipPayload
  = lens _ctipPayload (\ s a -> s{_ctipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
ctipResource :: Lens' CatalogsTestIAMPermissions Text
ctipResource
  = lens _ctipResource (\ s a -> s{_ctipResource = a})

-- | JSONP
ctipCallback :: Lens' CatalogsTestIAMPermissions (Maybe Text)
ctipCallback
  = lens _ctipCallback (\ s a -> s{_ctipCallback = a})

instance GoogleRequest CatalogsTestIAMPermissions
         where
        type Rs CatalogsTestIAMPermissions =
             GoogleIAMV1TestIAMPermissionsResponse
        type Scopes CatalogsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsTestIAMPermissions'{..}
          = go _ctipResource _ctipXgafv _ctipUploadProtocol
              _ctipAccessToken
              _ctipUploadType
              _ctipCallback
              (Just AltJSON)
              _ctipPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsTestIAMPermissionsResource)
                      mempty
