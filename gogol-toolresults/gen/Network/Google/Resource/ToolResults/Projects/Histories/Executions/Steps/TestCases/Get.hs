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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.TestCases.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details of a Test Case for a Step. Experimental test cases API.
-- Still in active development. May return any of the following canonical
-- error codes: - PERMISSION_DENIED - if the user is not authorized to
-- write to project - INVALID_ARGUMENT - if the request is malformed -
-- NOT_FOUND - if the containing Test Case does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.testCases.get@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.TestCases.Get
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsTestCasesGetResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsTestCasesGet
    , ProjectsHistoriesExecutionsStepsTestCasesGet

    -- * Request Lenses
    , phestcgExecutionId
    , phestcgStepId
    , phestcgTestCaseId
    , phestcgHistoryId
    , phestcgProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.testCases.get@ method which the
-- 'ProjectsHistoriesExecutionsStepsTestCasesGet' request conforms to.
type ProjectsHistoriesExecutionsStepsTestCasesGetResource
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
                           Capture "testCaseId" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] TestCase

-- | Gets details of a Test Case for a Step. Experimental test cases API.
-- Still in active development. May return any of the following canonical
-- error codes: - PERMISSION_DENIED - if the user is not authorized to
-- write to project - INVALID_ARGUMENT - if the request is malformed -
-- NOT_FOUND - if the containing Test Case does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsTestCasesGet' smart constructor.
data ProjectsHistoriesExecutionsStepsTestCasesGet =
  ProjectsHistoriesExecutionsStepsTestCasesGet'
    { _phestcgExecutionId :: !Text
    , _phestcgStepId      :: !Text
    , _phestcgTestCaseId  :: !Text
    , _phestcgHistoryId   :: !Text
    , _phestcgProjectId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsTestCasesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phestcgExecutionId'
--
-- * 'phestcgStepId'
--
-- * 'phestcgTestCaseId'
--
-- * 'phestcgHistoryId'
--
-- * 'phestcgProjectId'
projectsHistoriesExecutionsStepsTestCasesGet
    :: Text -- ^ 'phestcgExecutionId'
    -> Text -- ^ 'phestcgStepId'
    -> Text -- ^ 'phestcgTestCaseId'
    -> Text -- ^ 'phestcgHistoryId'
    -> Text -- ^ 'phestcgProjectId'
    -> ProjectsHistoriesExecutionsStepsTestCasesGet
projectsHistoriesExecutionsStepsTestCasesGet pPhestcgExecutionId_ pPhestcgStepId_ pPhestcgTestCaseId_ pPhestcgHistoryId_ pPhestcgProjectId_ =
  ProjectsHistoriesExecutionsStepsTestCasesGet'
    { _phestcgExecutionId = pPhestcgExecutionId_
    , _phestcgStepId = pPhestcgStepId_
    , _phestcgTestCaseId = pPhestcgTestCaseId_
    , _phestcgHistoryId = pPhestcgHistoryId_
    , _phestcgProjectId = pPhestcgProjectId_
    }


-- | A Execution id Required.
phestcgExecutionId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesGet Text
phestcgExecutionId
  = lens _phestcgExecutionId
      (\ s a -> s{_phestcgExecutionId = a})

-- | A Step id. Note: This step must include a TestExecutionStep. Required.
phestcgStepId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesGet Text
phestcgStepId
  = lens _phestcgStepId
      (\ s a -> s{_phestcgStepId = a})

-- | A Test Case id. Required.
phestcgTestCaseId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesGet Text
phestcgTestCaseId
  = lens _phestcgTestCaseId
      (\ s a -> s{_phestcgTestCaseId = a})

-- | A History id. Required.
phestcgHistoryId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesGet Text
phestcgHistoryId
  = lens _phestcgHistoryId
      (\ s a -> s{_phestcgHistoryId = a})

-- | A Project id. Required.
phestcgProjectId :: Lens' ProjectsHistoriesExecutionsStepsTestCasesGet Text
phestcgProjectId
  = lens _phestcgProjectId
      (\ s a -> s{_phestcgProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsTestCasesGet
         where
        type Rs ProjectsHistoriesExecutionsStepsTestCasesGet
             = TestCase
        type Scopes
               ProjectsHistoriesExecutionsStepsTestCasesGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsTestCasesGet'{..}
          = go _phestcgProjectId _phestcgHistoryId
              _phestcgExecutionId
              _phestcgStepId
              _phestcgTestCaseId
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsTestCasesGetResource)
                      mempty
