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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Samples.BatchCreate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a batch of PerfSamples - a client can submit multiple batches of
-- Perf Samples through repeated calls to this method in order to split up
-- a large request payload - duplicates and existing timestamp entries will
-- be ignored. - the batch operation may partially succeed - the set of
-- elements successfully inserted is returned in the response (omits items
-- which already existed in the database). May return any of the following
-- canonical error codes: - NOT_FOUND - The containing PerfSampleSeries
-- does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.perfSampleSeries.samples.batchCreate@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Samples.BatchCreate
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreateResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate
    , ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate

    -- * Request Lenses
    , phespsssbcExecutionId
    , phespsssbcStepId
    , phespsssbcPayload
    , phespsssbcHistoryId
    , phespsssbcProjectId
    , phespsssbcSampleSeriesId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.perfSampleSeries.samples.batchCreate@ method which the
-- 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate' request conforms to.
type ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreateResource
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
                             "samples:batchCreate" :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] BatchCreatePerfSamplesRequest
                                   :>
                                   Post '[JSON] BatchCreatePerfSamplesResponse

-- | Creates a batch of PerfSamples - a client can submit multiple batches of
-- Perf Samples through repeated calls to this method in order to split up
-- a large request payload - duplicates and existing timestamp entries will
-- be ignored. - the batch operation may partially succeed - the set of
-- elements successfully inserted is returned in the response (omits items
-- which already existed in the database). May return any of the following
-- canonical error codes: - NOT_FOUND - The containing PerfSampleSeries
-- does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate' smart constructor.
data ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate =
  ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate'
    { _phespsssbcExecutionId    :: !Text
    , _phespsssbcStepId         :: !Text
    , _phespsssbcPayload        :: !BatchCreatePerfSamplesRequest
    , _phespsssbcHistoryId      :: !Text
    , _phespsssbcProjectId      :: !Text
    , _phespsssbcSampleSeriesId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phespsssbcExecutionId'
--
-- * 'phespsssbcStepId'
--
-- * 'phespsssbcPayload'
--
-- * 'phespsssbcHistoryId'
--
-- * 'phespsssbcProjectId'
--
-- * 'phespsssbcSampleSeriesId'
projectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate
    :: Text -- ^ 'phespsssbcExecutionId'
    -> Text -- ^ 'phespsssbcStepId'
    -> BatchCreatePerfSamplesRequest -- ^ 'phespsssbcPayload'
    -> Text -- ^ 'phespsssbcHistoryId'
    -> Text -- ^ 'phespsssbcProjectId'
    -> Text -- ^ 'phespsssbcSampleSeriesId'
    -> ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate
projectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate pPhespsssbcExecutionId_ pPhespsssbcStepId_ pPhespsssbcPayload_ pPhespsssbcHistoryId_ pPhespsssbcProjectId_ pPhespsssbcSampleSeriesId_ =
  ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate'
    { _phespsssbcExecutionId = pPhespsssbcExecutionId_
    , _phespsssbcStepId = pPhespsssbcStepId_
    , _phespsssbcPayload = pPhespsssbcPayload_
    , _phespsssbcHistoryId = pPhespsssbcHistoryId_
    , _phespsssbcProjectId = pPhespsssbcProjectId_
    , _phespsssbcSampleSeriesId = pPhespsssbcSampleSeriesId_
    }


-- | A tool results execution ID.
phespsssbcExecutionId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate Text
phespsssbcExecutionId
  = lens _phespsssbcExecutionId
      (\ s a -> s{_phespsssbcExecutionId = a})

-- | A tool results step ID.
phespsssbcStepId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate Text
phespsssbcStepId
  = lens _phespsssbcStepId
      (\ s a -> s{_phespsssbcStepId = a})

-- | Multipart request metadata.
phespsssbcPayload :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate BatchCreatePerfSamplesRequest
phespsssbcPayload
  = lens _phespsssbcPayload
      (\ s a -> s{_phespsssbcPayload = a})

-- | A tool results history ID.
phespsssbcHistoryId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate Text
phespsssbcHistoryId
  = lens _phespsssbcHistoryId
      (\ s a -> s{_phespsssbcHistoryId = a})

-- | The cloud project
phespsssbcProjectId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate Text
phespsssbcProjectId
  = lens _phespsssbcProjectId
      (\ s a -> s{_phespsssbcProjectId = a})

-- | A sample series id
phespsssbcSampleSeriesId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate Text
phespsssbcSampleSeriesId
  = lens _phespsssbcSampleSeriesId
      (\ s a -> s{_phespsssbcSampleSeriesId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate
         where
        type Rs
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate
             = BatchCreatePerfSamplesResponse
        type Scopes
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreate'{..}
          = go _phespsssbcProjectId _phespsssbcHistoryId
              _phespsssbcExecutionId
              _phespsssbcStepId
              _phespsssbcSampleSeriesId
              (Just AltJSON)
              _phespsssbcPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesBatchCreateResource)
                      mempty
