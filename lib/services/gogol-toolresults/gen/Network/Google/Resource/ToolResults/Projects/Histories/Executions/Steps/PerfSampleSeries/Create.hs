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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a PerfSampleSeries. May return any of the following error
-- code(s): - ALREADY_EXISTS - PerfMetricSummary already exists for the
-- given Step - NOT_FOUND - The containing Step does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.perfSampleSeries.create@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Create
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreateResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsPerfSampleSeriesCreate
    , ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate

    -- * Request Lenses
    , phespsscExecutionId
    , phespsscStepId
    , phespsscPayload
    , phespsscHistoryId
    , phespsscProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.perfSampleSeries.create@ method which the
-- 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate' request conforms to.
type ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreateResource
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
                         "perfSampleSeries" :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PerfSampleSeries :>
                               Post '[JSON] PerfSampleSeries

-- | Creates a PerfSampleSeries. May return any of the following error
-- code(s): - ALREADY_EXISTS - PerfMetricSummary already exists for the
-- given Step - NOT_FOUND - The containing Step does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsPerfSampleSeriesCreate' smart constructor.
data ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate =
  ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate'
    { _phespsscExecutionId :: !Text
    , _phespsscStepId      :: !Text
    , _phespsscPayload     :: !PerfSampleSeries
    , _phespsscHistoryId   :: !Text
    , _phespsscProjectId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phespsscExecutionId'
--
-- * 'phespsscStepId'
--
-- * 'phespsscPayload'
--
-- * 'phespsscHistoryId'
--
-- * 'phespsscProjectId'
projectsHistoriesExecutionsStepsPerfSampleSeriesCreate
    :: Text -- ^ 'phespsscExecutionId'
    -> Text -- ^ 'phespsscStepId'
    -> PerfSampleSeries -- ^ 'phespsscPayload'
    -> Text -- ^ 'phespsscHistoryId'
    -> Text -- ^ 'phespsscProjectId'
    -> ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate
projectsHistoriesExecutionsStepsPerfSampleSeriesCreate pPhespsscExecutionId_ pPhespsscStepId_ pPhespsscPayload_ pPhespsscHistoryId_ pPhespsscProjectId_ =
  ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate'
    { _phespsscExecutionId = pPhespsscExecutionId_
    , _phespsscStepId = pPhespsscStepId_
    , _phespsscPayload = pPhespsscPayload_
    , _phespsscHistoryId = pPhespsscHistoryId_
    , _phespsscProjectId = pPhespsscProjectId_
    }


-- | A tool results execution ID.
phespsscExecutionId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate Text
phespsscExecutionId
  = lens _phespsscExecutionId
      (\ s a -> s{_phespsscExecutionId = a})

-- | A tool results step ID.
phespsscStepId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate Text
phespsscStepId
  = lens _phespsscStepId
      (\ s a -> s{_phespsscStepId = a})

-- | Multipart request metadata.
phespsscPayload :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate PerfSampleSeries
phespsscPayload
  = lens _phespsscPayload
      (\ s a -> s{_phespsscPayload = a})

-- | A tool results history ID.
phespsscHistoryId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate Text
phespsscHistoryId
  = lens _phespsscHistoryId
      (\ s a -> s{_phespsscHistoryId = a})

-- | The cloud project
phespsscProjectId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate Text
phespsscProjectId
  = lens _phespsscProjectId
      (\ s a -> s{_phespsscProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate
         where
        type Rs
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate
             = PerfSampleSeries
        type Scopes
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreate'{..}
          = go _phespsscProjectId _phespsscHistoryId
              _phespsscExecutionId
              _phespsscStepId
              (Just AltJSON)
              _phespsscPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsPerfSampleSeriesCreateResource)
                      mempty
