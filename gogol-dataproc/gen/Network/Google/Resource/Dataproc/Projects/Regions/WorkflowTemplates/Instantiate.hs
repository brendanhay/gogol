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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Instantiate
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
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.instantiate@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Instantiate
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesInstantiateResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesInstantiate
    , ProjectsRegionsWorkflowTemplatesInstantiate

    -- * Request Lenses
    , prwtiXgafv
    , prwtiUploadProtocol
    , prwtiAccessToken
    , prwtiUploadType
    , prwtiPayload
    , prwtiName
    , prwtiCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.instantiate@ method which the
-- 'ProjectsRegionsWorkflowTemplatesInstantiate' request conforms to.
type ProjectsRegionsWorkflowTemplatesInstantiateResource
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
-- /See:/ 'projectsRegionsWorkflowTemplatesInstantiate' smart constructor.
data ProjectsRegionsWorkflowTemplatesInstantiate =
  ProjectsRegionsWorkflowTemplatesInstantiate'
    { _prwtiXgafv          :: !(Maybe Xgafv)
    , _prwtiUploadProtocol :: !(Maybe Text)
    , _prwtiAccessToken    :: !(Maybe Text)
    , _prwtiUploadType     :: !(Maybe Text)
    , _prwtiPayload        :: !InstantiateWorkflowTemplateRequest
    , _prwtiName           :: !Text
    , _prwtiCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesInstantiate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtiXgafv'
--
-- * 'prwtiUploadProtocol'
--
-- * 'prwtiAccessToken'
--
-- * 'prwtiUploadType'
--
-- * 'prwtiPayload'
--
-- * 'prwtiName'
--
-- * 'prwtiCallback'
projectsRegionsWorkflowTemplatesInstantiate
    :: InstantiateWorkflowTemplateRequest -- ^ 'prwtiPayload'
    -> Text -- ^ 'prwtiName'
    -> ProjectsRegionsWorkflowTemplatesInstantiate
projectsRegionsWorkflowTemplatesInstantiate pPrwtiPayload_ pPrwtiName_ =
  ProjectsRegionsWorkflowTemplatesInstantiate'
    { _prwtiXgafv = Nothing
    , _prwtiUploadProtocol = Nothing
    , _prwtiAccessToken = Nothing
    , _prwtiUploadType = Nothing
    , _prwtiPayload = pPrwtiPayload_
    , _prwtiName = pPrwtiName_
    , _prwtiCallback = Nothing
    }

-- | V1 error format.
prwtiXgafv :: Lens' ProjectsRegionsWorkflowTemplatesInstantiate (Maybe Xgafv)
prwtiXgafv
  = lens _prwtiXgafv (\ s a -> s{_prwtiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtiUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesInstantiate (Maybe Text)
prwtiUploadProtocol
  = lens _prwtiUploadProtocol
      (\ s a -> s{_prwtiUploadProtocol = a})

-- | OAuth access token.
prwtiAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesInstantiate (Maybe Text)
prwtiAccessToken
  = lens _prwtiAccessToken
      (\ s a -> s{_prwtiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtiUploadType :: Lens' ProjectsRegionsWorkflowTemplatesInstantiate (Maybe Text)
prwtiUploadType
  = lens _prwtiUploadType
      (\ s a -> s{_prwtiUploadType = a})

-- | Multipart request metadata.
prwtiPayload :: Lens' ProjectsRegionsWorkflowTemplatesInstantiate InstantiateWorkflowTemplateRequest
prwtiPayload
  = lens _prwtiPayload (\ s a -> s{_prwtiPayload = a})

-- | Required. The \"resource name\" of the workflow template, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names of the form
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
prwtiName :: Lens' ProjectsRegionsWorkflowTemplatesInstantiate Text
prwtiName
  = lens _prwtiName (\ s a -> s{_prwtiName = a})

-- | JSONP
prwtiCallback :: Lens' ProjectsRegionsWorkflowTemplatesInstantiate (Maybe Text)
prwtiCallback
  = lens _prwtiCallback
      (\ s a -> s{_prwtiCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesInstantiate
         where
        type Rs ProjectsRegionsWorkflowTemplatesInstantiate =
             Operation
        type Scopes
               ProjectsRegionsWorkflowTemplatesInstantiate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesInstantiate'{..}
          = go _prwtiName _prwtiXgafv _prwtiUploadProtocol
              _prwtiAccessToken
              _prwtiUploadType
              _prwtiCallback
              (Just AltJSON)
              _prwtiPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsWorkflowTemplatesInstantiateResource)
                      mempty
