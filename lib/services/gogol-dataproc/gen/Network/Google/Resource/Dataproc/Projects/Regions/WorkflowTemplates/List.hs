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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists workflows that match the specified filter in the request.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.list@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.List
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesListResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesList
    , ProjectsRegionsWorkflowTemplatesList

    -- * Request Lenses
    , prwtlParent
    , prwtlXgafv
    , prwtlUploadProtocol
    , prwtlAccessToken
    , prwtlUploadType
    , prwtlPageToken
    , prwtlPageSize
    , prwtlCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.list@ method which the
-- 'ProjectsRegionsWorkflowTemplatesList' request conforms to.
type ProjectsRegionsWorkflowTemplatesListResource =
     "v1" :>
       Capture "parent" Text :>
         "workflowTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListWorkflowTemplatesResponse

-- | Lists workflows that match the specified filter in the request.
--
-- /See:/ 'projectsRegionsWorkflowTemplatesList' smart constructor.
data ProjectsRegionsWorkflowTemplatesList =
  ProjectsRegionsWorkflowTemplatesList'
    { _prwtlParent :: !Text
    , _prwtlXgafv :: !(Maybe Xgafv)
    , _prwtlUploadProtocol :: !(Maybe Text)
    , _prwtlAccessToken :: !(Maybe Text)
    , _prwtlUploadType :: !(Maybe Text)
    , _prwtlPageToken :: !(Maybe Text)
    , _prwtlPageSize :: !(Maybe (Textual Int32))
    , _prwtlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtlParent'
--
-- * 'prwtlXgafv'
--
-- * 'prwtlUploadProtocol'
--
-- * 'prwtlAccessToken'
--
-- * 'prwtlUploadType'
--
-- * 'prwtlPageToken'
--
-- * 'prwtlPageSize'
--
-- * 'prwtlCallback'
projectsRegionsWorkflowTemplatesList
    :: Text -- ^ 'prwtlParent'
    -> ProjectsRegionsWorkflowTemplatesList
projectsRegionsWorkflowTemplatesList pPrwtlParent_ =
  ProjectsRegionsWorkflowTemplatesList'
    { _prwtlParent = pPrwtlParent_
    , _prwtlXgafv = Nothing
    , _prwtlUploadProtocol = Nothing
    , _prwtlAccessToken = Nothing
    , _prwtlUploadType = Nothing
    , _prwtlPageToken = Nothing
    , _prwtlPageSize = Nothing
    , _prwtlCallback = Nothing
    }


-- | Required. The resource name of the region or location, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.workflowTemplates,list, the resource name of the region
-- has the following format: projects\/{project_id}\/regions\/{region} For
-- projects.locations.workflowTemplates.list, the resource name of the
-- location has the following format:
-- projects\/{project_id}\/locations\/{location}
prwtlParent :: Lens' ProjectsRegionsWorkflowTemplatesList Text
prwtlParent
  = lens _prwtlParent (\ s a -> s{_prwtlParent = a})

-- | V1 error format.
prwtlXgafv :: Lens' ProjectsRegionsWorkflowTemplatesList (Maybe Xgafv)
prwtlXgafv
  = lens _prwtlXgafv (\ s a -> s{_prwtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtlUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesList (Maybe Text)
prwtlUploadProtocol
  = lens _prwtlUploadProtocol
      (\ s a -> s{_prwtlUploadProtocol = a})

-- | OAuth access token.
prwtlAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesList (Maybe Text)
prwtlAccessToken
  = lens _prwtlAccessToken
      (\ s a -> s{_prwtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtlUploadType :: Lens' ProjectsRegionsWorkflowTemplatesList (Maybe Text)
prwtlUploadType
  = lens _prwtlUploadType
      (\ s a -> s{_prwtlUploadType = a})

-- | Optional. The page token, returned by a previous call, to request the
-- next page of results.
prwtlPageToken :: Lens' ProjectsRegionsWorkflowTemplatesList (Maybe Text)
prwtlPageToken
  = lens _prwtlPageToken
      (\ s a -> s{_prwtlPageToken = a})

-- | Optional. The maximum number of results to return in each response.
prwtlPageSize :: Lens' ProjectsRegionsWorkflowTemplatesList (Maybe Int32)
prwtlPageSize
  = lens _prwtlPageSize
      (\ s a -> s{_prwtlPageSize = a})
      . mapping _Coerce

-- | JSONP
prwtlCallback :: Lens' ProjectsRegionsWorkflowTemplatesList (Maybe Text)
prwtlCallback
  = lens _prwtlCallback
      (\ s a -> s{_prwtlCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesList
         where
        type Rs ProjectsRegionsWorkflowTemplatesList =
             ListWorkflowTemplatesResponse
        type Scopes ProjectsRegionsWorkflowTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesList'{..}
          = go _prwtlParent _prwtlXgafv _prwtlUploadProtocol
              _prwtlAccessToken
              _prwtlUploadType
              _prwtlPageToken
              _prwtlPageSize
              _prwtlCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsWorkflowTemplatesListResource)
                      mempty
