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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.TestCases.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Test Cases attached to a Step. Experimental test cases API. Still
-- in active development. May return any of the following canonical error
-- codes: - PERMISSION_DENIED - if the user is not authorized to write to
-- project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND -
-- if the containing Step does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.testCases.list@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.TestCases.List
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsTestCasesListResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsTestCasesList
    , ProjectsHistoriesExecutionsStepsTestCasesList

    -- * Request Lenses
    , phestclExecutionId
    , phestclStepId
    , phestclHistoryId
    , phestclPageToken
    , phestclProjectId
    , phestclPageSize
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.testCases.list@ method which the
-- 'ProjectsHistoriesExecutionsStepsTestCasesList' request conforms to.
type ProjectsHistoriesExecutionsStepsTestCasesListResource
     =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     "steps" :>
                       Capture "stepId" Text :>
                         "testCases" :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListTestCasesResponse

-- | Lists Test Cases attached to a Step. Experimental test cases API. Still
-- in active development. May return any of the following canonical error
-- codes: - PERMISSION_DENIED - if the user is not authorized to write to
-- project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND -
-- if the containing Step does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsTestCasesList' smart constructor.
data ProjectsHistoriesExecutionsStepsTestCasesList =
  ProjectsHistoriesExecutionsStepsTestCasesList'
    { _phestclExecutionId :: !Text
    , _phestclStepId      :: !Text
    , _phestclHistoryId   :: !Text
    , _phestclPageToken   :: !(Maybe Text)
    , _phestclProjectId   :: !Text
    , _phestclPageSize    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsTestCasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phestclExecutionId'
--
-- * 'phestclStepId'
--
-- * 'phestclHistoryId'
--
-- * 'phestclPageToken'
--
-- * 'phestclProjectId'
--
-- * 'phestclPageSize'
projectsHistoriesExecutionsStepsTestCasesList
    :: Text -- ^ 'phestclExecutionId'
    -> Text -- ^ 'phestclStepId'
    -> Text -- ^ 'phestclHistoryId'
    -> Text -- ^ 'phestclProjectId'
    -> ProjectsHistoriesExecutionsStepsTestCasesList
projectsHistoriesExecutionsStepsTestCasesList pPhestclExecutionId_ pPhestclStepId_ pPhestclHistoryId_ pPhestclProjectId_ =
  ProjectsHistoriesExecutionsStepsTestCasesList'
    { _phestclExecutionId = pPhestclExecutionId_
    , _phestclStepId = pPhestclStepId_
    , _phestclHistoryId = pPhestclHistoryId_
    , _phestclPageToken = Nothing
    , _phestclProjectId = pPhestclProjectId_
    , _phestclPageSize = Nothing
    }


-- | A Execution id Required.
phestclExecutionId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesList Text
phestclExecutionId
  = lens _phestclExecutionId
      (\ s a -> s{_phestclExecutionId = a})

-- | A Step id. Note: This step must include a TestExecutionStep. Required.
phestclStepId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesList Text
phestclStepId
  = lens _phestclStepId
      (\ s a -> s{_phestclStepId = a})

-- | A History id. Required.
phestclHistoryId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesList Text
phestclHistoryId
  = lens _phestclHistoryId
      (\ s a -> s{_phestclHistoryId = a})

-- | A continuation token to resume the query at the next item. Optional.
phestclPageToken :: Lens' ProjectsHistoriesExecutionsStepsTestCasesList (Maybe Text)
phestclPageToken
  = lens _phestclPageToken
      (\ s a -> s{_phestclPageToken = a})

-- | A Project id. Required.
phestclProjectId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesList Text
phestclProjectId
  = lens _phestclProjectId
      (\ s a -> s{_phestclProjectId = a})

-- | The maximum number of TestCases to fetch. Default value: 100. The server
-- will use this default if the field is not set or has a value of 0.
-- Optional.
phestclPageSize :: Lens' ProjectsHistoriesExecutionsStepsTestCasesList (Maybe Int32)
phestclPageSize
  = lens _phestclPageSize
      (\ s a -> s{_phestclPageSize = a})
      . mapping _Coerce

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsTestCasesList
         where
        type Rs ProjectsHistoriesExecutionsStepsTestCasesList
             = ListTestCasesResponse
        type Scopes
               ProjectsHistoriesExecutionsStepsTestCasesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsTestCasesList'{..}
          = go _phestclProjectId _phestclHistoryId
              _phestclExecutionId
              _phestclStepId
              _phestclPageToken
              _phestclPageSize
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsTestCasesListResource)
                      mempty
