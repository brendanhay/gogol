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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists workflows that match the specified filter in the request.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.list@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.List
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesListResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesList
    , ProjectsLocationsWorkflowTemplatesList

    -- * Request Lenses
    , plwtlParent
    , plwtlXgafv
    , plwtlUploadProtocol
    , plwtlAccessToken
    , plwtlUploadType
    , plwtlPageToken
    , plwtlPageSize
    , plwtlCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.list@ method which the
-- 'ProjectsLocationsWorkflowTemplatesList' request conforms to.
type ProjectsLocationsWorkflowTemplatesListResource =
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
-- /See:/ 'projectsLocationsWorkflowTemplatesList' smart constructor.
data ProjectsLocationsWorkflowTemplatesList =
  ProjectsLocationsWorkflowTemplatesList'
    { _plwtlParent         :: !Text
    , _plwtlXgafv          :: !(Maybe Xgafv)
    , _plwtlUploadProtocol :: !(Maybe Text)
    , _plwtlAccessToken    :: !(Maybe Text)
    , _plwtlUploadType     :: !(Maybe Text)
    , _plwtlPageToken      :: !(Maybe Text)
    , _plwtlPageSize       :: !(Maybe (Textual Int32))
    , _plwtlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtlParent'
--
-- * 'plwtlXgafv'
--
-- * 'plwtlUploadProtocol'
--
-- * 'plwtlAccessToken'
--
-- * 'plwtlUploadType'
--
-- * 'plwtlPageToken'
--
-- * 'plwtlPageSize'
--
-- * 'plwtlCallback'
projectsLocationsWorkflowTemplatesList
    :: Text -- ^ 'plwtlParent'
    -> ProjectsLocationsWorkflowTemplatesList
projectsLocationsWorkflowTemplatesList pPlwtlParent_ =
  ProjectsLocationsWorkflowTemplatesList'
    { _plwtlParent = pPlwtlParent_
    , _plwtlXgafv = Nothing
    , _plwtlUploadProtocol = Nothing
    , _plwtlAccessToken = Nothing
    , _plwtlUploadType = Nothing
    , _plwtlPageToken = Nothing
    , _plwtlPageSize = Nothing
    , _plwtlCallback = Nothing
    }

-- | Required. The \"resource name\" of the region, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names of the form
-- projects\/{project_id}\/regions\/{region}
plwtlParent :: Lens' ProjectsLocationsWorkflowTemplatesList Text
plwtlParent
  = lens _plwtlParent (\ s a -> s{_plwtlParent = a})

-- | V1 error format.
plwtlXgafv :: Lens' ProjectsLocationsWorkflowTemplatesList (Maybe Xgafv)
plwtlXgafv
  = lens _plwtlXgafv (\ s a -> s{_plwtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtlUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesList (Maybe Text)
plwtlUploadProtocol
  = lens _plwtlUploadProtocol
      (\ s a -> s{_plwtlUploadProtocol = a})

-- | OAuth access token.
plwtlAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesList (Maybe Text)
plwtlAccessToken
  = lens _plwtlAccessToken
      (\ s a -> s{_plwtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtlUploadType :: Lens' ProjectsLocationsWorkflowTemplatesList (Maybe Text)
plwtlUploadType
  = lens _plwtlUploadType
      (\ s a -> s{_plwtlUploadType = a})

-- | Optional. The page token, returned by a previous call, to request the
-- next page of results.
plwtlPageToken :: Lens' ProjectsLocationsWorkflowTemplatesList (Maybe Text)
plwtlPageToken
  = lens _plwtlPageToken
      (\ s a -> s{_plwtlPageToken = a})

-- | Optional. The maximum number of results to return in each response.
plwtlPageSize :: Lens' ProjectsLocationsWorkflowTemplatesList (Maybe Int32)
plwtlPageSize
  = lens _plwtlPageSize
      (\ s a -> s{_plwtlPageSize = a})
      . mapping _Coerce

-- | JSONP
plwtlCallback :: Lens' ProjectsLocationsWorkflowTemplatesList (Maybe Text)
plwtlCallback
  = lens _plwtlCallback
      (\ s a -> s{_plwtlCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkflowTemplatesList
         where
        type Rs ProjectsLocationsWorkflowTemplatesList =
             ListWorkflowTemplatesResponse
        type Scopes ProjectsLocationsWorkflowTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesList'{..}
          = go _plwtlParent _plwtlXgafv _plwtlUploadProtocol
              _plwtlAccessToken
              _plwtlUploadType
              _plwtlPageToken
              _plwtlPageSize
              _plwtlCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsWorkflowTemplatesListResource)
                      mempty
