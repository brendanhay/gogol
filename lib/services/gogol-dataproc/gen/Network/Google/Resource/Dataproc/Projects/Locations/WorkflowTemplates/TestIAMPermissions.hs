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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.testIamPermissions@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesTestIAMPermissions
    , ProjectsLocationsWorkflowTemplatesTestIAMPermissions

    -- * Request Lenses
    , plwttipXgafv
    , plwttipUploadProtocol
    , plwttipAccessToken
    , plwttipUploadType
    , plwttipPayload
    , plwttipResource
    , plwttipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.testIamPermissions@ method which the
-- 'ProjectsLocationsWorkflowTemplatesTestIAMPermissions' request conforms to.
type ProjectsLocationsWorkflowTemplatesTestIAMPermissionsResource
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
-- not a NOT_FOUND error.Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsLocationsWorkflowTemplatesTestIAMPermissions' smart constructor.
data ProjectsLocationsWorkflowTemplatesTestIAMPermissions =
  ProjectsLocationsWorkflowTemplatesTestIAMPermissions'
    { _plwttipXgafv :: !(Maybe Xgafv)
    , _plwttipUploadProtocol :: !(Maybe Text)
    , _plwttipAccessToken :: !(Maybe Text)
    , _plwttipUploadType :: !(Maybe Text)
    , _plwttipPayload :: !TestIAMPermissionsRequest
    , _plwttipResource :: !Text
    , _plwttipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwttipXgafv'
--
-- * 'plwttipUploadProtocol'
--
-- * 'plwttipAccessToken'
--
-- * 'plwttipUploadType'
--
-- * 'plwttipPayload'
--
-- * 'plwttipResource'
--
-- * 'plwttipCallback'
projectsLocationsWorkflowTemplatesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plwttipPayload'
    -> Text -- ^ 'plwttipResource'
    -> ProjectsLocationsWorkflowTemplatesTestIAMPermissions
projectsLocationsWorkflowTemplatesTestIAMPermissions pPlwttipPayload_ pPlwttipResource_ =
  ProjectsLocationsWorkflowTemplatesTestIAMPermissions'
    { _plwttipXgafv = Nothing
    , _plwttipUploadProtocol = Nothing
    , _plwttipAccessToken = Nothing
    , _plwttipUploadType = Nothing
    , _plwttipPayload = pPlwttipPayload_
    , _plwttipResource = pPlwttipResource_
    , _plwttipCallback = Nothing
    }


-- | V1 error format.
plwttipXgafv :: Lens' ProjectsLocationsWorkflowTemplatesTestIAMPermissions (Maybe Xgafv)
plwttipXgafv
  = lens _plwttipXgafv (\ s a -> s{_plwttipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwttipUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesTestIAMPermissions (Maybe Text)
plwttipUploadProtocol
  = lens _plwttipUploadProtocol
      (\ s a -> s{_plwttipUploadProtocol = a})

-- | OAuth access token.
plwttipAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesTestIAMPermissions (Maybe Text)
plwttipAccessToken
  = lens _plwttipAccessToken
      (\ s a -> s{_plwttipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwttipUploadType :: Lens' ProjectsLocationsWorkflowTemplatesTestIAMPermissions (Maybe Text)
plwttipUploadType
  = lens _plwttipUploadType
      (\ s a -> s{_plwttipUploadType = a})

-- | Multipart request metadata.
plwttipPayload :: Lens' ProjectsLocationsWorkflowTemplatesTestIAMPermissions TestIAMPermissionsRequest
plwttipPayload
  = lens _plwttipPayload
      (\ s a -> s{_plwttipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plwttipResource :: Lens' ProjectsLocationsWorkflowTemplatesTestIAMPermissions Text
plwttipResource
  = lens _plwttipResource
      (\ s a -> s{_plwttipResource = a})

-- | JSONP
plwttipCallback :: Lens' ProjectsLocationsWorkflowTemplatesTestIAMPermissions (Maybe Text)
plwttipCallback
  = lens _plwttipCallback
      (\ s a -> s{_plwttipCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkflowTemplatesTestIAMPermissions
         where
        type Rs
               ProjectsLocationsWorkflowTemplatesTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsWorkflowTemplatesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesTestIAMPermissions'{..}
          = go _plwttipResource _plwttipXgafv
              _plwttipUploadProtocol
              _plwttipAccessToken
              _plwttipUploadType
              _plwttipCallback
              (Just AltJSON)
              _plwttipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkflowTemplatesTestIAMPermissionsResource)
                      mempty
