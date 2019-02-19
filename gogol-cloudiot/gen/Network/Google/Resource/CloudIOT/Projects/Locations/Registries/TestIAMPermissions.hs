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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.testIamPermissions@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsRegistriesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsRegistriesTestIAMPermissions
    , ProjectsLocationsRegistriesTestIAMPermissions

    -- * Request Lenses
    , plrtipXgafv
    , plrtipUploadProtocol
    , plrtipAccessToken
    , plrtipUploadType
    , plrtipPayload
    , plrtipResource
    , plrtipCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.testIamPermissions@ method which the
-- 'ProjectsLocationsRegistriesTestIAMPermissions' request conforms to.
type ProjectsLocationsRegistriesTestIAMPermissionsResource
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
-- not a NOT_FOUND error.
--
-- /See:/ 'projectsLocationsRegistriesTestIAMPermissions' smart constructor.
data ProjectsLocationsRegistriesTestIAMPermissions =
  ProjectsLocationsRegistriesTestIAMPermissions'
    { _plrtipXgafv          :: !(Maybe Xgafv)
    , _plrtipUploadProtocol :: !(Maybe Text)
    , _plrtipAccessToken    :: !(Maybe Text)
    , _plrtipUploadType     :: !(Maybe Text)
    , _plrtipPayload        :: !TestIAMPermissionsRequest
    , _plrtipResource       :: !Text
    , _plrtipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrtipXgafv'
--
-- * 'plrtipUploadProtocol'
--
-- * 'plrtipAccessToken'
--
-- * 'plrtipUploadType'
--
-- * 'plrtipPayload'
--
-- * 'plrtipResource'
--
-- * 'plrtipCallback'
projectsLocationsRegistriesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plrtipPayload'
    -> Text -- ^ 'plrtipResource'
    -> ProjectsLocationsRegistriesTestIAMPermissions
projectsLocationsRegistriesTestIAMPermissions pPlrtipPayload_ pPlrtipResource_ =
  ProjectsLocationsRegistriesTestIAMPermissions'
    { _plrtipXgafv = Nothing
    , _plrtipUploadProtocol = Nothing
    , _plrtipAccessToken = Nothing
    , _plrtipUploadType = Nothing
    , _plrtipPayload = pPlrtipPayload_
    , _plrtipResource = pPlrtipResource_
    , _plrtipCallback = Nothing
    }


-- | V1 error format.
plrtipXgafv :: Lens' ProjectsLocationsRegistriesTestIAMPermissions (Maybe Xgafv)
plrtipXgafv
  = lens _plrtipXgafv (\ s a -> s{_plrtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrtipUploadProtocol :: Lens' ProjectsLocationsRegistriesTestIAMPermissions (Maybe Text)
plrtipUploadProtocol
  = lens _plrtipUploadProtocol
      (\ s a -> s{_plrtipUploadProtocol = a})

-- | OAuth access token.
plrtipAccessToken :: Lens' ProjectsLocationsRegistriesTestIAMPermissions (Maybe Text)
plrtipAccessToken
  = lens _plrtipAccessToken
      (\ s a -> s{_plrtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrtipUploadType :: Lens' ProjectsLocationsRegistriesTestIAMPermissions (Maybe Text)
plrtipUploadType
  = lens _plrtipUploadType
      (\ s a -> s{_plrtipUploadType = a})

-- | Multipart request metadata.
plrtipPayload :: Lens' ProjectsLocationsRegistriesTestIAMPermissions TestIAMPermissionsRequest
plrtipPayload
  = lens _plrtipPayload
      (\ s a -> s{_plrtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plrtipResource :: Lens' ProjectsLocationsRegistriesTestIAMPermissions Text
plrtipResource
  = lens _plrtipResource
      (\ s a -> s{_plrtipResource = a})

-- | JSONP
plrtipCallback :: Lens' ProjectsLocationsRegistriesTestIAMPermissions (Maybe Text)
plrtipCallback
  = lens _plrtipCallback
      (\ s a -> s{_plrtipCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesTestIAMPermissions
         where
        type Rs ProjectsLocationsRegistriesTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsRegistriesTestIAMPermissions
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesTestIAMPermissions'{..}
          = go _plrtipResource _plrtipXgafv
              _plrtipUploadProtocol
              _plrtipAccessToken
              _plrtipUploadType
              _plrtipCallback
              (Just AltJSON)
              _plrtipPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesTestIAMPermissionsResource)
                      mempty
