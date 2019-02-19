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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Consumers.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.consumers.testIamPermissions@.
module Network.Google.Resource.ServiceManagement.Services.Consumers.TestIAMPermissions
    (
    -- * REST Resource
      ServicesConsumersTestIAMPermissionsResource

    -- * Creating a Request
    , servicesConsumersTestIAMPermissions
    , ServicesConsumersTestIAMPermissions

    -- * Request Lenses
    , sctipXgafv
    , sctipUploadProtocol
    , sctipAccessToken
    , sctipUploadType
    , sctipPayload
    , sctipResource
    , sctipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.consumers.testIamPermissions@ method which the
-- 'ServicesConsumersTestIAMPermissions' request conforms to.
type ServicesConsumersTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'servicesConsumersTestIAMPermissions' smart constructor.
data ServicesConsumersTestIAMPermissions =
  ServicesConsumersTestIAMPermissions'
    { _sctipXgafv          :: !(Maybe Xgafv)
    , _sctipUploadProtocol :: !(Maybe Text)
    , _sctipAccessToken    :: !(Maybe Text)
    , _sctipUploadType     :: !(Maybe Text)
    , _sctipPayload        :: !TestIAMPermissionsRequest
    , _sctipResource       :: !Text
    , _sctipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServicesConsumersTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sctipXgafv'
--
-- * 'sctipUploadProtocol'
--
-- * 'sctipAccessToken'
--
-- * 'sctipUploadType'
--
-- * 'sctipPayload'
--
-- * 'sctipResource'
--
-- * 'sctipCallback'
servicesConsumersTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'sctipPayload'
    -> Text -- ^ 'sctipResource'
    -> ServicesConsumersTestIAMPermissions
servicesConsumersTestIAMPermissions pSctipPayload_ pSctipResource_ =
  ServicesConsumersTestIAMPermissions'
    { _sctipXgafv = Nothing
    , _sctipUploadProtocol = Nothing
    , _sctipAccessToken = Nothing
    , _sctipUploadType = Nothing
    , _sctipPayload = pSctipPayload_
    , _sctipResource = pSctipResource_
    , _sctipCallback = Nothing
    }

-- | V1 error format.
sctipXgafv :: Lens' ServicesConsumersTestIAMPermissions (Maybe Xgafv)
sctipXgafv
  = lens _sctipXgafv (\ s a -> s{_sctipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sctipUploadProtocol :: Lens' ServicesConsumersTestIAMPermissions (Maybe Text)
sctipUploadProtocol
  = lens _sctipUploadProtocol
      (\ s a -> s{_sctipUploadProtocol = a})

-- | OAuth access token.
sctipAccessToken :: Lens' ServicesConsumersTestIAMPermissions (Maybe Text)
sctipAccessToken
  = lens _sctipAccessToken
      (\ s a -> s{_sctipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sctipUploadType :: Lens' ServicesConsumersTestIAMPermissions (Maybe Text)
sctipUploadType
  = lens _sctipUploadType
      (\ s a -> s{_sctipUploadType = a})

-- | Multipart request metadata.
sctipPayload :: Lens' ServicesConsumersTestIAMPermissions TestIAMPermissionsRequest
sctipPayload
  = lens _sctipPayload (\ s a -> s{_sctipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
sctipResource :: Lens' ServicesConsumersTestIAMPermissions Text
sctipResource
  = lens _sctipResource
      (\ s a -> s{_sctipResource = a})

-- | JSONP
sctipCallback :: Lens' ServicesConsumersTestIAMPermissions (Maybe Text)
sctipCallback
  = lens _sctipCallback
      (\ s a -> s{_sctipCallback = a})

instance GoogleRequest
           ServicesConsumersTestIAMPermissions
         where
        type Rs ServicesConsumersTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ServicesConsumersTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient
          ServicesConsumersTestIAMPermissions'{..}
          = go _sctipResource _sctipXgafv _sctipUploadProtocol
              _sctipAccessToken
              _sctipUploadType
              _sctipCallback
              (Just AltJSON)
              _sctipPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesConsumersTestIAMPermissionsResource)
                      mempty
