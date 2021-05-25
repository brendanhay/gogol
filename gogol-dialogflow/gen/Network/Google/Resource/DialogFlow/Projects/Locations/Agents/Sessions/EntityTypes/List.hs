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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all session entity types in the specified session.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.entityTypes.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsSessionsEntityTypesListResource

    -- * Creating a Request
    , projectsLocationsAgentsSessionsEntityTypesList
    , ProjectsLocationsAgentsSessionsEntityTypesList

    -- * Request Lenses
    , plaSetlParent
    , plaSetlXgafv
    , plaSetlUploadProtocol
    , plaSetlAccessToken
    , plaSetlUploadType
    , plaSetlPageToken
    , plaSetlPageSize
    , plaSetlCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.entityTypes.list@ method which the
-- 'ProjectsLocationsAgentsSessionsEntityTypesList' request conforms to.
type ProjectsLocationsAgentsSessionsEntityTypesListResource
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
-- /See:/ 'projectsLocationsAgentsSessionsEntityTypesList' smart constructor.
data ProjectsLocationsAgentsSessionsEntityTypesList =
  ProjectsLocationsAgentsSessionsEntityTypesList'
    { _plaSetlParent :: !Text
    , _plaSetlXgafv :: !(Maybe Xgafv)
    , _plaSetlUploadProtocol :: !(Maybe Text)
    , _plaSetlAccessToken :: !(Maybe Text)
    , _plaSetlUploadType :: !(Maybe Text)
    , _plaSetlPageToken :: !(Maybe Text)
    , _plaSetlPageSize :: !(Maybe (Textual Int32))
    , _plaSetlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsSessionsEntityTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaSetlParent'
--
-- * 'plaSetlXgafv'
--
-- * 'plaSetlUploadProtocol'
--
-- * 'plaSetlAccessToken'
--
-- * 'plaSetlUploadType'
--
-- * 'plaSetlPageToken'
--
-- * 'plaSetlPageSize'
--
-- * 'plaSetlCallback'
projectsLocationsAgentsSessionsEntityTypesList
    :: Text -- ^ 'plaSetlParent'
    -> ProjectsLocationsAgentsSessionsEntityTypesList
projectsLocationsAgentsSessionsEntityTypesList pPlaSetlParent_ =
  ProjectsLocationsAgentsSessionsEntityTypesList'
    { _plaSetlParent = pPlaSetlParent_
    , _plaSetlXgafv = Nothing
    , _plaSetlUploadProtocol = Nothing
    , _plaSetlAccessToken = Nothing
    , _plaSetlUploadType = Nothing
    , _plaSetlPageToken = Nothing
    , _plaSetlPageSize = Nothing
    , _plaSetlCallback = Nothing
    }


-- | Required. The session to list all session entity types from. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\`. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
plaSetlParent :: Lens' ProjectsLocationsAgentsSessionsEntityTypesList Text
plaSetlParent
  = lens _plaSetlParent
      (\ s a -> s{_plaSetlParent = a})

-- | V1 error format.
plaSetlXgafv :: Lens' ProjectsLocationsAgentsSessionsEntityTypesList (Maybe Xgafv)
plaSetlXgafv
  = lens _plaSetlXgafv (\ s a -> s{_plaSetlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaSetlUploadProtocol :: Lens' ProjectsLocationsAgentsSessionsEntityTypesList (Maybe Text)
plaSetlUploadProtocol
  = lens _plaSetlUploadProtocol
      (\ s a -> s{_plaSetlUploadProtocol = a})

-- | OAuth access token.
plaSetlAccessToken :: Lens' ProjectsLocationsAgentsSessionsEntityTypesList (Maybe Text)
plaSetlAccessToken
  = lens _plaSetlAccessToken
      (\ s a -> s{_plaSetlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaSetlUploadType :: Lens' ProjectsLocationsAgentsSessionsEntityTypesList (Maybe Text)
plaSetlUploadType
  = lens _plaSetlUploadType
      (\ s a -> s{_plaSetlUploadType = a})

-- | The next_page_token value returned from a previous list request.
plaSetlPageToken :: Lens' ProjectsLocationsAgentsSessionsEntityTypesList (Maybe Text)
plaSetlPageToken
  = lens _plaSetlPageToken
      (\ s a -> s{_plaSetlPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plaSetlPageSize :: Lens' ProjectsLocationsAgentsSessionsEntityTypesList (Maybe Int32)
plaSetlPageSize
  = lens _plaSetlPageSize
      (\ s a -> s{_plaSetlPageSize = a})
      . mapping _Coerce

-- | JSONP
plaSetlCallback :: Lens' ProjectsLocationsAgentsSessionsEntityTypesList (Maybe Text)
plaSetlCallback
  = lens _plaSetlCallback
      (\ s a -> s{_plaSetlCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsSessionsEntityTypesList
         where
        type Rs
               ProjectsLocationsAgentsSessionsEntityTypesList
             =
             GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
        type Scopes
               ProjectsLocationsAgentsSessionsEntityTypesList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsSessionsEntityTypesList'{..}
          = go _plaSetlParent _plaSetlXgafv
              _plaSetlUploadProtocol
              _plaSetlAccessToken
              _plaSetlUploadType
              _plaSetlPageToken
              _plaSetlPageSize
              _plaSetlCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsSessionsEntityTypesListResource)
                      mempty
