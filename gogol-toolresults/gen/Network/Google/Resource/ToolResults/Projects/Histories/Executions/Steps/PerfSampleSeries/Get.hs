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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a PerfSampleSeries. May return any of the following error code(s):
-- - NOT_FOUND - The specified PerfSampleSeries does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.perfSampleSeries.get@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Get
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsPerfSampleSeriesGetResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsPerfSampleSeriesGet
    , ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet

    -- * Request Lenses
    , phespssgExecutionId
    , phespssgStepId
    , phespssgHistoryId
    , phespssgProjectId
    , phespssgSampleSeriesId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.perfSampleSeries.get@ method which the
-- 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet' request conforms to.
type ProjectsHistoriesExecutionsStepsPerfSampleSeriesGetResource
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
                           Capture "sampleSeriesId" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] PerfSampleSeries

-- | Gets a PerfSampleSeries. May return any of the following error code(s):
-- - NOT_FOUND - The specified PerfSampleSeries does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsPerfSampleSeriesGet' smart constructor.
data ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet = ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet'
    { _phespssgExecutionId    :: !Text
    , _phespssgStepId         :: !Text
    , _phespssgHistoryId      :: !Text
    , _phespssgProjectId      :: !Text
    , _phespssgSampleSeriesId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phespssgExecutionId'
--
-- * 'phespssgStepId'
--
-- * 'phespssgHistoryId'
--
-- * 'phespssgProjectId'
--
-- * 'phespssgSampleSeriesId'
projectsHistoriesExecutionsStepsPerfSampleSeriesGet
    :: Text -- ^ 'phespssgExecutionId'
    -> Text -- ^ 'phespssgStepId'
    -> Text -- ^ 'phespssgHistoryId'
    -> Text -- ^ 'phespssgProjectId'
    -> Text -- ^ 'phespssgSampleSeriesId'
    -> ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet
projectsHistoriesExecutionsStepsPerfSampleSeriesGet pPhespssgExecutionId_ pPhespssgStepId_ pPhespssgHistoryId_ pPhespssgProjectId_ pPhespssgSampleSeriesId_ =
    ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet'
    { _phespssgExecutionId = pPhespssgExecutionId_
    , _phespssgStepId = pPhespssgStepId_
    , _phespssgHistoryId = pPhespssgHistoryId_
    , _phespssgProjectId = pPhespssgProjectId_
    , _phespssgSampleSeriesId = pPhespssgSampleSeriesId_
    }

-- | A tool results execution ID.
phespssgExecutionId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet Text
phespssgExecutionId
  = lens _phespssgExecutionId
      (\ s a -> s{_phespssgExecutionId = a})

-- | A tool results step ID.
phespssgStepId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet Text
phespssgStepId
  = lens _phespssgStepId
      (\ s a -> s{_phespssgStepId = a})

-- | A tool results history ID.
phespssgHistoryId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet Text
phespssgHistoryId
  = lens _phespssgHistoryId
      (\ s a -> s{_phespssgHistoryId = a})

-- | The cloud project
phespssgProjectId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet Text
phespssgProjectId
  = lens _phespssgProjectId
      (\ s a -> s{_phespssgProjectId = a})

-- | A sample series id
phespssgSampleSeriesId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet Text
phespssgSampleSeriesId
  = lens _phespssgSampleSeriesId
      (\ s a -> s{_phespssgSampleSeriesId = a})

instance GoogleRequest
         ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet
         where
        type Rs
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet
             = PerfSampleSeries
        type Scopes
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsPerfSampleSeriesGet'{..}
          = go _phespssgProjectId _phespssgHistoryId
              _phespssgExecutionId
              _phespssgStepId
              _phespssgSampleSeriesId
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsPerfSampleSeriesGetResource)
                      mempty
