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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfMetricsSummary.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a PerfMetricsSummary resource. Returns the existing one if it
-- has already been created. May return any of the following error code(s):
-- - NOT_FOUND - The containing Step does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.perfMetricsSummary.create@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfMetricsSummary.Create
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreateResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsPerfMetricsSummaryCreate
    , ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate

    -- * Request Lenses
    , phespmscExecutionId
    , phespmscStepId
    , phespmscPayload
    , phespmscHistoryId
    , phespmscProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.perfMetricsSummary.create@ method which the
-- 'ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate' request conforms to.
type ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreateResource
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
                             ReqBody '[JSON] PerfMetricsSummary :>
                               Post '[JSON] PerfMetricsSummary

-- | Creates a PerfMetricsSummary resource. Returns the existing one if it
-- has already been created. May return any of the following error code(s):
-- - NOT_FOUND - The containing Step does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsPerfMetricsSummaryCreate' smart constructor.
data ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate =
  ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate'
    { _phespmscExecutionId :: !Text
    , _phespmscStepId      :: !Text
    , _phespmscPayload     :: !PerfMetricsSummary
    , _phespmscHistoryId   :: !Text
    , _phespmscProjectId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phespmscExecutionId'
--
-- * 'phespmscStepId'
--
-- * 'phespmscPayload'
--
-- * 'phespmscHistoryId'
--
-- * 'phespmscProjectId'
projectsHistoriesExecutionsStepsPerfMetricsSummaryCreate
    :: Text -- ^ 'phespmscExecutionId'
    -> Text -- ^ 'phespmscStepId'
    -> PerfMetricsSummary -- ^ 'phespmscPayload'
    -> Text -- ^ 'phespmscHistoryId'
    -> Text -- ^ 'phespmscProjectId'
    -> ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate
projectsHistoriesExecutionsStepsPerfMetricsSummaryCreate pPhespmscExecutionId_ pPhespmscStepId_ pPhespmscPayload_ pPhespmscHistoryId_ pPhespmscProjectId_ =
  ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate'
    { _phespmscExecutionId = pPhespmscExecutionId_
    , _phespmscStepId = pPhespmscStepId_
    , _phespmscPayload = pPhespmscPayload_
    , _phespmscHistoryId = pPhespmscHistoryId_
    , _phespmscProjectId = pPhespmscProjectId_
    }


-- | A tool results execution ID.
phespmscExecutionId :: Lens' ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate Text
phespmscExecutionId
  = lens _phespmscExecutionId
      (\ s a -> s{_phespmscExecutionId = a})

-- | A tool results step ID.
phespmscStepId :: Lens' ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate Text
phespmscStepId
  = lens _phespmscStepId
      (\ s a -> s{_phespmscStepId = a})

-- | Multipart request metadata.
phespmscPayload :: Lens' ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate PerfMetricsSummary
phespmscPayload
  = lens _phespmscPayload
      (\ s a -> s{_phespmscPayload = a})

-- | A tool results history ID.
phespmscHistoryId :: Lens' ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate Text
phespmscHistoryId
  = lens _phespmscHistoryId
      (\ s a -> s{_phespmscHistoryId = a})

-- | The cloud project
phespmscProjectId :: Lens' ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate Text
phespmscProjectId
  = lens _phespmscProjectId
      (\ s a -> s{_phespmscProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate
         where
        type Rs
               ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate
             = PerfMetricsSummary
        type Scopes
               ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreate'{..}
          = go _phespmscProjectId _phespmscHistoryId
              _phespmscExecutionId
              _phespmscStepId
              (Just AltJSON)
              _phespmscPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsPerfMetricsSummaryCreateResource)
                      mempty
