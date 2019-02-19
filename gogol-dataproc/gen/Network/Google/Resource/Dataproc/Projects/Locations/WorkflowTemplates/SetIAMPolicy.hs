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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.setIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesSetIAMPolicy
    , ProjectsLocationsWorkflowTemplatesSetIAMPolicy

    -- * Request Lenses
    , plwtsipXgafv
    , plwtsipUploadProtocol
    , plwtsipAccessToken
    , plwtsipUploadType
    , plwtsipPayload
    , plwtsipResource
    , plwtsipCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.setIamPolicy@ method which the
-- 'ProjectsLocationsWorkflowTemplatesSetIAMPolicy' request conforms to.
type ProjectsLocationsWorkflowTemplatesSetIAMPolicyResource
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
-- /See:/ 'projectsLocationsWorkflowTemplatesSetIAMPolicy' smart constructor.
data ProjectsLocationsWorkflowTemplatesSetIAMPolicy =
  ProjectsLocationsWorkflowTemplatesSetIAMPolicy'
    { _plwtsipXgafv          :: !(Maybe Xgafv)
    , _plwtsipUploadProtocol :: !(Maybe Text)
    , _plwtsipAccessToken    :: !(Maybe Text)
    , _plwtsipUploadType     :: !(Maybe Text)
    , _plwtsipPayload        :: !SetIAMPolicyRequest
    , _plwtsipResource       :: !Text
    , _plwtsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtsipXgafv'
--
-- * 'plwtsipUploadProtocol'
--
-- * 'plwtsipAccessToken'
--
-- * 'plwtsipUploadType'
--
-- * 'plwtsipPayload'
--
-- * 'plwtsipResource'
--
-- * 'plwtsipCallback'
projectsLocationsWorkflowTemplatesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plwtsipPayload'
    -> Text -- ^ 'plwtsipResource'
    -> ProjectsLocationsWorkflowTemplatesSetIAMPolicy
projectsLocationsWorkflowTemplatesSetIAMPolicy pPlwtsipPayload_ pPlwtsipResource_ =
  ProjectsLocationsWorkflowTemplatesSetIAMPolicy'
    { _plwtsipXgafv = Nothing
    , _plwtsipUploadProtocol = Nothing
    , _plwtsipAccessToken = Nothing
    , _plwtsipUploadType = Nothing
    , _plwtsipPayload = pPlwtsipPayload_
    , _plwtsipResource = pPlwtsipResource_
    , _plwtsipCallback = Nothing
    }

-- | V1 error format.
plwtsipXgafv :: Lens' ProjectsLocationsWorkflowTemplatesSetIAMPolicy (Maybe Xgafv)
plwtsipXgafv
  = lens _plwtsipXgafv (\ s a -> s{_plwtsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtsipUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesSetIAMPolicy (Maybe Text)
plwtsipUploadProtocol
  = lens _plwtsipUploadProtocol
      (\ s a -> s{_plwtsipUploadProtocol = a})

-- | OAuth access token.
plwtsipAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesSetIAMPolicy (Maybe Text)
plwtsipAccessToken
  = lens _plwtsipAccessToken
      (\ s a -> s{_plwtsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtsipUploadType :: Lens' ProjectsLocationsWorkflowTemplatesSetIAMPolicy (Maybe Text)
plwtsipUploadType
  = lens _plwtsipUploadType
      (\ s a -> s{_plwtsipUploadType = a})

-- | Multipart request metadata.
plwtsipPayload :: Lens' ProjectsLocationsWorkflowTemplatesSetIAMPolicy SetIAMPolicyRequest
plwtsipPayload
  = lens _plwtsipPayload
      (\ s a -> s{_plwtsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plwtsipResource :: Lens' ProjectsLocationsWorkflowTemplatesSetIAMPolicy Text
plwtsipResource
  = lens _plwtsipResource
      (\ s a -> s{_plwtsipResource = a})

-- | JSONP
plwtsipCallback :: Lens' ProjectsLocationsWorkflowTemplatesSetIAMPolicy (Maybe Text)
plwtsipCallback
  = lens _plwtsipCallback
      (\ s a -> s{_plwtsipCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkflowTemplatesSetIAMPolicy
         where
        type Rs
               ProjectsLocationsWorkflowTemplatesSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsWorkflowTemplatesSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesSetIAMPolicy'{..}
          = go _plwtsipResource _plwtsipXgafv
              _plwtsipUploadProtocol
              _plwtsipAccessToken
              _plwtsipUploadType
              _plwtsipCallback
              (Just AltJSON)
              _plwtsipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkflowTemplatesSetIAMPolicyResource)
                      mempty
