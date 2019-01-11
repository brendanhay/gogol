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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.InstantiateInline
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
-- to be deleted.The Operation.metadata will be WorkflowMetadata.On
-- successful completion, Operation.response will be Empty.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.instantiateInline@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.InstantiateInline
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesInstantiateInlineResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesInstantiateInline
    , ProjectsLocationsWorkflowTemplatesInstantiateInline

    -- * Request Lenses
    , plwtiiParent
    , plwtiiXgafv
    , plwtiiRequestId
    , plwtiiUploadProtocol
    , plwtiiAccessToken
    , plwtiiUploadType
    , plwtiiPayload
    , plwtiiCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.instantiateInline@ method which the
-- 'ProjectsLocationsWorkflowTemplatesInstantiateInline' request conforms to.
type ProjectsLocationsWorkflowTemplatesInstantiateInlineResource
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
-- to be deleted.The Operation.metadata will be WorkflowMetadata.On
-- successful completion, Operation.response will be Empty.
--
-- /See:/ 'projectsLocationsWorkflowTemplatesInstantiateInline' smart constructor.
data ProjectsLocationsWorkflowTemplatesInstantiateInline = ProjectsLocationsWorkflowTemplatesInstantiateInline'
    { _plwtiiParent         :: !Text
    , _plwtiiXgafv          :: !(Maybe Xgafv)
    , _plwtiiRequestId      :: !(Maybe Text)
    , _plwtiiUploadProtocol :: !(Maybe Text)
    , _plwtiiAccessToken    :: !(Maybe Text)
    , _plwtiiUploadType     :: !(Maybe Text)
    , _plwtiiPayload        :: !WorkflowTemplate
    , _plwtiiCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesInstantiateInline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtiiParent'
--
-- * 'plwtiiXgafv'
--
-- * 'plwtiiRequestId'
--
-- * 'plwtiiUploadProtocol'
--
-- * 'plwtiiAccessToken'
--
-- * 'plwtiiUploadType'
--
-- * 'plwtiiPayload'
--
-- * 'plwtiiCallback'
projectsLocationsWorkflowTemplatesInstantiateInline
    :: Text -- ^ 'plwtiiParent'
    -> WorkflowTemplate -- ^ 'plwtiiPayload'
    -> ProjectsLocationsWorkflowTemplatesInstantiateInline
projectsLocationsWorkflowTemplatesInstantiateInline pPlwtiiParent_ pPlwtiiPayload_ =
    ProjectsLocationsWorkflowTemplatesInstantiateInline'
    { _plwtiiParent = pPlwtiiParent_
    , _plwtiiXgafv = Nothing
    , _plwtiiRequestId = Nothing
    , _plwtiiUploadProtocol = Nothing
    , _plwtiiAccessToken = Nothing
    , _plwtiiUploadType = Nothing
    , _plwtiiPayload = pPlwtiiPayload_
    , _plwtiiCallback = Nothing
    }

-- | Required. The \"resource name\" of the workflow template region, as
-- described in https:\/\/cloud.google.com\/apis\/design\/resource_names of
-- the form projects\/{project_id}\/regions\/{region}
plwtiiParent :: Lens' ProjectsLocationsWorkflowTemplatesInstantiateInline Text
plwtiiParent
  = lens _plwtiiParent (\ s a -> s{_plwtiiParent = a})

-- | V1 error format.
plwtiiXgafv :: Lens' ProjectsLocationsWorkflowTemplatesInstantiateInline (Maybe Xgafv)
plwtiiXgafv
  = lens _plwtiiXgafv (\ s a -> s{_plwtiiXgafv = a})

-- | Optional. A tag that prevents multiple concurrent workflow instances
-- with the same tag from running. This mitigates risk of concurrent
-- instances started due to retries.It is recommended to always set this
-- value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The
-- tag must contain only letters (a-z, A-Z), numbers (0-9), underscores
-- (_), and hyphens (-). The maximum length is 40 characters.
plwtiiRequestId :: Lens' ProjectsLocationsWorkflowTemplatesInstantiateInline (Maybe Text)
plwtiiRequestId
  = lens _plwtiiRequestId
      (\ s a -> s{_plwtiiRequestId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtiiUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesInstantiateInline (Maybe Text)
plwtiiUploadProtocol
  = lens _plwtiiUploadProtocol
      (\ s a -> s{_plwtiiUploadProtocol = a})

-- | OAuth access token.
plwtiiAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesInstantiateInline (Maybe Text)
plwtiiAccessToken
  = lens _plwtiiAccessToken
      (\ s a -> s{_plwtiiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtiiUploadType :: Lens' ProjectsLocationsWorkflowTemplatesInstantiateInline (Maybe Text)
plwtiiUploadType
  = lens _plwtiiUploadType
      (\ s a -> s{_plwtiiUploadType = a})

-- | Multipart request metadata.
plwtiiPayload :: Lens' ProjectsLocationsWorkflowTemplatesInstantiateInline WorkflowTemplate
plwtiiPayload
  = lens _plwtiiPayload
      (\ s a -> s{_plwtiiPayload = a})

-- | JSONP
plwtiiCallback :: Lens' ProjectsLocationsWorkflowTemplatesInstantiateInline (Maybe Text)
plwtiiCallback
  = lens _plwtiiCallback
      (\ s a -> s{_plwtiiCallback = a})

instance GoogleRequest
         ProjectsLocationsWorkflowTemplatesInstantiateInline
         where
        type Rs
               ProjectsLocationsWorkflowTemplatesInstantiateInline
             = Operation
        type Scopes
               ProjectsLocationsWorkflowTemplatesInstantiateInline
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesInstantiateInline'{..}
          = go _plwtiiParent _plwtiiXgafv _plwtiiRequestId
              _plwtiiUploadProtocol
              _plwtiiAccessToken
              _plwtiiUploadType
              _plwtiiCallback
              (Just AltJSON)
              _plwtiiPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkflowTemplatesInstantiateInlineResource)
                      mempty
