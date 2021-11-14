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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.GetPerfMetricsSummary
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a PerfMetricsSummary. May return any of the following error
-- code(s): - NOT_FOUND - The specified PerfMetricsSummary does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.getPerfMetricsSummary@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.GetPerfMetricsSummary
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsGetPerfMetricsSummaryResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsGetPerfMetricsSummary
    , ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary

    -- * Request Lenses
    , phesgpmsExecutionId
    , phesgpmsStepId
    , phesgpmsHistoryId
    , phesgpmsProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.getPerfMetricsSummary@ method which the
-- 'ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary' request conforms to.
type ProjectsHistoriesExecutionsStepsGetPerfMetricsSummaryResource
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
                         "perfMetricsSummary" :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] PerfMetricsSummary

-- | Retrieves a PerfMetricsSummary. May return any of the following error
-- code(s): - NOT_FOUND - The specified PerfMetricsSummary does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsGetPerfMetricsSummary' smart constructor.
data ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary =
  ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary'
    { _phesgpmsExecutionId :: !Text
    , _phesgpmsStepId      :: !Text
    , _phesgpmsHistoryId   :: !Text
    , _phesgpmsProjectId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phesgpmsExecutionId'
--
-- * 'phesgpmsStepId'
--
-- * 'phesgpmsHistoryId'
--
-- * 'phesgpmsProjectId'
projectsHistoriesExecutionsStepsGetPerfMetricsSummary
    :: Text -- ^ 'phesgpmsExecutionId'
    -> Text -- ^ 'phesgpmsStepId'
    -> Text -- ^ 'phesgpmsHistoryId'
    -> Text -- ^ 'phesgpmsProjectId'
    -> ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary
projectsHistoriesExecutionsStepsGetPerfMetricsSummary pPhesgpmsExecutionId_ pPhesgpmsStepId_ pPhesgpmsHistoryId_ pPhesgpmsProjectId_ =
  ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary'
    { _phesgpmsExecutionId = pPhesgpmsExecutionId_
    , _phesgpmsStepId = pPhesgpmsStepId_
    , _phesgpmsHistoryId = pPhesgpmsHistoryId_
    , _phesgpmsProjectId = pPhesgpmsProjectId_
    }


-- | A tool results execution ID.
phesgpmsExecutionId :: Lens' ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary Text
phesgpmsExecutionId
  = lens _phesgpmsExecutionId
      (\ s a -> s{_phesgpmsExecutionId = a})

-- | A tool results step ID.
phesgpmsStepId :: Lens' ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary Text
phesgpmsStepId
  = lens _phesgpmsStepId
      (\ s a -> s{_phesgpmsStepId = a})

-- | A tool results history ID.
phesgpmsHistoryId :: Lens' ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary Text
phesgpmsHistoryId
  = lens _phesgpmsHistoryId
      (\ s a -> s{_phesgpmsHistoryId = a})

-- | The cloud project
phesgpmsProjectId :: Lens' ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary Text
phesgpmsProjectId
  = lens _phesgpmsProjectId
      (\ s a -> s{_phesgpmsProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary
         where
        type Rs
               ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary
             = PerfMetricsSummary
        type Scopes
               ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsGetPerfMetricsSummary'{..}
          = go _phesgpmsProjectId _phesgpmsHistoryId
              _phesgpmsExecutionId
              _phesgpmsStepId
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsGetPerfMetricsSummaryResource)
                      mempty
