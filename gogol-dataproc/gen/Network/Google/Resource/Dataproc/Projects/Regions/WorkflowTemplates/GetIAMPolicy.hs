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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.getIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesGetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesGetIAMPolicy
    , ProjectsRegionsWorkflowTemplatesGetIAMPolicy

    -- * Request Lenses
    , prwtgipXgafv
    , prwtgipUploadProtocol
    , prwtgipAccessToken
    , prwtgipUploadType
    , prwtgipPayload
    , prwtgipResource
    , prwtgipCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.getIamPolicy@ method which the
-- 'ProjectsRegionsWorkflowTemplatesGetIAMPolicy' request conforms to.
type ProjectsRegionsWorkflowTemplatesGetIAMPolicyResource
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
-- /See:/ 'projectsRegionsWorkflowTemplatesGetIAMPolicy' smart constructor.
data ProjectsRegionsWorkflowTemplatesGetIAMPolicy = ProjectsRegionsWorkflowTemplatesGetIAMPolicy'
    { _prwtgipXgafv          :: !(Maybe Xgafv)
    , _prwtgipUploadProtocol :: !(Maybe Text)
    , _prwtgipAccessToken    :: !(Maybe Text)
    , _prwtgipUploadType     :: !(Maybe Text)
    , _prwtgipPayload        :: !GetIAMPolicyRequest
    , _prwtgipResource       :: !Text
    , _prwtgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtgipXgafv'
--
-- * 'prwtgipUploadProtocol'
--
-- * 'prwtgipAccessToken'
--
-- * 'prwtgipUploadType'
--
-- * 'prwtgipPayload'
--
-- * 'prwtgipResource'
--
-- * 'prwtgipCallback'
projectsRegionsWorkflowTemplatesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'prwtgipPayload'
    -> Text -- ^ 'prwtgipResource'
    -> ProjectsRegionsWorkflowTemplatesGetIAMPolicy
projectsRegionsWorkflowTemplatesGetIAMPolicy pPrwtgipPayload_ pPrwtgipResource_ =
    ProjectsRegionsWorkflowTemplatesGetIAMPolicy'
    { _prwtgipXgafv = Nothing
    , _prwtgipUploadProtocol = Nothing
    , _prwtgipAccessToken = Nothing
    , _prwtgipUploadType = Nothing
    , _prwtgipPayload = pPrwtgipPayload_
    , _prwtgipResource = pPrwtgipResource_
    , _prwtgipCallback = Nothing
    }

-- | V1 error format.
prwtgipXgafv :: Lens' ProjectsRegionsWorkflowTemplatesGetIAMPolicy (Maybe Xgafv)
prwtgipXgafv
  = lens _prwtgipXgafv (\ s a -> s{_prwtgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtgipUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesGetIAMPolicy (Maybe Text)
prwtgipUploadProtocol
  = lens _prwtgipUploadProtocol
      (\ s a -> s{_prwtgipUploadProtocol = a})

-- | OAuth access token.
prwtgipAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesGetIAMPolicy (Maybe Text)
prwtgipAccessToken
  = lens _prwtgipAccessToken
      (\ s a -> s{_prwtgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtgipUploadType :: Lens' ProjectsRegionsWorkflowTemplatesGetIAMPolicy (Maybe Text)
prwtgipUploadType
  = lens _prwtgipUploadType
      (\ s a -> s{_prwtgipUploadType = a})

-- | Multipart request metadata.
prwtgipPayload :: Lens' ProjectsRegionsWorkflowTemplatesGetIAMPolicy GetIAMPolicyRequest
prwtgipPayload
  = lens _prwtgipPayload
      (\ s a -> s{_prwtgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
prwtgipResource :: Lens' ProjectsRegionsWorkflowTemplatesGetIAMPolicy Text
prwtgipResource
  = lens _prwtgipResource
      (\ s a -> s{_prwtgipResource = a})

-- | JSONP
prwtgipCallback :: Lens' ProjectsRegionsWorkflowTemplatesGetIAMPolicy (Maybe Text)
prwtgipCallback
  = lens _prwtgipCallback
      (\ s a -> s{_prwtgipCallback = a})

instance GoogleRequest
         ProjectsRegionsWorkflowTemplatesGetIAMPolicy where
        type Rs ProjectsRegionsWorkflowTemplatesGetIAMPolicy
             = Policy
        type Scopes
               ProjectsRegionsWorkflowTemplatesGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesGetIAMPolicy'{..}
          = go _prwtgipResource _prwtgipXgafv
              _prwtgipUploadProtocol
              _prwtgipAccessToken
              _prwtgipUploadType
              _prwtgipCallback
              (Just AltJSON)
              _prwtgipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsWorkflowTemplatesGetIAMPolicyResource)
                      mempty
