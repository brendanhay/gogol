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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.setIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesSetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesSetIAMPolicy
    , ProjectsRegionsWorkflowTemplatesSetIAMPolicy

    -- * Request Lenses
    , prwtsipXgafv
    , prwtsipUploadProtocol
    , prwtsipAccessToken
    , prwtsipUploadType
    , prwtsipPayload
    , prwtsipResource
    , prwtsipCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.setIamPolicy@ method which the
-- 'ProjectsRegionsWorkflowTemplatesSetIAMPolicy' request conforms to.
type ProjectsRegionsWorkflowTemplatesSetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsRegionsWorkflowTemplatesSetIAMPolicy' smart constructor.
data ProjectsRegionsWorkflowTemplatesSetIAMPolicy =
  ProjectsRegionsWorkflowTemplatesSetIAMPolicy'
    { _prwtsipXgafv          :: !(Maybe Xgafv)
    , _prwtsipUploadProtocol :: !(Maybe Text)
    , _prwtsipAccessToken    :: !(Maybe Text)
    , _prwtsipUploadType     :: !(Maybe Text)
    , _prwtsipPayload        :: !SetIAMPolicyRequest
    , _prwtsipResource       :: !Text
    , _prwtsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtsipXgafv'
--
-- * 'prwtsipUploadProtocol'
--
-- * 'prwtsipAccessToken'
--
-- * 'prwtsipUploadType'
--
-- * 'prwtsipPayload'
--
-- * 'prwtsipResource'
--
-- * 'prwtsipCallback'
projectsRegionsWorkflowTemplatesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'prwtsipPayload'
    -> Text -- ^ 'prwtsipResource'
    -> ProjectsRegionsWorkflowTemplatesSetIAMPolicy
projectsRegionsWorkflowTemplatesSetIAMPolicy pPrwtsipPayload_ pPrwtsipResource_ =
  ProjectsRegionsWorkflowTemplatesSetIAMPolicy'
    { _prwtsipXgafv = Nothing
    , _prwtsipUploadProtocol = Nothing
    , _prwtsipAccessToken = Nothing
    , _prwtsipUploadType = Nothing
    , _prwtsipPayload = pPrwtsipPayload_
    , _prwtsipResource = pPrwtsipResource_
    , _prwtsipCallback = Nothing
    }


-- | V1 error format.
prwtsipXgafv :: Lens' ProjectsRegionsWorkflowTemplatesSetIAMPolicy (Maybe Xgafv)
prwtsipXgafv
  = lens _prwtsipXgafv (\ s a -> s{_prwtsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtsipUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesSetIAMPolicy (Maybe Text)
prwtsipUploadProtocol
  = lens _prwtsipUploadProtocol
      (\ s a -> s{_prwtsipUploadProtocol = a})

-- | OAuth access token.
prwtsipAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesSetIAMPolicy (Maybe Text)
prwtsipAccessToken
  = lens _prwtsipAccessToken
      (\ s a -> s{_prwtsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtsipUploadType :: Lens' ProjectsRegionsWorkflowTemplatesSetIAMPolicy (Maybe Text)
prwtsipUploadType
  = lens _prwtsipUploadType
      (\ s a -> s{_prwtsipUploadType = a})

-- | Multipart request metadata.
prwtsipPayload :: Lens' ProjectsRegionsWorkflowTemplatesSetIAMPolicy SetIAMPolicyRequest
prwtsipPayload
  = lens _prwtsipPayload
      (\ s a -> s{_prwtsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
prwtsipResource :: Lens' ProjectsRegionsWorkflowTemplatesSetIAMPolicy Text
prwtsipResource
  = lens _prwtsipResource
      (\ s a -> s{_prwtsipResource = a})

-- | JSONP
prwtsipCallback :: Lens' ProjectsRegionsWorkflowTemplatesSetIAMPolicy (Maybe Text)
prwtsipCallback
  = lens _prwtsipCallback
      (\ s a -> s{_prwtsipCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesSetIAMPolicy
         where
        type Rs ProjectsRegionsWorkflowTemplatesSetIAMPolicy
             = Policy
        type Scopes
               ProjectsRegionsWorkflowTemplatesSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesSetIAMPolicy'{..}
          = go _prwtsipResource _prwtsipXgafv
              _prwtsipUploadProtocol
              _prwtsipAccessToken
              _prwtsipUploadType
              _prwtsipCallback
              (Just AltJSON)
              _prwtsipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsWorkflowTemplatesSetIAMPolicyResource)
                      mempty
