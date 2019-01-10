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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Executions for a given History. The executions are sorted by
-- creation_time in descending order. The execution_id key will be used to
-- order the executions with the same creation_time. May return any of the
-- following canonical error codes: - PERMISSION_DENIED - if the user is
-- not authorized to read project - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the containing History does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.list@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.List
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsListResource

    -- * Creating a Request
    , projectsHistoriesExecutionsList
    , ProjectsHistoriesExecutionsList

    -- * Request Lenses
    , phelHistoryId
    , phelPageToken
    , phelProjectId
    , phelPageSize
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.list@ method which the
-- 'ProjectsHistoriesExecutionsList' request conforms to.
type ProjectsHistoriesExecutionsListResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListExecutionsResponse

-- | Lists Executions for a given History. The executions are sorted by
-- creation_time in descending order. The execution_id key will be used to
-- order the executions with the same creation_time. May return any of the
-- following canonical error codes: - PERMISSION_DENIED - if the user is
-- not authorized to read project - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the containing History does not exist
--
-- /See:/ 'projectsHistoriesExecutionsList' smart constructor.
data ProjectsHistoriesExecutionsList = ProjectsHistoriesExecutionsList'
    { _phelHistoryId :: !Text
    , _phelPageToken :: !(Maybe Text)
    , _phelProjectId :: !Text
    , _phelPageSize  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phelHistoryId'
--
-- * 'phelPageToken'
--
-- * 'phelProjectId'
--
-- * 'phelPageSize'
projectsHistoriesExecutionsList
    :: Text -- ^ 'phelHistoryId'
    -> Text -- ^ 'phelProjectId'
    -> ProjectsHistoriesExecutionsList
projectsHistoriesExecutionsList pPhelHistoryId_ pPhelProjectId_ =
    ProjectsHistoriesExecutionsList'
    { _phelHistoryId = pPhelHistoryId_
    , _phelPageToken = Nothing
    , _phelProjectId = pPhelProjectId_
    , _phelPageSize = Nothing
    }

-- | A History id. Required.
phelHistoryId :: Lens' ProjectsHistoriesExecutionsList Text
phelHistoryId
  = lens _phelHistoryId
      (\ s a -> s{_phelHistoryId = a})

-- | A continuation token to resume the query at the next item. Optional.
phelPageToken :: Lens' ProjectsHistoriesExecutionsList (Maybe Text)
phelPageToken
  = lens _phelPageToken
      (\ s a -> s{_phelPageToken = a})

-- | A Project id. Required.
phelProjectId :: Lens' ProjectsHistoriesExecutionsList Text
phelProjectId
  = lens _phelProjectId
      (\ s a -> s{_phelProjectId = a})

-- | The maximum number of Executions to fetch. Default value: 25. The server
-- will use this default if the field is not set or has a value of 0.
-- Optional.
phelPageSize :: Lens' ProjectsHistoriesExecutionsList (Maybe Int32)
phelPageSize
  = lens _phelPageSize (\ s a -> s{_phelPageSize = a})
      . mapping _Coerce

instance GoogleRequest
         ProjectsHistoriesExecutionsList where
        type Rs ProjectsHistoriesExecutionsList =
             ListExecutionsResponse
        type Scopes ProjectsHistoriesExecutionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsHistoriesExecutionsList'{..}
          = go _phelProjectId _phelHistoryId _phelPageToken
              _phelPageSize
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsListResource)
                      mempty
