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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all session entity types in the specified session.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesListResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsSessionsEntityTypesList
    , ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList

    -- * Request Lenses
    , plaesetlParent
    , plaesetlXgafv
    , plaesetlUploadProtocol
    , plaesetlAccessToken
    , plaesetlUploadType
    , plaesetlPageToken
    , plaesetlPageSize
    , plaesetlCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.list@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList' request conforms to.
type ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesListResource
     =
     "v3" :>
       Capture "parent" Text :>
         "entityTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse

-- | Returns the list of all session entity types in the specified session.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsSessionsEntityTypesList' smart constructor.
data ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList'
    { _plaesetlParent :: !Text
    , _plaesetlXgafv :: !(Maybe Xgafv)
    , _plaesetlUploadProtocol :: !(Maybe Text)
    , _plaesetlAccessToken :: !(Maybe Text)
    , _plaesetlUploadType :: !(Maybe Text)
    , _plaesetlPageToken :: !(Maybe Text)
    , _plaesetlPageSize :: !(Maybe (Textual Int32))
    , _plaesetlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaesetlParent'
--
-- * 'plaesetlXgafv'
--
-- * 'plaesetlUploadProtocol'
--
-- * 'plaesetlAccessToken'
--
-- * 'plaesetlUploadType'
--
-- * 'plaesetlPageToken'
--
-- * 'plaesetlPageSize'
--
-- * 'plaesetlCallback'
projectsLocationsAgentsEnvironmentsSessionsEntityTypesList
    :: Text -- ^ 'plaesetlParent'
    -> ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList
projectsLocationsAgentsEnvironmentsSessionsEntityTypesList pPlaesetlParent_ =
  ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList'
    { _plaesetlParent = pPlaesetlParent_
    , _plaesetlXgafv = Nothing
    , _plaesetlUploadProtocol = Nothing
    , _plaesetlAccessToken = Nothing
    , _plaesetlUploadType = Nothing
    , _plaesetlPageToken = Nothing
    , _plaesetlPageSize = Nothing
    , _plaesetlCallback = Nothing
    }


-- | Required. The session to list all session entity types from. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaesetlParent :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList Text
plaesetlParent
  = lens _plaesetlParent
      (\ s a -> s{_plaesetlParent = a})

-- | V1 error format.
plaesetlXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList (Maybe Xgafv)
plaesetlXgafv
  = lens _plaesetlXgafv
      (\ s a -> s{_plaesetlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaesetlUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList (Maybe Text)
plaesetlUploadProtocol
  = lens _plaesetlUploadProtocol
      (\ s a -> s{_plaesetlUploadProtocol = a})

-- | OAuth access token.
plaesetlAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList (Maybe Text)
plaesetlAccessToken
  = lens _plaesetlAccessToken
      (\ s a -> s{_plaesetlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaesetlUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList (Maybe Text)
plaesetlUploadType
  = lens _plaesetlUploadType
      (\ s a -> s{_plaesetlUploadType = a})

-- | The next_page_token value returned from a previous list request.
plaesetlPageToken :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList (Maybe Text)
plaesetlPageToken
  = lens _plaesetlPageToken
      (\ s a -> s{_plaesetlPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plaesetlPageSize :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList (Maybe Int32)
plaesetlPageSize
  = lens _plaesetlPageSize
      (\ s a -> s{_plaesetlPageSize = a})
      . mapping _Coerce

-- | JSONP
plaesetlCallback :: Lens' ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList (Maybe Text)
plaesetlCallback
  = lens _plaesetlCallback
      (\ s a -> s{_plaesetlCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList
             =
             GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
        type Scopes
               ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesList'{..}
          = go _plaesetlParent _plaesetlXgafv
              _plaesetlUploadProtocol
              _plaesetlAccessToken
              _plaesetlUploadType
              _plaesetlPageToken
              _plaesetlPageSize
              _plaesetlCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesListResource)
                      mempty
