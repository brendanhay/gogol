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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (replaces) workflow template. The updated template must contain
-- version that matches the current server version.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.update@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Update
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesUpdateResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesUpdate
    , ProjectsRegionsWorkflowTemplatesUpdate

    -- * Request Lenses
    , prwtuXgafv
    , prwtuUploadProtocol
    , prwtuAccessToken
    , prwtuUploadType
    , prwtuPayload
    , prwtuName
    , prwtuCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.update@ method which the
-- 'ProjectsRegionsWorkflowTemplatesUpdate' request conforms to.
type ProjectsRegionsWorkflowTemplatesUpdateResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] WorkflowTemplate :>
                       Put '[JSON] WorkflowTemplate

-- | Updates (replaces) workflow template. The updated template must contain
-- version that matches the current server version.
--
-- /See:/ 'projectsRegionsWorkflowTemplatesUpdate' smart constructor.
data ProjectsRegionsWorkflowTemplatesUpdate =
  ProjectsRegionsWorkflowTemplatesUpdate'
    { _prwtuXgafv :: !(Maybe Xgafv)
    , _prwtuUploadProtocol :: !(Maybe Text)
    , _prwtuAccessToken :: !(Maybe Text)
    , _prwtuUploadType :: !(Maybe Text)
    , _prwtuPayload :: !WorkflowTemplate
    , _prwtuName :: !Text
    , _prwtuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtuXgafv'
--
-- * 'prwtuUploadProtocol'
--
-- * 'prwtuAccessToken'
--
-- * 'prwtuUploadType'
--
-- * 'prwtuPayload'
--
-- * 'prwtuName'
--
-- * 'prwtuCallback'
projectsRegionsWorkflowTemplatesUpdate
    :: WorkflowTemplate -- ^ 'prwtuPayload'
    -> Text -- ^ 'prwtuName'
    -> ProjectsRegionsWorkflowTemplatesUpdate
projectsRegionsWorkflowTemplatesUpdate pPrwtuPayload_ pPrwtuName_ =
  ProjectsRegionsWorkflowTemplatesUpdate'
    { _prwtuXgafv = Nothing
    , _prwtuUploadProtocol = Nothing
    , _prwtuAccessToken = Nothing
    , _prwtuUploadType = Nothing
    , _prwtuPayload = pPrwtuPayload_
    , _prwtuName = pPrwtuName_
    , _prwtuCallback = Nothing
    }


-- | V1 error format.
prwtuXgafv :: Lens' ProjectsRegionsWorkflowTemplatesUpdate (Maybe Xgafv)
prwtuXgafv
  = lens _prwtuXgafv (\ s a -> s{_prwtuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtuUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesUpdate (Maybe Text)
prwtuUploadProtocol
  = lens _prwtuUploadProtocol
      (\ s a -> s{_prwtuUploadProtocol = a})

-- | OAuth access token.
prwtuAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesUpdate (Maybe Text)
prwtuAccessToken
  = lens _prwtuAccessToken
      (\ s a -> s{_prwtuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtuUploadType :: Lens' ProjectsRegionsWorkflowTemplatesUpdate (Maybe Text)
prwtuUploadType
  = lens _prwtuUploadType
      (\ s a -> s{_prwtuUploadType = a})

-- | Multipart request metadata.
prwtuPayload :: Lens' ProjectsRegionsWorkflowTemplatesUpdate WorkflowTemplate
prwtuPayload
  = lens _prwtuPayload (\ s a -> s{_prwtuPayload = a})

-- | Output only. The resource name of the workflow template, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.workflowTemplates, the resource name of the template
-- has the following format:
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
-- For projects.locations.workflowTemplates, the resource name of the
-- template has the following format:
-- projects\/{project_id}\/locations\/{location}\/workflowTemplates\/{template_id}
prwtuName :: Lens' ProjectsRegionsWorkflowTemplatesUpdate Text
prwtuName
  = lens _prwtuName (\ s a -> s{_prwtuName = a})

-- | JSONP
prwtuCallback :: Lens' ProjectsRegionsWorkflowTemplatesUpdate (Maybe Text)
prwtuCallback
  = lens _prwtuCallback
      (\ s a -> s{_prwtuCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesUpdate
         where
        type Rs ProjectsRegionsWorkflowTemplatesUpdate =
             WorkflowTemplate
        type Scopes ProjectsRegionsWorkflowTemplatesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesUpdate'{..}
          = go _prwtuName _prwtuXgafv _prwtuUploadProtocol
              _prwtuAccessToken
              _prwtuUploadType
              _prwtuCallback
              (Just AltJSON)
              _prwtuPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsWorkflowTemplatesUpdateResource)
                      mempty
