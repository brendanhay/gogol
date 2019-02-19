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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Samples.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Performance Samples of a given Sample Series - The list
-- results are sorted by timestamps ascending - The default page size is
-- 500 samples; and maximum size allowed 5000 - The response token
-- indicates the last returned PerfSample timestamp - When the results size
-- exceeds the page size, submit a subsequent request including the page
-- token to return the rest of the samples up to the page limit May return
-- any of the following canonical error codes: - OUT_OF_RANGE - The
-- specified request page_token is out of valid range - NOT_FOUND - The
-- containing PerfSampleSeries does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.perfSampleSeries.samples.list@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.PerfSampleSeries.Samples.List
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesListResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList
    , ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList

    -- * Request Lenses
    , phespssslExecutionId
    , phespssslStepId
    , phespssslHistoryId
    , phespssslPageToken
    , phespssslProjectId
    , phespssslSampleSeriesId
    , phespssslPageSize
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.perfSampleSeries.samples.list@ method which the
-- 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList' request conforms to.
type ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesListResource
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
                             "samples" :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListPerfSamplesResponse

-- | Lists the Performance Samples of a given Sample Series - The list
-- results are sorted by timestamps ascending - The default page size is
-- 500 samples; and maximum size allowed 5000 - The response token
-- indicates the last returned PerfSample timestamp - When the results size
-- exceeds the page size, submit a subsequent request including the page
-- token to return the rest of the samples up to the page limit May return
-- any of the following canonical error codes: - OUT_OF_RANGE - The
-- specified request page_token is out of valid range - NOT_FOUND - The
-- containing PerfSampleSeries does not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList' smart constructor.
data ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList =
  ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList'
    { _phespssslExecutionId    :: !Text
    , _phespssslStepId         :: !Text
    , _phespssslHistoryId      :: !Text
    , _phespssslPageToken      :: !(Maybe Text)
    , _phespssslProjectId      :: !Text
    , _phespssslSampleSeriesId :: !Text
    , _phespssslPageSize       :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phespssslExecutionId'
--
-- * 'phespssslStepId'
--
-- * 'phespssslHistoryId'
--
-- * 'phespssslPageToken'
--
-- * 'phespssslProjectId'
--
-- * 'phespssslSampleSeriesId'
--
-- * 'phespssslPageSize'
projectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList
    :: Text -- ^ 'phespssslExecutionId'
    -> Text -- ^ 'phespssslStepId'
    -> Text -- ^ 'phespssslHistoryId'
    -> Text -- ^ 'phespssslProjectId'
    -> Text -- ^ 'phespssslSampleSeriesId'
    -> ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList
projectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList pPhespssslExecutionId_ pPhespssslStepId_ pPhespssslHistoryId_ pPhespssslProjectId_ pPhespssslSampleSeriesId_ =
  ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList'
    { _phespssslExecutionId = pPhespssslExecutionId_
    , _phespssslStepId = pPhespssslStepId_
    , _phespssslHistoryId = pPhespssslHistoryId_
    , _phespssslPageToken = Nothing
    , _phespssslProjectId = pPhespssslProjectId_
    , _phespssslSampleSeriesId = pPhespssslSampleSeriesId_
    , _phespssslPageSize = Nothing
    }


-- | A tool results execution ID.
phespssslExecutionId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList Text
phespssslExecutionId
  = lens _phespssslExecutionId
      (\ s a -> s{_phespssslExecutionId = a})

-- | A tool results step ID.
phespssslStepId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList Text
phespssslStepId
  = lens _phespssslStepId
      (\ s a -> s{_phespssslStepId = a})

-- | A tool results history ID.
phespssslHistoryId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList Text
phespssslHistoryId
  = lens _phespssslHistoryId
      (\ s a -> s{_phespssslHistoryId = a})

-- | Optional, the next_page_token returned in the previous response
phespssslPageToken :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList (Maybe Text)
phespssslPageToken
  = lens _phespssslPageToken
      (\ s a -> s{_phespssslPageToken = a})

-- | The cloud project
phespssslProjectId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList Text
phespssslProjectId
  = lens _phespssslProjectId
      (\ s a -> s{_phespssslProjectId = a})

-- | A sample series id
phespssslSampleSeriesId :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList Text
phespssslSampleSeriesId
  = lens _phespssslSampleSeriesId
      (\ s a -> s{_phespssslSampleSeriesId = a})

-- | The default page size is 500 samples, and the maximum size is 5000. If
-- the page_size is greater than 5000, the effective page size will be 5000
phespssslPageSize :: Lens' ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList (Maybe Int32)
phespssslPageSize
  = lens _phespssslPageSize
      (\ s a -> s{_phespssslPageSize = a})
      . mapping _Coerce

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList
         where
        type Rs
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList
             = ListPerfSamplesResponse
        type Scopes
               ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesList'{..}
          = go _phespssslProjectId _phespssslHistoryId
              _phespssslExecutionId
              _phespssslStepId
              _phespssslSampleSeriesId
              _phespssslPageToken
              _phespssslPageSize
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsPerfSampleSeriesSamplesListResource)
                      mempty
