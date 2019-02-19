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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Instantiate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Instantiates a template and begins execution.The returned Operation can
-- be used to track execution of workflow by polling operations.get. The
-- Operation will complete when entire workflow is finished.The running
-- workflow can be aborted via operations.cancel. This will cause any
-- inflight jobs to be cancelled and workflow-owned clusters to be
-- deleted.The Operation.metadata will be WorkflowMetadata.On successful
-- completion, Operation.response will be Empty.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.instantiate@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Instantiate
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesInstantiateResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesInstantiate
    , ProjectsLocationsWorkflowTemplatesInstantiate

    -- * Request Lenses
    , plwtiXgafv
    , plwtiUploadProtocol
    , plwtiAccessToken
    , plwtiUploadType
    , plwtiPayload
    , plwtiName
    , plwtiCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.instantiate@ method which the
-- 'ProjectsLocationsWorkflowTemplatesInstantiate' request conforms to.
type ProjectsLocationsWorkflowTemplatesInstantiateResource
     =
     "v1" :>
       CaptureMode "name" "instantiate" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InstantiateWorkflowTemplateRequest :>
                       Post '[JSON] Operation

-- | Instantiates a template and begins execution.The returned Operation can
-- be used to track execution of workflow by polling operations.get. The
-- Operation will complete when entire workflow is finished.The running
-- workflow can be aborted via operations.cancel. This will cause any
-- inflight jobs to be cancelled and workflow-owned clusters to be
-- deleted.The Operation.metadata will be WorkflowMetadata.On successful
-- completion, Operation.response will be Empty.
--
-- /See:/ 'projectsLocationsWorkflowTemplatesInstantiate' smart constructor.
data ProjectsLocationsWorkflowTemplatesInstantiate =
  ProjectsLocationsWorkflowTemplatesInstantiate'
    { _plwtiXgafv          :: !(Maybe Xgafv)
    , _plwtiUploadProtocol :: !(Maybe Text)
    , _plwtiAccessToken    :: !(Maybe Text)
    , _plwtiUploadType     :: !(Maybe Text)
    , _plwtiPayload        :: !InstantiateWorkflowTemplateRequest
    , _plwtiName           :: !Text
    , _plwtiCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesInstantiate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtiXgafv'
--
-- * 'plwtiUploadProtocol'
--
-- * 'plwtiAccessToken'
--
-- * 'plwtiUploadType'
--
-- * 'plwtiPayload'
--
-- * 'plwtiName'
--
-- * 'plwtiCallback'
projectsLocationsWorkflowTemplatesInstantiate
    :: InstantiateWorkflowTemplateRequest -- ^ 'plwtiPayload'
    -> Text -- ^ 'plwtiName'
    -> ProjectsLocationsWorkflowTemplatesInstantiate
projectsLocationsWorkflowTemplatesInstantiate pPlwtiPayload_ pPlwtiName_ =
  ProjectsLocationsWorkflowTemplatesInstantiate'
    { _plwtiXgafv = Nothing
    , _plwtiUploadProtocol = Nothing
    , _plwtiAccessToken = Nothing
    , _plwtiUploadType = Nothing
    , _plwtiPayload = pPlwtiPayload_
    , _plwtiName = pPlwtiName_
    , _plwtiCallback = Nothing
    }

-- | V1 error format.
plwtiXgafv :: Lens' ProjectsLocationsWorkflowTemplatesInstantiate (Maybe Xgafv)
plwtiXgafv
  = lens _plwtiXgafv (\ s a -> s{_plwtiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtiUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesInstantiate (Maybe Text)
plwtiUploadProtocol
  = lens _plwtiUploadProtocol
      (\ s a -> s{_plwtiUploadProtocol = a})

-- | OAuth access token.
plwtiAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesInstantiate (Maybe Text)
plwtiAccessToken
  = lens _plwtiAccessToken
      (\ s a -> s{_plwtiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtiUploadType :: Lens' ProjectsLocationsWorkflowTemplatesInstantiate (Maybe Text)
plwtiUploadType
  = lens _plwtiUploadType
      (\ s a -> s{_plwtiUploadType = a})

-- | Multipart request metadata.
plwtiPayload :: Lens' ProjectsLocationsWorkflowTemplatesInstantiate InstantiateWorkflowTemplateRequest
plwtiPayload
  = lens _plwtiPayload (\ s a -> s{_plwtiPayload = a})

-- | Required. The \"resource name\" of the workflow template, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names of the form
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
plwtiName :: Lens' ProjectsLocationsWorkflowTemplatesInstantiate Text
plwtiName
  = lens _plwtiName (\ s a -> s{_plwtiName = a})

-- | JSONP
plwtiCallback :: Lens' ProjectsLocationsWorkflowTemplatesInstantiate (Maybe Text)
plwtiCallback
  = lens _plwtiCallback
      (\ s a -> s{_plwtiCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkflowTemplatesInstantiate
         where
        type Rs ProjectsLocationsWorkflowTemplatesInstantiate
             = Operation
        type Scopes
               ProjectsLocationsWorkflowTemplatesInstantiate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesInstantiate'{..}
          = go _plwtiName _plwtiXgafv _plwtiUploadProtocol
              _plwtiAccessToken
              _plwtiUploadType
              _plwtiCallback
              (Just AltJSON)
              _plwtiPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkflowTemplatesInstantiateResource)
                      mempty
