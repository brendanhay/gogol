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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Results.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches a list of results for a given test case.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.results.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Results.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesResultsListResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesResultsList
    , ProjectsLocationsAgentsTestCasesResultsList

    -- * Request Lenses
    , platcrlParent
    , platcrlXgafv
    , platcrlUploadProtocol
    , platcrlAccessToken
    , platcrlUploadType
    , platcrlFilter
    , platcrlPageToken
    , platcrlPageSize
    , platcrlCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.results.list@ method which the
-- 'ProjectsLocationsAgentsTestCasesResultsList' request conforms to.
type ProjectsLocationsAgentsTestCasesResultsListResource
     =
     "v3" :>
       Capture "parent" Text :>
         "results" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleCloudDialogflowCxV3ListTestCaseResultsResponse

-- | Fetches a list of results for a given test case.
--
-- /See:/ 'projectsLocationsAgentsTestCasesResultsList' smart constructor.
data ProjectsLocationsAgentsTestCasesResultsList =
  ProjectsLocationsAgentsTestCasesResultsList'
    { _platcrlParent :: !Text
    , _platcrlXgafv :: !(Maybe Xgafv)
    , _platcrlUploadProtocol :: !(Maybe Text)
    , _platcrlAccessToken :: !(Maybe Text)
    , _platcrlUploadType :: !(Maybe Text)
    , _platcrlFilter :: !(Maybe Text)
    , _platcrlPageToken :: !(Maybe Text)
    , _platcrlPageSize :: !(Maybe (Textual Int32))
    , _platcrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesResultsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platcrlParent'
--
-- * 'platcrlXgafv'
--
-- * 'platcrlUploadProtocol'
--
-- * 'platcrlAccessToken'
--
-- * 'platcrlUploadType'
--
-- * 'platcrlFilter'
--
-- * 'platcrlPageToken'
--
-- * 'platcrlPageSize'
--
-- * 'platcrlCallback'
projectsLocationsAgentsTestCasesResultsList
    :: Text -- ^ 'platcrlParent'
    -> ProjectsLocationsAgentsTestCasesResultsList
projectsLocationsAgentsTestCasesResultsList pPlatcrlParent_ =
  ProjectsLocationsAgentsTestCasesResultsList'
    { _platcrlParent = pPlatcrlParent_
    , _platcrlXgafv = Nothing
    , _platcrlUploadProtocol = Nothing
    , _platcrlAccessToken = Nothing
    , _platcrlUploadType = Nothing
    , _platcrlFilter = Nothing
    , _platcrlPageToken = Nothing
    , _platcrlPageSize = Nothing
    , _platcrlCallback = Nothing
    }


-- | Required. The test case to list results for. Format:
-- \`projects\/\/locations\/\/agents\/\/ testCases\/\`. Specify a \`-\` as
-- a wildcard for TestCase ID to list results across multiple test cases.
platcrlParent :: Lens' ProjectsLocationsAgentsTestCasesResultsList Text
platcrlParent
  = lens _platcrlParent
      (\ s a -> s{_platcrlParent = a})

-- | V1 error format.
platcrlXgafv :: Lens' ProjectsLocationsAgentsTestCasesResultsList (Maybe Xgafv)
platcrlXgafv
  = lens _platcrlXgafv (\ s a -> s{_platcrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platcrlUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesResultsList (Maybe Text)
platcrlUploadProtocol
  = lens _platcrlUploadProtocol
      (\ s a -> s{_platcrlUploadProtocol = a})

-- | OAuth access token.
platcrlAccessToken :: Lens' ProjectsLocationsAgentsTestCasesResultsList (Maybe Text)
platcrlAccessToken
  = lens _platcrlAccessToken
      (\ s a -> s{_platcrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platcrlUploadType :: Lens' ProjectsLocationsAgentsTestCasesResultsList (Maybe Text)
platcrlUploadType
  = lens _platcrlUploadType
      (\ s a -> s{_platcrlUploadType = a})

-- | The filter expression used to filter test case results. See [API
-- Filtering](https:\/\/aip.dev\/160). The expression is case insensitive.
-- Only \'AND\' is supported for logical operators. The supported syntax is
-- listed below in detail: [AND ] ... [AND latest] The supported fields and
-- operators are: field operator \`environment\` \`=\`, \`IN\` (Use value
-- \`draft\` for draft environment) \`test_time\` \`>\`, \`\<\` \`latest\`
-- only returns the latest test result in all results for each test case.
-- Examples: * \"environment=draft AND latest\" matches the latest test
-- result for each test case in the draft environment. * \"environment IN
-- (e1,e2)\" matches any test case results with an environment resource
-- name of either \"e1\" or \"e2\". * \"test_time > 1602540713\" matches
-- any test case results with test time later than a unix timestamp in
-- seconds 1602540713.
platcrlFilter :: Lens' ProjectsLocationsAgentsTestCasesResultsList (Maybe Text)
platcrlFilter
  = lens _platcrlFilter
      (\ s a -> s{_platcrlFilter = a})

-- | The next_page_token value returned from a previous list request.
platcrlPageToken :: Lens' ProjectsLocationsAgentsTestCasesResultsList (Maybe Text)
platcrlPageToken
  = lens _platcrlPageToken
      (\ s a -> s{_platcrlPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
platcrlPageSize :: Lens' ProjectsLocationsAgentsTestCasesResultsList (Maybe Int32)
platcrlPageSize
  = lens _platcrlPageSize
      (\ s a -> s{_platcrlPageSize = a})
      . mapping _Coerce

-- | JSONP
platcrlCallback :: Lens' ProjectsLocationsAgentsTestCasesResultsList (Maybe Text)
platcrlCallback
  = lens _platcrlCallback
      (\ s a -> s{_platcrlCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesResultsList
         where
        type Rs ProjectsLocationsAgentsTestCasesResultsList =
             GoogleCloudDialogflowCxV3ListTestCaseResultsResponse
        type Scopes
               ProjectsLocationsAgentsTestCasesResultsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesResultsList'{..}
          = go _platcrlParent _platcrlXgafv
              _platcrlUploadProtocol
              _platcrlAccessToken
              _platcrlUploadType
              _platcrlFilter
              _platcrlPageToken
              _platcrlPageSize
              _platcrlCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsTestCasesResultsListResource)
                      mempty
