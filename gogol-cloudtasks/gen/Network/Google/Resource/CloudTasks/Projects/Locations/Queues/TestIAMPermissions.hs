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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on a Queue. If the resource does
-- not exist, this will return an empty set of permissions, not a NOT_FOUND
-- error. Note: This operation is designed to be used for building
-- permission-aware UIs and command-line tools, not for authorization
-- checking. This operation may \"fail open\" without warning.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.testIamPermissions@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsQueuesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsQueuesTestIAMPermissions
    , ProjectsLocationsQueuesTestIAMPermissions

    -- * Request Lenses
    , plqtipXgafv
    , plqtipUploadProtocol
    , plqtipAccessToken
    , plqtipUploadType
    , plqtipPayload
    , plqtipResource
    , plqtipCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.testIamPermissions@ method which the
-- 'ProjectsLocationsQueuesTestIAMPermissions' request conforms to.
type ProjectsLocationsQueuesTestIAMPermissionsResource
     =
     "v2" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on a Queue. If the resource does
-- not exist, this will return an empty set of permissions, not a NOT_FOUND
-- error. Note: This operation is designed to be used for building
-- permission-aware UIs and command-line tools, not for authorization
-- checking. This operation may \"fail open\" without warning.
--
-- /See:/ 'projectsLocationsQueuesTestIAMPermissions' smart constructor.
data ProjectsLocationsQueuesTestIAMPermissions =
  ProjectsLocationsQueuesTestIAMPermissions'
    { _plqtipXgafv :: !(Maybe Xgafv)
    , _plqtipUploadProtocol :: !(Maybe Text)
    , _plqtipAccessToken :: !(Maybe Text)
    , _plqtipUploadType :: !(Maybe Text)
    , _plqtipPayload :: !TestIAMPermissionsRequest
    , _plqtipResource :: !Text
    , _plqtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqtipXgafv'
--
-- * 'plqtipUploadProtocol'
--
-- * 'plqtipAccessToken'
--
-- * 'plqtipUploadType'
--
-- * 'plqtipPayload'
--
-- * 'plqtipResource'
--
-- * 'plqtipCallback'
projectsLocationsQueuesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plqtipPayload'
    -> Text -- ^ 'plqtipResource'
    -> ProjectsLocationsQueuesTestIAMPermissions
projectsLocationsQueuesTestIAMPermissions pPlqtipPayload_ pPlqtipResource_ =
  ProjectsLocationsQueuesTestIAMPermissions'
    { _plqtipXgafv = Nothing
    , _plqtipUploadProtocol = Nothing
    , _plqtipAccessToken = Nothing
    , _plqtipUploadType = Nothing
    , _plqtipPayload = pPlqtipPayload_
    , _plqtipResource = pPlqtipResource_
    , _plqtipCallback = Nothing
    }


-- | V1 error format.
plqtipXgafv :: Lens' ProjectsLocationsQueuesTestIAMPermissions (Maybe Xgafv)
plqtipXgafv
  = lens _plqtipXgafv (\ s a -> s{_plqtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqtipUploadProtocol :: Lens' ProjectsLocationsQueuesTestIAMPermissions (Maybe Text)
plqtipUploadProtocol
  = lens _plqtipUploadProtocol
      (\ s a -> s{_plqtipUploadProtocol = a})

-- | OAuth access token.
plqtipAccessToken :: Lens' ProjectsLocationsQueuesTestIAMPermissions (Maybe Text)
plqtipAccessToken
  = lens _plqtipAccessToken
      (\ s a -> s{_plqtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqtipUploadType :: Lens' ProjectsLocationsQueuesTestIAMPermissions (Maybe Text)
plqtipUploadType
  = lens _plqtipUploadType
      (\ s a -> s{_plqtipUploadType = a})

-- | Multipart request metadata.
plqtipPayload :: Lens' ProjectsLocationsQueuesTestIAMPermissions TestIAMPermissionsRequest
plqtipPayload
  = lens _plqtipPayload
      (\ s a -> s{_plqtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plqtipResource :: Lens' ProjectsLocationsQueuesTestIAMPermissions Text
plqtipResource
  = lens _plqtipResource
      (\ s a -> s{_plqtipResource = a})

-- | JSONP
plqtipCallback :: Lens' ProjectsLocationsQueuesTestIAMPermissions (Maybe Text)
plqtipCallback
  = lens _plqtipCallback
      (\ s a -> s{_plqtipCallback = a})

instance GoogleRequest
           ProjectsLocationsQueuesTestIAMPermissions
         where
        type Rs ProjectsLocationsQueuesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsLocationsQueuesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsQueuesTestIAMPermissions'{..}
          = go _plqtipResource _plqtipXgafv
              _plqtipUploadProtocol
              _plqtipAccessToken
              _plqtipUploadType
              _plqtipCallback
              (Just AltJSON)
              _plqtipPayload
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsQueuesTestIAMPermissionsResource)
                      mempty
