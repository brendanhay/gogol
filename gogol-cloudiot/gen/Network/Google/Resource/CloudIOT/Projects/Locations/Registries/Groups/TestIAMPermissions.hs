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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.testIamPermissions@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsTestIAMPermissions
    , ProjectsLocationsRegistriesGroupsTestIAMPermissions

    -- * Request Lenses
    , plrgtipXgafv
    , plrgtipUploadProtocol
    , plrgtipAccessToken
    , plrgtipUploadType
    , plrgtipPayload
    , plrgtipResource
    , plrgtipCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.testIamPermissions@ method which the
-- 'ProjectsLocationsRegistriesGroupsTestIAMPermissions' request conforms to.
type ProjectsLocationsRegistriesGroupsTestIAMPermissionsResource
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
-- /See:/ 'projectsLocationsRegistriesGroupsTestIAMPermissions' smart constructor.
data ProjectsLocationsRegistriesGroupsTestIAMPermissions =
  ProjectsLocationsRegistriesGroupsTestIAMPermissions'
    { _plrgtipXgafv :: !(Maybe Xgafv)
    , _plrgtipUploadProtocol :: !(Maybe Text)
    , _plrgtipAccessToken :: !(Maybe Text)
    , _plrgtipUploadType :: !(Maybe Text)
    , _plrgtipPayload :: !TestIAMPermissionsRequest
    , _plrgtipResource :: !Text
    , _plrgtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgtipXgafv'
--
-- * 'plrgtipUploadProtocol'
--
-- * 'plrgtipAccessToken'
--
-- * 'plrgtipUploadType'
--
-- * 'plrgtipPayload'
--
-- * 'plrgtipResource'
--
-- * 'plrgtipCallback'
projectsLocationsRegistriesGroupsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plrgtipPayload'
    -> Text -- ^ 'plrgtipResource'
    -> ProjectsLocationsRegistriesGroupsTestIAMPermissions
projectsLocationsRegistriesGroupsTestIAMPermissions pPlrgtipPayload_ pPlrgtipResource_ =
  ProjectsLocationsRegistriesGroupsTestIAMPermissions'
    { _plrgtipXgafv = Nothing
    , _plrgtipUploadProtocol = Nothing
    , _plrgtipAccessToken = Nothing
    , _plrgtipUploadType = Nothing
    , _plrgtipPayload = pPlrgtipPayload_
    , _plrgtipResource = pPlrgtipResource_
    , _plrgtipCallback = Nothing
    }


-- | V1 error format.
plrgtipXgafv :: Lens' ProjectsLocationsRegistriesGroupsTestIAMPermissions (Maybe Xgafv)
plrgtipXgafv
  = lens _plrgtipXgafv (\ s a -> s{_plrgtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgtipUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsTestIAMPermissions (Maybe Text)
plrgtipUploadProtocol
  = lens _plrgtipUploadProtocol
      (\ s a -> s{_plrgtipUploadProtocol = a})

-- | OAuth access token.
plrgtipAccessToken :: Lens' ProjectsLocationsRegistriesGroupsTestIAMPermissions (Maybe Text)
plrgtipAccessToken
  = lens _plrgtipAccessToken
      (\ s a -> s{_plrgtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgtipUploadType :: Lens' ProjectsLocationsRegistriesGroupsTestIAMPermissions (Maybe Text)
plrgtipUploadType
  = lens _plrgtipUploadType
      (\ s a -> s{_plrgtipUploadType = a})

-- | Multipart request metadata.
plrgtipPayload :: Lens' ProjectsLocationsRegistriesGroupsTestIAMPermissions TestIAMPermissionsRequest
plrgtipPayload
  = lens _plrgtipPayload
      (\ s a -> s{_plrgtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plrgtipResource :: Lens' ProjectsLocationsRegistriesGroupsTestIAMPermissions Text
plrgtipResource
  = lens _plrgtipResource
      (\ s a -> s{_plrgtipResource = a})

-- | JSONP
plrgtipCallback :: Lens' ProjectsLocationsRegistriesGroupsTestIAMPermissions (Maybe Text)
plrgtipCallback
  = lens _plrgtipCallback
      (\ s a -> s{_plrgtipCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsTestIAMPermissions
         where
        type Rs
               ProjectsLocationsRegistriesGroupsTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsRegistriesGroupsTestIAMPermissions
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsTestIAMPermissions'{..}
          = go _plrgtipResource _plrgtipXgafv
              _plrgtipUploadProtocol
              _plrgtipAccessToken
              _plrgtipUploadType
              _plrgtipCallback
              (Just AltJSON)
              _plrgtipPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsTestIAMPermissionsResource)
                      mempty
