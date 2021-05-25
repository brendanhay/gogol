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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.ContinuousTestResults.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches a list of continuous test results for a given environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.continuousTestResults.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.ContinuousTestResults.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsContinuousTestResultsListResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsContinuousTestResultsList
    , ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList

    -- * Request Lenses
    , plaectrlParent
    , plaectrlXgafv
    , plaectrlUploadProtocol
    , plaectrlAccessToken
    , plaectrlUploadType
    , plaectrlPageToken
    , plaectrlPageSize
    , plaectrlCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.continuousTestResults.list@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList' request conforms to.
type ProjectsLocationsAgentsEnvironmentsContinuousTestResultsListResource
     =
     "v3" :>
       Capture "parent" Text :>
         "continuousTestResults" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse

-- | Fetches a list of continuous test results for a given environment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsContinuousTestResultsList' smart constructor.
data ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList =
  ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList'
    { _plaectrlParent :: !Text
    , _plaectrlXgafv :: !(Maybe Xgafv)
    , _plaectrlUploadProtocol :: !(Maybe Text)
    , _plaectrlAccessToken :: !(Maybe Text)
    , _plaectrlUploadType :: !(Maybe Text)
    , _plaectrlPageToken :: !(Maybe Text)
    , _plaectrlPageSize :: !(Maybe (Textual Int32))
    , _plaectrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaectrlParent'
--
-- * 'plaectrlXgafv'
--
-- * 'plaectrlUploadProtocol'
--
-- * 'plaectrlAccessToken'
--
-- * 'plaectrlUploadType'
--
-- * 'plaectrlPageToken'
--
-- * 'plaectrlPageSize'
--
-- * 'plaectrlCallback'
projectsLocationsAgentsEnvironmentsContinuousTestResultsList
    :: Text -- ^ 'plaectrlParent'
    -> ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
projectsLocationsAgentsEnvironmentsContinuousTestResultsList pPlaectrlParent_ =
  ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList'
    { _plaectrlParent = pPlaectrlParent_
    , _plaectrlXgafv = Nothing
    , _plaectrlUploadProtocol = Nothing
    , _plaectrlAccessToken = Nothing
    , _plaectrlUploadType = Nothing
    , _plaectrlPageToken = Nothing
    , _plaectrlPageSize = Nothing
    , _plaectrlCallback = Nothing
    }


-- | Required. The environment to list results for. Format:
-- \`projects\/\/locations\/\/agents\/\/ environments\/\`.
plaectrlParent :: Lens' ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList Text
plaectrlParent
  = lens _plaectrlParent
      (\ s a -> s{_plaectrlParent = a})

-- | V1 error format.
plaectrlXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList (Maybe Xgafv)
plaectrlXgafv
  = lens _plaectrlXgafv
      (\ s a -> s{_plaectrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaectrlUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList (Maybe Text)
plaectrlUploadProtocol
  = lens _plaectrlUploadProtocol
      (\ s a -> s{_plaectrlUploadProtocol = a})

-- | OAuth access token.
plaectrlAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList (Maybe Text)
plaectrlAccessToken
  = lens _plaectrlAccessToken
      (\ s a -> s{_plaectrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaectrlUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList (Maybe Text)
plaectrlUploadType
  = lens _plaectrlUploadType
      (\ s a -> s{_plaectrlUploadType = a})

-- | The next_page_token value returned from a previous list request.
plaectrlPageToken :: Lens' ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList (Maybe Text)
plaectrlPageToken
  = lens _plaectrlPageToken
      (\ s a -> s{_plaectrlPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plaectrlPageSize :: Lens' ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList (Maybe Int32)
plaectrlPageSize
  = lens _plaectrlPageSize
      (\ s a -> s{_plaectrlPageSize = a})
      . mapping _Coerce

-- | JSONP
plaectrlCallback :: Lens' ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList (Maybe Text)
plaectrlCallback
  = lens _plaectrlCallback
      (\ s a -> s{_plaectrlCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
             =
             GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse
        type Scopes
               ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsContinuousTestResultsList'{..}
          = go _plaectrlParent _plaectrlXgafv
              _plaectrlUploadProtocol
              _plaectrlAccessToken
              _plaectrlUploadType
              _plaectrlPageToken
              _plaectrlPageSize
              _plaectrlCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsContinuousTestResultsListResource)
                      mempty
