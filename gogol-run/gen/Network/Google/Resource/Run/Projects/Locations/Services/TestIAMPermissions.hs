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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Services.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified Project. There
-- are no permissions required for making this API call.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.testIamPermissions@.
module Network.Google.Resource.Run.Projects.Locations.Services.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsServicesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsServicesTestIAMPermissions
    , ProjectsLocationsServicesTestIAMPermissions

    -- * Request Lenses
    , plstipXgafv
    , plstipUploadProtocol
    , plstipAccessToken
    , plstipUploadType
    , plstipPayload
    , plstipResource
    , plstipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.testIamPermissions@ method which the
-- 'ProjectsLocationsServicesTestIAMPermissions' request conforms to.
type ProjectsLocationsServicesTestIAMPermissionsResource
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

-- | Returns permissions that a caller has on the specified Project. There
-- are no permissions required for making this API call.
--
-- /See:/ 'projectsLocationsServicesTestIAMPermissions' smart constructor.
data ProjectsLocationsServicesTestIAMPermissions =
  ProjectsLocationsServicesTestIAMPermissions'
    { _plstipXgafv :: !(Maybe Xgafv)
    , _plstipUploadProtocol :: !(Maybe Text)
    , _plstipAccessToken :: !(Maybe Text)
    , _plstipUploadType :: !(Maybe Text)
    , _plstipPayload :: !TestIAMPermissionsRequest
    , _plstipResource :: !Text
    , _plstipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsServicesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstipXgafv'
--
-- * 'plstipUploadProtocol'
--
-- * 'plstipAccessToken'
--
-- * 'plstipUploadType'
--
-- * 'plstipPayload'
--
-- * 'plstipResource'
--
-- * 'plstipCallback'
projectsLocationsServicesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plstipPayload'
    -> Text -- ^ 'plstipResource'
    -> ProjectsLocationsServicesTestIAMPermissions
projectsLocationsServicesTestIAMPermissions pPlstipPayload_ pPlstipResource_ =
  ProjectsLocationsServicesTestIAMPermissions'
    { _plstipXgafv = Nothing
    , _plstipUploadProtocol = Nothing
    , _plstipAccessToken = Nothing
    , _plstipUploadType = Nothing
    , _plstipPayload = pPlstipPayload_
    , _plstipResource = pPlstipResource_
    , _plstipCallback = Nothing
    }


-- | V1 error format.
plstipXgafv :: Lens' ProjectsLocationsServicesTestIAMPermissions (Maybe Xgafv)
plstipXgafv
  = lens _plstipXgafv (\ s a -> s{_plstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstipUploadProtocol :: Lens' ProjectsLocationsServicesTestIAMPermissions (Maybe Text)
plstipUploadProtocol
  = lens _plstipUploadProtocol
      (\ s a -> s{_plstipUploadProtocol = a})

-- | OAuth access token.
plstipAccessToken :: Lens' ProjectsLocationsServicesTestIAMPermissions (Maybe Text)
plstipAccessToken
  = lens _plstipAccessToken
      (\ s a -> s{_plstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstipUploadType :: Lens' ProjectsLocationsServicesTestIAMPermissions (Maybe Text)
plstipUploadType
  = lens _plstipUploadType
      (\ s a -> s{_plstipUploadType = a})

-- | Multipart request metadata.
plstipPayload :: Lens' ProjectsLocationsServicesTestIAMPermissions TestIAMPermissionsRequest
plstipPayload
  = lens _plstipPayload
      (\ s a -> s{_plstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plstipResource :: Lens' ProjectsLocationsServicesTestIAMPermissions Text
plstipResource
  = lens _plstipResource
      (\ s a -> s{_plstipResource = a})

-- | JSONP
plstipCallback :: Lens' ProjectsLocationsServicesTestIAMPermissions (Maybe Text)
plstipCallback
  = lens _plstipCallback
      (\ s a -> s{_plstipCallback = a})

instance GoogleRequest
           ProjectsLocationsServicesTestIAMPermissions
         where
        type Rs ProjectsLocationsServicesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsServicesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsServicesTestIAMPermissions'{..}
          = go _plstipResource _plstipXgafv
              _plstipUploadProtocol
              _plstipAccessToken
              _plstipUploadType
              _plstipCallback
              (Just AltJSON)
              _plstipPayload
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsServicesTestIAMPermissionsResource)
                      mempty
