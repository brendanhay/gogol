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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Thumbnails.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists thumbnails of images attached to a step. May return any of the
-- following canonical error codes: - PERMISSION_DENIED - if the user is
-- not authorized to read from the project, or from any of the images -
-- INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the step
-- does not exist, or if any of the images do not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.thumbnails.list@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Thumbnails.List
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsThumbnailsListResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsThumbnailsList
    , ProjectsHistoriesExecutionsStepsThumbnailsList

    -- * Request Lenses
    , phestlExecutionId
    , phestlStepId
    , phestlHistoryId
    , phestlPageToken
    , phestlProjectId
    , phestlPageSize
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.thumbnails.list@ method which the
-- 'ProjectsHistoriesExecutionsStepsThumbnailsList' request conforms to.
type ProjectsHistoriesExecutionsStepsThumbnailsListResource
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
                         "thumbnails" :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListStepThumbnailsResponse

-- | Lists thumbnails of images attached to a step. May return any of the
-- following canonical error codes: - PERMISSION_DENIED - if the user is
-- not authorized to read from the project, or from any of the images -
-- INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the step
-- does not exist, or if any of the images do not exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsThumbnailsList' smart constructor.
data ProjectsHistoriesExecutionsStepsThumbnailsList = ProjectsHistoriesExecutionsStepsThumbnailsList'
    { _phestlExecutionId :: !Text
    , _phestlStepId      :: !Text
    , _phestlHistoryId   :: !Text
    , _phestlPageToken   :: !(Maybe Text)
    , _phestlProjectId   :: !Text
    , _phestlPageSize    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsStepsThumbnailsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phestlExecutionId'
--
-- * 'phestlStepId'
--
-- * 'phestlHistoryId'
--
-- * 'phestlPageToken'
--
-- * 'phestlProjectId'
--
-- * 'phestlPageSize'
projectsHistoriesExecutionsStepsThumbnailsList
    :: Text -- ^ 'phestlExecutionId'
    -> Text -- ^ 'phestlStepId'
    -> Text -- ^ 'phestlHistoryId'
    -> Text -- ^ 'phestlProjectId'
    -> ProjectsHistoriesExecutionsStepsThumbnailsList
projectsHistoriesExecutionsStepsThumbnailsList pPhestlExecutionId_ pPhestlStepId_ pPhestlHistoryId_ pPhestlProjectId_ =
    ProjectsHistoriesExecutionsStepsThumbnailsList'
    { _phestlExecutionId = pPhestlExecutionId_
    , _phestlStepId = pPhestlStepId_
    , _phestlHistoryId = pPhestlHistoryId_
    , _phestlPageToken = Nothing
    , _phestlProjectId = pPhestlProjectId_
    , _phestlPageSize = Nothing
    }

-- | An Execution id. Required.
phestlExecutionId :: Lens' ProjectsHistoriesExecutionsStepsThumbnailsList Text
phestlExecutionId
  = lens _phestlExecutionId
      (\ s a -> s{_phestlExecutionId = a})

-- | A Step id. Required.
phestlStepId :: Lens' ProjectsHistoriesExecutionsStepsThumbnailsList Text
phestlStepId
  = lens _phestlStepId (\ s a -> s{_phestlStepId = a})

-- | A History id. Required.
phestlHistoryId :: Lens' ProjectsHistoriesExecutionsStepsThumbnailsList Text
phestlHistoryId
  = lens _phestlHistoryId
      (\ s a -> s{_phestlHistoryId = a})

-- | A continuation token to resume the query at the next item. Optional.
phestlPageToken :: Lens' ProjectsHistoriesExecutionsStepsThumbnailsList (Maybe Text)
phestlPageToken
  = lens _phestlPageToken
      (\ s a -> s{_phestlPageToken = a})

-- | A Project id. Required.
phestlProjectId :: Lens' ProjectsHistoriesExecutionsStepsThumbnailsList Text
phestlProjectId
  = lens _phestlProjectId
      (\ s a -> s{_phestlProjectId = a})

-- | The maximum number of thumbnails to fetch. Default value: 50. The server
-- will use this default if the field is not set or has a value of 0.
-- Optional.
phestlPageSize :: Lens' ProjectsHistoriesExecutionsStepsThumbnailsList (Maybe Int32)
phestlPageSize
  = lens _phestlPageSize
      (\ s a -> s{_phestlPageSize = a})
      . mapping _Coerce

instance GoogleRequest
         ProjectsHistoriesExecutionsStepsThumbnailsList where
        type Rs
               ProjectsHistoriesExecutionsStepsThumbnailsList
             = ListStepThumbnailsResponse
        type Scopes
               ProjectsHistoriesExecutionsStepsThumbnailsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsThumbnailsList'{..}
          = go _phestlProjectId _phestlHistoryId
              _phestlExecutionId
              _phestlStepId
              _phestlPageToken
              _phestlPageSize
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsHistoriesExecutionsStepsThumbnailsListResource)
                      mempty
