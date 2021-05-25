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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.InstantiateInline
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Instantiates a template and begins execution.This method is equivalent
-- to executing the sequence CreateWorkflowTemplate,
-- InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned
-- Operation can be used to track execution of workflow by polling
-- operations.get. The Operation will complete when entire workflow is
-- finished.The running workflow can be aborted via operations.cancel. This
-- will cause any inflight jobs to be cancelled and workflow-owned clusters
-- to be deleted.The Operation.metadata will be WorkflowMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#workflowmetadata).
-- Also see Using WorkflowMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/debugging#using_workflowmetadata).On
-- successful completion, Operation.response will be Empty.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.instantiateInline@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.InstantiateInline
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesInstantiateInlineResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesInstantiateInline
    , ProjectsRegionsWorkflowTemplatesInstantiateInline

    -- * Request Lenses
    , prwtiiParent
    , prwtiiXgafv
    , prwtiiRequestId
    , prwtiiUploadProtocol
    , prwtiiAccessToken
    , prwtiiUploadType
    , prwtiiPayload
    , prwtiiCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.instantiateInline@ method which the
-- 'ProjectsRegionsWorkflowTemplatesInstantiateInline' request conforms to.
type ProjectsRegionsWorkflowTemplatesInstantiateInlineResource
     =
     "v1" :>
       Capture "parent" Text :>
         "workflowTemplates:instantiateInline" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "requestId" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] WorkflowTemplate :>
                           Post '[JSON] Operation

-- | Instantiates a template and begins execution.This method is equivalent
-- to executing the sequence CreateWorkflowTemplate,
-- InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned
-- Operation can be used to track execution of workflow by polling
-- operations.get. The Operation will complete when entire workflow is
-- finished.The running workflow can be aborted via operations.cancel. This
-- will cause any inflight jobs to be cancelled and workflow-owned clusters
-- to be deleted.The Operation.metadata will be WorkflowMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#workflowmetadata).
-- Also see Using WorkflowMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/debugging#using_workflowmetadata).On
-- successful completion, Operation.response will be Empty.
--
-- /See:/ 'projectsRegionsWorkflowTemplatesInstantiateInline' smart constructor.
data ProjectsRegionsWorkflowTemplatesInstantiateInline =
  ProjectsRegionsWorkflowTemplatesInstantiateInline'
    { _prwtiiParent :: !Text
    , _prwtiiXgafv :: !(Maybe Xgafv)
    , _prwtiiRequestId :: !(Maybe Text)
    , _prwtiiUploadProtocol :: !(Maybe Text)
    , _prwtiiAccessToken :: !(Maybe Text)
    , _prwtiiUploadType :: !(Maybe Text)
    , _prwtiiPayload :: !WorkflowTemplate
    , _prwtiiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesInstantiateInline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtiiParent'
--
-- * 'prwtiiXgafv'
--
-- * 'prwtiiRequestId'
--
-- * 'prwtiiUploadProtocol'
--
-- * 'prwtiiAccessToken'
--
-- * 'prwtiiUploadType'
--
-- * 'prwtiiPayload'
--
-- * 'prwtiiCallback'
projectsRegionsWorkflowTemplatesInstantiateInline
    :: Text -- ^ 'prwtiiParent'
    -> WorkflowTemplate -- ^ 'prwtiiPayload'
    -> ProjectsRegionsWorkflowTemplatesInstantiateInline
projectsRegionsWorkflowTemplatesInstantiateInline pPrwtiiParent_ pPrwtiiPayload_ =
  ProjectsRegionsWorkflowTemplatesInstantiateInline'
    { _prwtiiParent = pPrwtiiParent_
    , _prwtiiXgafv = Nothing
    , _prwtiiRequestId = Nothing
    , _prwtiiUploadProtocol = Nothing
    , _prwtiiAccessToken = Nothing
    , _prwtiiUploadType = Nothing
    , _prwtiiPayload = pPrwtiiPayload_
    , _prwtiiCallback = Nothing
    }


-- | Required. The resource name of the region or location, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.workflowTemplates,instantiateinline, the resource name
-- of the region has the following format:
-- projects\/{project_id}\/regions\/{region} For
-- projects.locations.workflowTemplates.instantiateinline, the resource
-- name of the location has the following format:
-- projects\/{project_id}\/locations\/{location}
prwtiiParent :: Lens' ProjectsRegionsWorkflowTemplatesInstantiateInline Text
prwtiiParent
  = lens _prwtiiParent (\ s a -> s{_prwtiiParent = a})

-- | V1 error format.
prwtiiXgafv :: Lens' ProjectsRegionsWorkflowTemplatesInstantiateInline (Maybe Xgafv)
prwtiiXgafv
  = lens _prwtiiXgafv (\ s a -> s{_prwtiiXgafv = a})

-- | Optional. A tag that prevents multiple concurrent workflow instances
-- with the same tag from running. This mitigates risk of concurrent
-- instances started due to retries.It is recommended to always set this
-- value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The
-- tag must contain only letters (a-z, A-Z), numbers (0-9), underscores
-- (_), and hyphens (-). The maximum length is 40 characters.
prwtiiRequestId :: Lens' ProjectsRegionsWorkflowTemplatesInstantiateInline (Maybe Text)
prwtiiRequestId
  = lens _prwtiiRequestId
      (\ s a -> s{_prwtiiRequestId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtiiUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesInstantiateInline (Maybe Text)
prwtiiUploadProtocol
  = lens _prwtiiUploadProtocol
      (\ s a -> s{_prwtiiUploadProtocol = a})

-- | OAuth access token.
prwtiiAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesInstantiateInline (Maybe Text)
prwtiiAccessToken
  = lens _prwtiiAccessToken
      (\ s a -> s{_prwtiiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtiiUploadType :: Lens' ProjectsRegionsWorkflowTemplatesInstantiateInline (Maybe Text)
prwtiiUploadType
  = lens _prwtiiUploadType
      (\ s a -> s{_prwtiiUploadType = a})

-- | Multipart request metadata.
prwtiiPayload :: Lens' ProjectsRegionsWorkflowTemplatesInstantiateInline WorkflowTemplate
prwtiiPayload
  = lens _prwtiiPayload
      (\ s a -> s{_prwtiiPayload = a})

-- | JSONP
prwtiiCallback :: Lens' ProjectsRegionsWorkflowTemplatesInstantiateInline (Maybe Text)
prwtiiCallback
  = lens _prwtiiCallback
      (\ s a -> s{_prwtiiCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesInstantiateInline
         where
        type Rs
               ProjectsRegionsWorkflowTemplatesInstantiateInline
             = Operation
        type Scopes
               ProjectsRegionsWorkflowTemplatesInstantiateInline
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesInstantiateInline'{..}
          = go _prwtiiParent _prwtiiXgafv _prwtiiRequestId
              _prwtiiUploadProtocol
              _prwtiiAccessToken
              _prwtiiUploadType
              _prwtiiCallback
              (Just AltJSON)
              _prwtiiPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsWorkflowTemplatesInstantiateInlineResource)
                      mempty
