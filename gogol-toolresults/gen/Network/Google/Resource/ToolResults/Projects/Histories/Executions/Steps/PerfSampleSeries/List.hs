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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists PerfSampleSeries for a given Step. The request provides an
-- optional filter which specifies one or more PerfMetricsType to include
-- in the result; if none returns all. The resulting PerfSampleSeries are
-- sorted by ids. May return any of the following canonical error codes: -
-- NOT_FOUND - The containing Step does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.perfSampleSeries.list@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.List
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsPerfSampleSeriesListResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsPerfSampleSeriesList
    , ProjectsHistoriesExecutionsStepsPerfSampleSeriesList

    -- * Request Lenses
    , phespsslExecutionId
    , phespsslStepId
    , phespsslHistoryId
    , phespsslFilter
    , phespsslProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.perfSampleSeries.list@ method which the
-- 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesList' request conforms to.
type ProjectsHistoriesExecutionsStepsPerfSampleSeriesListResource
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
                           QueryParams "filter"
                             ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter
                             :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListPerfSampleSeriesResponse

-- | Lists PerfSampleSeries for a given Step. The request provides an
-- optional filter which specifies one or more PerfMetricsType to include
-- in the result; if none returns all. The resulting PerfSampleSeries are
-- sorted by ids. May return any of the following canonical error codes: -
-- NOT_FOUND - The containing Step does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsPerfSampleSeriesList' smart constructor.
data ProjectsHistoriesExecutionsStepsPerfSampleSeriesList = ProjectsHistoriesExecutionsStepsPerfSampleSeriesList'
    { _phespsslExecutionId :: !Text
    , _phespsslStepId      :: !Text
    , _phespsslHistoryId   :: !Text
    , _phespsslFilter      :: !(Maybe [ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter])
    , _phespsslProjectId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phespsslExecutionId'
--
-- * 'phespsslStepId'
--
-- * 'phespsslHistoryId'
--
-- * 'phespsslFilter'
--
-- * 'phespsslProjectId'
projectsHistoriesExecutionsStepsPerfSampleSeriesList
    :: Text -- ^ 'phespsslExecutionId'
    -> Text -- ^ 'phespsslStepId'
    -> Text -- ^ 'phespsslHistoryId'
    -> Text -- ^ 'phespsslProjectId'
    -> ProjectsHistoriesExecutionsStepsPerfSampleSeriesList
projectsHistoriesExecutionsStepsPerfSampleSeriesList pPhespsslExecutionId_ pPhespsslStepId_ pPhespsslHistoryId_ pPhespsslProjectId_ =
    ProjectsHistoriesExecutionsStepsPerfSampleSeriesList'
    { _phespsslExecutionId = pPhespsslExecutionId_
    , _phespsslStepId = pPhespsslStepId_
    , _phespsslHistoryId = pPhespsslHistoryId_
    , _phespsslFilter = Nothing
    , _phespsslProjectId = pPhespsslProjectId_
    }

-- | A tool results execution ID.
phespsslExecutionId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesList Text
phespsslExecutionId
  = lens _phespsslExecutionId
      (\ s a -> s{_phespsslExecutionId = a})

-- | A tool results step ID.
phespsslStepId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesList Text
phespsslStepId
  = lens _phespsslStepId
      (\ s a -> s{_phespsslStepId = a})

-- | A tool results history ID.
phespsslHistoryId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesList Text
phespsslHistoryId
  = lens _phespsslHistoryId
      (\ s a -> s{_phespsslHistoryId = a})

-- | Specify one or more PerfMetricType values such as CPU to filter the
-- result
phespsslFilter :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesList [ProjectsHistoriesExecutionsStepsPerfSampleSeriesListFilter]
phespsslFilter
  = lens _phespsslFilter
      (\ s a -> s{_phespsslFilter = a})
      . _Default
      . _Coerce

-- | The cloud project
phespsslProjectId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesList Text
phespsslProjectId
  = lens _phespsslProjectId
      (\ s a -> s{_phespsslProjectId = a})

instance GoogleRequest
         ProjectsHistoriesExecutionsStepsPerfSampleSeriesList
         where
        type Rs
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesList
             = ListPerfSampleSeriesResponse
        type Scopes
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsPerfSampleSeriesList'{..}
          = go _phespsslProjectId _phespsslHistoryId
              _phespsslExecutionId
              _phespsslStepId
              (_phespsslFilter ^. _Default)
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsPerfSampleSeriesListResource)
                      mempty
