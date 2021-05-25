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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.testIamPermissions@.
module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsAutoscalingPoliciesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsAutoscalingPoliciesTestIAMPermissions
    , ProjectsLocationsAutoscalingPoliciesTestIAMPermissions

    -- * Request Lenses
    , plaptipXgafv
    , plaptipUploadProtocol
    , plaptipAccessToken
    , plaptipUploadType
    , plaptipPayload
    , plaptipResource
    , plaptipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.testIamPermissions@ method which the
-- 'ProjectsLocationsAutoscalingPoliciesTestIAMPermissions' request conforms to.
type ProjectsLocationsAutoscalingPoliciesTestIAMPermissionsResource
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
-- /See:/ 'projectsLocationsAutoscalingPoliciesTestIAMPermissions' smart constructor.
data ProjectsLocationsAutoscalingPoliciesTestIAMPermissions =
  ProjectsLocationsAutoscalingPoliciesTestIAMPermissions'
    { _plaptipXgafv :: !(Maybe Xgafv)
    , _plaptipUploadProtocol :: !(Maybe Text)
    , _plaptipAccessToken :: !(Maybe Text)
    , _plaptipUploadType :: !(Maybe Text)
    , _plaptipPayload :: !TestIAMPermissionsRequest
    , _plaptipResource :: !Text
    , _plaptipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAutoscalingPoliciesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaptipXgafv'
--
-- * 'plaptipUploadProtocol'
--
-- * 'plaptipAccessToken'
--
-- * 'plaptipUploadType'
--
-- * 'plaptipPayload'
--
-- * 'plaptipResource'
--
-- * 'plaptipCallback'
projectsLocationsAutoscalingPoliciesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plaptipPayload'
    -> Text -- ^ 'plaptipResource'
    -> ProjectsLocationsAutoscalingPoliciesTestIAMPermissions
projectsLocationsAutoscalingPoliciesTestIAMPermissions pPlaptipPayload_ pPlaptipResource_ =
  ProjectsLocationsAutoscalingPoliciesTestIAMPermissions'
    { _plaptipXgafv = Nothing
    , _plaptipUploadProtocol = Nothing
    , _plaptipAccessToken = Nothing
    , _plaptipUploadType = Nothing
    , _plaptipPayload = pPlaptipPayload_
    , _plaptipResource = pPlaptipResource_
    , _plaptipCallback = Nothing
    }


-- | V1 error format.
plaptipXgafv :: Lens' ProjectsLocationsAutoscalingPoliciesTestIAMPermissions (Maybe Xgafv)
plaptipXgafv
  = lens _plaptipXgafv (\ s a -> s{_plaptipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaptipUploadProtocol :: Lens' ProjectsLocationsAutoscalingPoliciesTestIAMPermissions (Maybe Text)
plaptipUploadProtocol
  = lens _plaptipUploadProtocol
      (\ s a -> s{_plaptipUploadProtocol = a})

-- | OAuth access token.
plaptipAccessToken :: Lens' ProjectsLocationsAutoscalingPoliciesTestIAMPermissions (Maybe Text)
plaptipAccessToken
  = lens _plaptipAccessToken
      (\ s a -> s{_plaptipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaptipUploadType :: Lens' ProjectsLocationsAutoscalingPoliciesTestIAMPermissions (Maybe Text)
plaptipUploadType
  = lens _plaptipUploadType
      (\ s a -> s{_plaptipUploadType = a})

-- | Multipart request metadata.
plaptipPayload :: Lens' ProjectsLocationsAutoscalingPoliciesTestIAMPermissions TestIAMPermissionsRequest
plaptipPayload
  = lens _plaptipPayload
      (\ s a -> s{_plaptipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plaptipResource :: Lens' ProjectsLocationsAutoscalingPoliciesTestIAMPermissions Text
plaptipResource
  = lens _plaptipResource
      (\ s a -> s{_plaptipResource = a})

-- | JSONP
plaptipCallback :: Lens' ProjectsLocationsAutoscalingPoliciesTestIAMPermissions (Maybe Text)
plaptipCallback
  = lens _plaptipCallback
      (\ s a -> s{_plaptipCallback = a})

instance GoogleRequest
           ProjectsLocationsAutoscalingPoliciesTestIAMPermissions
         where
        type Rs
               ProjectsLocationsAutoscalingPoliciesTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsAutoscalingPoliciesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAutoscalingPoliciesTestIAMPermissions'{..}
          = go _plaptipResource _plaptipXgafv
              _plaptipUploadProtocol
              _plaptipAccessToken
              _plaptipUploadType
              _plaptipCallback
              (Just AltJSON)
              _plaptipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAutoscalingPoliciesTestIAMPermissionsResource)
                      mempty
