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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.getIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesGetIAMPolicy
    , ProjectsLocationsWorkflowTemplatesGetIAMPolicy

    -- * Request Lenses
    , plwtgipXgafv
    , plwtgipUploadProtocol
    , plwtgipAccessToken
    , plwtgipUploadType
    , plwtgipPayload
    , plwtgipResource
    , plwtgipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.getIamPolicy@ method which the
-- 'ProjectsLocationsWorkflowTemplatesGetIAMPolicy' request conforms to.
type ProjectsLocationsWorkflowTemplatesGetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsLocationsWorkflowTemplatesGetIAMPolicy' smart constructor.
data ProjectsLocationsWorkflowTemplatesGetIAMPolicy =
  ProjectsLocationsWorkflowTemplatesGetIAMPolicy'
    { _plwtgipXgafv :: !(Maybe Xgafv)
    , _plwtgipUploadProtocol :: !(Maybe Text)
    , _plwtgipAccessToken :: !(Maybe Text)
    , _plwtgipUploadType :: !(Maybe Text)
    , _plwtgipPayload :: !GetIAMPolicyRequest
    , _plwtgipResource :: !Text
    , _plwtgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtgipXgafv'
--
-- * 'plwtgipUploadProtocol'
--
-- * 'plwtgipAccessToken'
--
-- * 'plwtgipUploadType'
--
-- * 'plwtgipPayload'
--
-- * 'plwtgipResource'
--
-- * 'plwtgipCallback'
projectsLocationsWorkflowTemplatesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'plwtgipPayload'
    -> Text -- ^ 'plwtgipResource'
    -> ProjectsLocationsWorkflowTemplatesGetIAMPolicy
projectsLocationsWorkflowTemplatesGetIAMPolicy pPlwtgipPayload_ pPlwtgipResource_ =
  ProjectsLocationsWorkflowTemplatesGetIAMPolicy'
    { _plwtgipXgafv = Nothing
    , _plwtgipUploadProtocol = Nothing
    , _plwtgipAccessToken = Nothing
    , _plwtgipUploadType = Nothing
    , _plwtgipPayload = pPlwtgipPayload_
    , _plwtgipResource = pPlwtgipResource_
    , _plwtgipCallback = Nothing
    }


-- | V1 error format.
plwtgipXgafv :: Lens' ProjectsLocationsWorkflowTemplatesGetIAMPolicy (Maybe Xgafv)
plwtgipXgafv
  = lens _plwtgipXgafv (\ s a -> s{_plwtgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtgipUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesGetIAMPolicy (Maybe Text)
plwtgipUploadProtocol
  = lens _plwtgipUploadProtocol
      (\ s a -> s{_plwtgipUploadProtocol = a})

-- | OAuth access token.
plwtgipAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesGetIAMPolicy (Maybe Text)
plwtgipAccessToken
  = lens _plwtgipAccessToken
      (\ s a -> s{_plwtgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtgipUploadType :: Lens' ProjectsLocationsWorkflowTemplatesGetIAMPolicy (Maybe Text)
plwtgipUploadType
  = lens _plwtgipUploadType
      (\ s a -> s{_plwtgipUploadType = a})

-- | Multipart request metadata.
plwtgipPayload :: Lens' ProjectsLocationsWorkflowTemplatesGetIAMPolicy GetIAMPolicyRequest
plwtgipPayload
  = lens _plwtgipPayload
      (\ s a -> s{_plwtgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plwtgipResource :: Lens' ProjectsLocationsWorkflowTemplatesGetIAMPolicy Text
plwtgipResource
  = lens _plwtgipResource
      (\ s a -> s{_plwtgipResource = a})

-- | JSONP
plwtgipCallback :: Lens' ProjectsLocationsWorkflowTemplatesGetIAMPolicy (Maybe Text)
plwtgipCallback
  = lens _plwtgipCallback
      (\ s a -> s{_plwtgipCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkflowTemplatesGetIAMPolicy
         where
        type Rs
               ProjectsLocationsWorkflowTemplatesGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsWorkflowTemplatesGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesGetIAMPolicy'{..}
          = go _plwtgipResource _plwtgipXgafv
              _plwtgipUploadProtocol
              _plwtgipAccessToken
              _plwtgipUploadType
              _plwtgipCallback
              (Just AltJSON)
              _plwtgipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkflowTemplatesGetIAMPolicyResource)
                      mempty
