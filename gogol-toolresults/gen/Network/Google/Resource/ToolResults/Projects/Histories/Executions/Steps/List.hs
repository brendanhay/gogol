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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Steps for a given Execution. The steps are sorted by creation_time
-- in descending order. The step_id key will be used to order the steps
-- with the same creation_time. May return any of the following canonical
-- error codes: - PERMISSION_DENIED - if the user is not authorized to read
-- project - INVALID_ARGUMENT - if the request is malformed -
-- FAILED_PRECONDITION - if an argument in the request happens to be
-- invalid; e.g. if an attempt is made to list the children of a
-- nonexistent Step - NOT_FOUND - if the containing Execution does not
-- exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.list@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.List
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsListResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsList
    , ProjectsHistoriesExecutionsStepsList

    -- * Request Lenses
    , pheslExecutionId
    , pheslHistoryId
    , pheslPageToken
    , pheslProjectId
    , pheslPageSize
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.list@ method which the
-- 'ProjectsHistoriesExecutionsStepsList' request conforms to.
type ProjectsHistoriesExecutionsStepsListResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     "steps" :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListStepsResponse

-- | Lists Steps for a given Execution. The steps are sorted by creation_time
-- in descending order. The step_id key will be used to order the steps
-- with the same creation_time. May return any of the following canonical
-- error codes: - PERMISSION_DENIED - if the user is not authorized to read
-- project - INVALID_ARGUMENT - if the request is malformed -
-- FAILED_PRECONDITION - if an argument in the request happens to be
-- invalid; e.g. if an attempt is made to list the children of a
-- nonexistent Step - NOT_FOUND - if the containing Execution does not
-- exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsList' smart constructor.
data ProjectsHistoriesExecutionsStepsList =
  ProjectsHistoriesExecutionsStepsList'
    { _pheslExecutionId :: !Text
    , _pheslHistoryId   :: !Text
    , _pheslPageToken   :: !(Maybe Text)
    , _pheslProjectId   :: !Text
    , _pheslPageSize    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsStepsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pheslExecutionId'
--
-- * 'pheslHistoryId'
--
-- * 'pheslPageToken'
--
-- * 'pheslProjectId'
--
-- * 'pheslPageSize'
projectsHistoriesExecutionsStepsList
    :: Text -- ^ 'pheslExecutionId'
    -> Text -- ^ 'pheslHistoryId'
    -> Text -- ^ 'pheslProjectId'
    -> ProjectsHistoriesExecutionsStepsList
projectsHistoriesExecutionsStepsList pPheslExecutionId_ pPheslHistoryId_ pPheslProjectId_ =
  ProjectsHistoriesExecutionsStepsList'
    { _pheslExecutionId = pPheslExecutionId_
    , _pheslHistoryId = pPheslHistoryId_
    , _pheslPageToken = Nothing
    , _pheslProjectId = pPheslProjectId_
    , _pheslPageSize = Nothing
    }


-- | A Execution id. Required.
pheslExecutionId :: Lens' ProjectsHistoriesExecutionsStepsList Text
pheslExecutionId
  = lens _pheslExecutionId
      (\ s a -> s{_pheslExecutionId = a})

-- | A History id. Required.
pheslHistoryId :: Lens' ProjectsHistoriesExecutionsStepsList Text
pheslHistoryId
  = lens _pheslHistoryId
      (\ s a -> s{_pheslHistoryId = a})

-- | A continuation token to resume the query at the next item. Optional.
pheslPageToken :: Lens' ProjectsHistoriesExecutionsStepsList (Maybe Text)
pheslPageToken
  = lens _pheslPageToken
      (\ s a -> s{_pheslPageToken = a})

-- | A Project id. Required.
pheslProjectId :: Lens' ProjectsHistoriesExecutionsStepsList Text
pheslProjectId
  = lens _pheslProjectId
      (\ s a -> s{_pheslProjectId = a})

-- | The maximum number of Steps to fetch. Default value: 25. The server will
-- use this default if the field is not set or has a value of 0. Optional.
pheslPageSize :: Lens' ProjectsHistoriesExecutionsStepsList (Maybe Int32)
pheslPageSize
  = lens _pheslPageSize
      (\ s a -> s{_pheslPageSize = a})
      . mapping _Coerce

instance GoogleRequest
           ProjectsHistoriesExecutionsStepsList
         where
        type Rs ProjectsHistoriesExecutionsStepsList =
             ListStepsResponse
        type Scopes ProjectsHistoriesExecutionsStepsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsList'{..}
          = go _pheslProjectId _pheslHistoryId
              _pheslExecutionId
              _pheslPageToken
              _pheslPageSize
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsStepsListResource)
                      mempty
