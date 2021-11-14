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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.testIamPermissions@.
module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsRegionsAutoscalingPoliciesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsRegionsAutoscalingPoliciesTestIAMPermissions
    , ProjectsRegionsAutoscalingPoliciesTestIAMPermissions

    -- * Request Lenses
    , praptipXgafv
    , praptipUploadProtocol
    , praptipAccessToken
    , praptipUploadType
    , praptipPayload
    , praptipResource
    , praptipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.testIamPermissions@ method which the
-- 'ProjectsRegionsAutoscalingPoliciesTestIAMPermissions' request conforms to.
type ProjectsRegionsAutoscalingPoliciesTestIAMPermissionsResource
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
-- /See:/ 'projectsRegionsAutoscalingPoliciesTestIAMPermissions' smart constructor.
data ProjectsRegionsAutoscalingPoliciesTestIAMPermissions =
  ProjectsRegionsAutoscalingPoliciesTestIAMPermissions'
    { _praptipXgafv :: !(Maybe Xgafv)
    , _praptipUploadProtocol :: !(Maybe Text)
    , _praptipAccessToken :: !(Maybe Text)
    , _praptipUploadType :: !(Maybe Text)
    , _praptipPayload :: !TestIAMPermissionsRequest
    , _praptipResource :: !Text
    , _praptipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsAutoscalingPoliciesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'praptipXgafv'
--
-- * 'praptipUploadProtocol'
--
-- * 'praptipAccessToken'
--
-- * 'praptipUploadType'
--
-- * 'praptipPayload'
--
-- * 'praptipResource'
--
-- * 'praptipCallback'
projectsRegionsAutoscalingPoliciesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'praptipPayload'
    -> Text -- ^ 'praptipResource'
    -> ProjectsRegionsAutoscalingPoliciesTestIAMPermissions
projectsRegionsAutoscalingPoliciesTestIAMPermissions pPraptipPayload_ pPraptipResource_ =
  ProjectsRegionsAutoscalingPoliciesTestIAMPermissions'
    { _praptipXgafv = Nothing
    , _praptipUploadProtocol = Nothing
    , _praptipAccessToken = Nothing
    , _praptipUploadType = Nothing
    , _praptipPayload = pPraptipPayload_
    , _praptipResource = pPraptipResource_
    , _praptipCallback = Nothing
    }


-- | V1 error format.
praptipXgafv :: Lens' ProjectsRegionsAutoscalingPoliciesTestIAMPermissions (Maybe Xgafv)
praptipXgafv
  = lens _praptipXgafv (\ s a -> s{_praptipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
praptipUploadProtocol :: Lens' ProjectsRegionsAutoscalingPoliciesTestIAMPermissions (Maybe Text)
praptipUploadProtocol
  = lens _praptipUploadProtocol
      (\ s a -> s{_praptipUploadProtocol = a})

-- | OAuth access token.
praptipAccessToken :: Lens' ProjectsRegionsAutoscalingPoliciesTestIAMPermissions (Maybe Text)
praptipAccessToken
  = lens _praptipAccessToken
      (\ s a -> s{_praptipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
praptipUploadType :: Lens' ProjectsRegionsAutoscalingPoliciesTestIAMPermissions (Maybe Text)
praptipUploadType
  = lens _praptipUploadType
      (\ s a -> s{_praptipUploadType = a})

-- | Multipart request metadata.
praptipPayload :: Lens' ProjectsRegionsAutoscalingPoliciesTestIAMPermissions TestIAMPermissionsRequest
praptipPayload
  = lens _praptipPayload
      (\ s a -> s{_praptipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
praptipResource :: Lens' ProjectsRegionsAutoscalingPoliciesTestIAMPermissions Text
praptipResource
  = lens _praptipResource
      (\ s a -> s{_praptipResource = a})

-- | JSONP
praptipCallback :: Lens' ProjectsRegionsAutoscalingPoliciesTestIAMPermissions (Maybe Text)
praptipCallback
  = lens _praptipCallback
      (\ s a -> s{_praptipCallback = a})

instance GoogleRequest
           ProjectsRegionsAutoscalingPoliciesTestIAMPermissions
         where
        type Rs
               ProjectsRegionsAutoscalingPoliciesTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsRegionsAutoscalingPoliciesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsAutoscalingPoliciesTestIAMPermissions'{..}
          = go _praptipResource _praptipXgafv
              _praptipUploadProtocol
              _praptipAccessToken
              _praptipUploadType
              _praptipCallback
              (Just AltJSON)
              _praptipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsAutoscalingPoliciesTestIAMPermissionsResource)
                      mempty
