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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.testIamPermissions@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsKeyRingsTestIAMPermissions
    , ProjectsLocationsKeyRingsTestIAMPermissions

    -- * Request Lenses
    , plkrtipXgafv
    , plkrtipUploadProtocol
    , plkrtipAccessToken
    , plkrtipUploadType
    , plkrtipPayload
    , plkrtipResource
    , plkrtipCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.testIamPermissions@ method which the
-- 'ProjectsLocationsKeyRingsTestIAMPermissions' request conforms to.
type ProjectsLocationsKeyRingsTestIAMPermissionsResource
     =
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
-- /See:/ 'projectsLocationsKeyRingsTestIAMPermissions' smart constructor.
data ProjectsLocationsKeyRingsTestIAMPermissions = ProjectsLocationsKeyRingsTestIAMPermissions'
    { _plkrtipXgafv          :: !(Maybe Xgafv)
    , _plkrtipUploadProtocol :: !(Maybe Text)
    , _plkrtipAccessToken    :: !(Maybe Text)
    , _plkrtipUploadType     :: !(Maybe Text)
    , _plkrtipPayload        :: !TestIAMPermissionsRequest
    , _plkrtipResource       :: !Text
    , _plkrtipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrtipXgafv'
--
-- * 'plkrtipUploadProtocol'
--
-- * 'plkrtipAccessToken'
--
-- * 'plkrtipUploadType'
--
-- * 'plkrtipPayload'
--
-- * 'plkrtipResource'
--
-- * 'plkrtipCallback'
projectsLocationsKeyRingsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plkrtipPayload'
    -> Text -- ^ 'plkrtipResource'
    -> ProjectsLocationsKeyRingsTestIAMPermissions
projectsLocationsKeyRingsTestIAMPermissions pPlkrtipPayload_ pPlkrtipResource_ =
    ProjectsLocationsKeyRingsTestIAMPermissions'
    { _plkrtipXgafv = Nothing
    , _plkrtipUploadProtocol = Nothing
    , _plkrtipAccessToken = Nothing
    , _plkrtipUploadType = Nothing
    , _plkrtipPayload = pPlkrtipPayload_
    , _plkrtipResource = pPlkrtipResource_
    , _plkrtipCallback = Nothing
    }

-- | V1 error format.
plkrtipXgafv :: Lens' ProjectsLocationsKeyRingsTestIAMPermissions (Maybe Xgafv)
plkrtipXgafv
  = lens _plkrtipXgafv (\ s a -> s{_plkrtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrtipUploadProtocol :: Lens' ProjectsLocationsKeyRingsTestIAMPermissions (Maybe Text)
plkrtipUploadProtocol
  = lens _plkrtipUploadProtocol
      (\ s a -> s{_plkrtipUploadProtocol = a})

-- | OAuth access token.
plkrtipAccessToken :: Lens' ProjectsLocationsKeyRingsTestIAMPermissions (Maybe Text)
plkrtipAccessToken
  = lens _plkrtipAccessToken
      (\ s a -> s{_plkrtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrtipUploadType :: Lens' ProjectsLocationsKeyRingsTestIAMPermissions (Maybe Text)
plkrtipUploadType
  = lens _plkrtipUploadType
      (\ s a -> s{_plkrtipUploadType = a})

-- | Multipart request metadata.
plkrtipPayload :: Lens' ProjectsLocationsKeyRingsTestIAMPermissions TestIAMPermissionsRequest
plkrtipPayload
  = lens _plkrtipPayload
      (\ s a -> s{_plkrtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plkrtipResource :: Lens' ProjectsLocationsKeyRingsTestIAMPermissions Text
plkrtipResource
  = lens _plkrtipResource
      (\ s a -> s{_plkrtipResource = a})

-- | JSONP
plkrtipCallback :: Lens' ProjectsLocationsKeyRingsTestIAMPermissions (Maybe Text)
plkrtipCallback
  = lens _plkrtipCallback
      (\ s a -> s{_plkrtipCallback = a})

instance GoogleRequest
         ProjectsLocationsKeyRingsTestIAMPermissions where
        type Rs ProjectsLocationsKeyRingsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsKeyRingsTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsKeyRingsTestIAMPermissions'{..}
          = go _plkrtipResource _plkrtipXgafv
              _plkrtipUploadProtocol
              _plkrtipAccessToken
              _plkrtipUploadType
              _plkrtipCallback
              (Just AltJSON)
              _plkrtipPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsTestIAMPermissionsResource)
                      mempty
