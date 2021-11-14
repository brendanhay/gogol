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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches a list of test cases for a given agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesListResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesList
    , ProjectsLocationsAgentsTestCasesList

    -- * Request Lenses
    , platclParent
    , platclXgafv
    , platclUploadProtocol
    , platclAccessToken
    , platclUploadType
    , platclView
    , platclPageToken
    , platclPageSize
    , platclCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.list@ method which the
-- 'ProjectsLocationsAgentsTestCasesList' request conforms to.
type ProjectsLocationsAgentsTestCasesListResource =
     "v3" :>
       Capture "parent" Text :>
         "testCases" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view"
                     ProjectsLocationsAgentsTestCasesListView
                     :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleCloudDialogflowCxV3ListTestCasesResponse

-- | Fetches a list of test cases for a given agent.
--
-- /See:/ 'projectsLocationsAgentsTestCasesList' smart constructor.
data ProjectsLocationsAgentsTestCasesList =
  ProjectsLocationsAgentsTestCasesList'
    { _platclParent :: !Text
    , _platclXgafv :: !(Maybe Xgafv)
    , _platclUploadProtocol :: !(Maybe Text)
    , _platclAccessToken :: !(Maybe Text)
    , _platclUploadType :: !(Maybe Text)
    , _platclView :: !(Maybe ProjectsLocationsAgentsTestCasesListView)
    , _platclPageToken :: !(Maybe Text)
    , _platclPageSize :: !(Maybe (Textual Int32))
    , _platclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platclParent'
--
-- * 'platclXgafv'
--
-- * 'platclUploadProtocol'
--
-- * 'platclAccessToken'
--
-- * 'platclUploadType'
--
-- * 'platclView'
--
-- * 'platclPageToken'
--
-- * 'platclPageSize'
--
-- * 'platclCallback'
projectsLocationsAgentsTestCasesList
    :: Text -- ^ 'platclParent'
    -> ProjectsLocationsAgentsTestCasesList
projectsLocationsAgentsTestCasesList pPlatclParent_ =
  ProjectsLocationsAgentsTestCasesList'
    { _platclParent = pPlatclParent_
    , _platclXgafv = Nothing
    , _platclUploadProtocol = Nothing
    , _platclAccessToken = Nothing
    , _platclUploadType = Nothing
    , _platclView = Nothing
    , _platclPageToken = Nothing
    , _platclPageSize = Nothing
    , _platclCallback = Nothing
    }


-- | Required. The agent to list all pages for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
platclParent :: Lens' ProjectsLocationsAgentsTestCasesList Text
platclParent
  = lens _platclParent (\ s a -> s{_platclParent = a})

-- | V1 error format.
platclXgafv :: Lens' ProjectsLocationsAgentsTestCasesList (Maybe Xgafv)
platclXgafv
  = lens _platclXgafv (\ s a -> s{_platclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platclUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesList (Maybe Text)
platclUploadProtocol
  = lens _platclUploadProtocol
      (\ s a -> s{_platclUploadProtocol = a})

-- | OAuth access token.
platclAccessToken :: Lens' ProjectsLocationsAgentsTestCasesList (Maybe Text)
platclAccessToken
  = lens _platclAccessToken
      (\ s a -> s{_platclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platclUploadType :: Lens' ProjectsLocationsAgentsTestCasesList (Maybe Text)
platclUploadType
  = lens _platclUploadType
      (\ s a -> s{_platclUploadType = a})

-- | Specifies whether response should include all fields or just the
-- metadata.
platclView :: Lens' ProjectsLocationsAgentsTestCasesList (Maybe ProjectsLocationsAgentsTestCasesListView)
platclView
  = lens _platclView (\ s a -> s{_platclView = a})

-- | The next_page_token value returned from a previous list request.
platclPageToken :: Lens' ProjectsLocationsAgentsTestCasesList (Maybe Text)
platclPageToken
  = lens _platclPageToken
      (\ s a -> s{_platclPageToken = a})

-- | The maximum number of items to return in a single page. By default 20.
-- Note that when TestCaseView = FULL, the maximum page size allowed is 20.
-- When TestCaseView = BASIC, the maximum page size allowed is 500.
platclPageSize :: Lens' ProjectsLocationsAgentsTestCasesList (Maybe Int32)
platclPageSize
  = lens _platclPageSize
      (\ s a -> s{_platclPageSize = a})
      . mapping _Coerce

-- | JSONP
platclCallback :: Lens' ProjectsLocationsAgentsTestCasesList (Maybe Text)
platclCallback
  = lens _platclCallback
      (\ s a -> s{_platclCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesList
         where
        type Rs ProjectsLocationsAgentsTestCasesList =
             GoogleCloudDialogflowCxV3ListTestCasesResponse
        type Scopes ProjectsLocationsAgentsTestCasesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesList'{..}
          = go _platclParent _platclXgafv _platclUploadProtocol
              _platclAccessToken
              _platclUploadType
              _platclView
              _platclPageToken
              _platclPageSize
              _platclCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsTestCasesListResource)
                      mempty
