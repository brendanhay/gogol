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
-- Module      : Network.Google.Resource.ServiceManagement.Services.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.testIamPermissions@.
module Network.Google.Resource.ServiceManagement.Services.TestIAMPermissions
    (
    -- * REST Resource
      ServicesTestIAMPermissionsResource

    -- * Creating a Request
    , servicesTestIAMPermissions
    , ServicesTestIAMPermissions

    -- * Request Lenses
    , stipXgafv
    , stipUploadProtocol
    , stipPp
    , stipAccessToken
    , stipUploadType
    , stipPayload
    , stipBearerToken
    , stipResource
    , stipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.testIamPermissions@ method which the
-- 'ServicesTestIAMPermissions' request conforms to.
type ServicesTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestIAMPermissionsRequest :>
                           Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.
--
-- /See:/ 'servicesTestIAMPermissions' smart constructor.
data ServicesTestIAMPermissions = ServicesTestIAMPermissions'
    { _stipXgafv          :: !(Maybe Xgafv)
    , _stipUploadProtocol :: !(Maybe Text)
    , _stipPp             :: !Bool
    , _stipAccessToken    :: !(Maybe Text)
    , _stipUploadType     :: !(Maybe Text)
    , _stipPayload        :: !TestIAMPermissionsRequest
    , _stipBearerToken    :: !(Maybe Text)
    , _stipResource       :: !Text
    , _stipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stipXgafv'
--
-- * 'stipUploadProtocol'
--
-- * 'stipPp'
--
-- * 'stipAccessToken'
--
-- * 'stipUploadType'
--
-- * 'stipPayload'
--
-- * 'stipBearerToken'
--
-- * 'stipResource'
--
-- * 'stipCallback'
servicesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'stipPayload'
    -> Text -- ^ 'stipResource'
    -> ServicesTestIAMPermissions
servicesTestIAMPermissions pStipPayload_ pStipResource_ =
    ServicesTestIAMPermissions'
    { _stipXgafv = Nothing
    , _stipUploadProtocol = Nothing
    , _stipPp = True
    , _stipAccessToken = Nothing
    , _stipUploadType = Nothing
    , _stipPayload = pStipPayload_
    , _stipBearerToken = Nothing
    , _stipResource = pStipResource_
    , _stipCallback = Nothing
    }

-- | V1 error format.
stipXgafv :: Lens' ServicesTestIAMPermissions (Maybe Xgafv)
stipXgafv
  = lens _stipXgafv (\ s a -> s{_stipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
stipUploadProtocol :: Lens' ServicesTestIAMPermissions (Maybe Text)
stipUploadProtocol
  = lens _stipUploadProtocol
      (\ s a -> s{_stipUploadProtocol = a})

-- | Pretty-print response.
stipPp :: Lens' ServicesTestIAMPermissions Bool
stipPp = lens _stipPp (\ s a -> s{_stipPp = a})

-- | OAuth access token.
stipAccessToken :: Lens' ServicesTestIAMPermissions (Maybe Text)
stipAccessToken
  = lens _stipAccessToken
      (\ s a -> s{_stipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
stipUploadType :: Lens' ServicesTestIAMPermissions (Maybe Text)
stipUploadType
  = lens _stipUploadType
      (\ s a -> s{_stipUploadType = a})

-- | Multipart request metadata.
stipPayload :: Lens' ServicesTestIAMPermissions TestIAMPermissionsRequest
stipPayload
  = lens _stipPayload (\ s a -> s{_stipPayload = a})

-- | OAuth bearer token.
stipBearerToken :: Lens' ServicesTestIAMPermissions (Maybe Text)
stipBearerToken
  = lens _stipBearerToken
      (\ s a -> s{_stipBearerToken = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- \`resource\` is usually specified as a path. For example, a Project
-- resource is specified as \`projects\/{project}\`.
stipResource :: Lens' ServicesTestIAMPermissions Text
stipResource
  = lens _stipResource (\ s a -> s{_stipResource = a})

-- | JSONP
stipCallback :: Lens' ServicesTestIAMPermissions (Maybe Text)
stipCallback
  = lens _stipCallback (\ s a -> s{_stipCallback = a})

instance GoogleRequest ServicesTestIAMPermissions
         where
        type Rs ServicesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ServicesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesTestIAMPermissions'{..}
          = go _stipResource _stipXgafv _stipUploadProtocol
              (Just _stipPp)
              _stipAccessToken
              _stipUploadType
              _stipBearerToken
              _stipCallback
              (Just AltJSON)
              _stipPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesTestIAMPermissionsResource)
                      mempty
