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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (replaces) workflow template. The updated template must contain
-- version that matches the current server version.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.update@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Update
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesUpdateResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesUpdate
    , ProjectsLocationsWorkflowTemplatesUpdate

    -- * Request Lenses
    , plwtuXgafv
    , plwtuUploadProtocol
    , plwtuAccessToken
    , plwtuUploadType
    , plwtuPayload
    , plwtuName
    , plwtuCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.update@ method which the
-- 'ProjectsLocationsWorkflowTemplatesUpdate' request conforms to.
type ProjectsLocationsWorkflowTemplatesUpdateResource
     =
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
-- /See:/ 'projectsLocationsWorkflowTemplatesUpdate' smart constructor.
data ProjectsLocationsWorkflowTemplatesUpdate = ProjectsLocationsWorkflowTemplatesUpdate'
    { _plwtuXgafv          :: !(Maybe Xgafv)
    , _plwtuUploadProtocol :: !(Maybe Text)
    , _plwtuAccessToken    :: !(Maybe Text)
    , _plwtuUploadType     :: !(Maybe Text)
    , _plwtuPayload        :: !WorkflowTemplate
    , _plwtuName           :: !Text
    , _plwtuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtuXgafv'
--
-- * 'plwtuUploadProtocol'
--
-- * 'plwtuAccessToken'
--
-- * 'plwtuUploadType'
--
-- * 'plwtuPayload'
--
-- * 'plwtuName'
--
-- * 'plwtuCallback'
projectsLocationsWorkflowTemplatesUpdate
    :: WorkflowTemplate -- ^ 'plwtuPayload'
    -> Text -- ^ 'plwtuName'
    -> ProjectsLocationsWorkflowTemplatesUpdate
projectsLocationsWorkflowTemplatesUpdate pPlwtuPayload_ pPlwtuName_ =
    ProjectsLocationsWorkflowTemplatesUpdate'
    { _plwtuXgafv = Nothing
    , _plwtuUploadProtocol = Nothing
    , _plwtuAccessToken = Nothing
    , _plwtuUploadType = Nothing
    , _plwtuPayload = pPlwtuPayload_
    , _plwtuName = pPlwtuName_
    , _plwtuCallback = Nothing
    }

-- | V1 error format.
plwtuXgafv :: Lens' ProjectsLocationsWorkflowTemplatesUpdate (Maybe Xgafv)
plwtuXgafv
  = lens _plwtuXgafv (\ s a -> s{_plwtuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtuUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesUpdate (Maybe Text)
plwtuUploadProtocol
  = lens _plwtuUploadProtocol
      (\ s a -> s{_plwtuUploadProtocol = a})

-- | OAuth access token.
plwtuAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesUpdate (Maybe Text)
plwtuAccessToken
  = lens _plwtuAccessToken
      (\ s a -> s{_plwtuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtuUploadType :: Lens' ProjectsLocationsWorkflowTemplatesUpdate (Maybe Text)
plwtuUploadType
  = lens _plwtuUploadType
      (\ s a -> s{_plwtuUploadType = a})

-- | Multipart request metadata.
plwtuPayload :: Lens' ProjectsLocationsWorkflowTemplatesUpdate WorkflowTemplate
plwtuPayload
  = lens _plwtuPayload (\ s a -> s{_plwtuPayload = a})

-- | Output only. The \"resource name\" of the template, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names of the form
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
plwtuName :: Lens' ProjectsLocationsWorkflowTemplatesUpdate Text
plwtuName
  = lens _plwtuName (\ s a -> s{_plwtuName = a})

-- | JSONP
plwtuCallback :: Lens' ProjectsLocationsWorkflowTemplatesUpdate (Maybe Text)
plwtuCallback
  = lens _plwtuCallback
      (\ s a -> s{_plwtuCallback = a})

instance GoogleRequest
         ProjectsLocationsWorkflowTemplatesUpdate where
        type Rs ProjectsLocationsWorkflowTemplatesUpdate =
             WorkflowTemplate
        type Scopes ProjectsLocationsWorkflowTemplatesUpdate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesUpdate'{..}
          = go _plwtuName _plwtuXgafv _plwtuUploadProtocol
              _plwtuAccessToken
              _plwtuUploadType
              _plwtuCallback
              (Just AltJSON)
              _plwtuPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkflowTemplatesUpdateResource)
                      mempty
