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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an Execution. May return any of the following canonical error
-- codes: - PERMISSION_DENIED - if the user is not authorized to write to
-- project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND -
-- if the Execution does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.get@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Get
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsGetResource

    -- * Creating a Request
    , projectsHistoriesExecutionsGet
    , ProjectsHistoriesExecutionsGet

    -- * Request Lenses
    , phegExecutionId
    , phegHistoryId
    , phegProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.get@ method which the
-- 'ProjectsHistoriesExecutionsGet' request conforms to.
type ProjectsHistoriesExecutionsGetResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Execution

-- | Gets an Execution. May return any of the following canonical error
-- codes: - PERMISSION_DENIED - if the user is not authorized to write to
-- project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND -
-- if the Execution does not exist
--
-- /See:/ 'projectsHistoriesExecutionsGet' smart constructor.
data ProjectsHistoriesExecutionsGet = ProjectsHistoriesExecutionsGet'
    { _phegExecutionId :: !Text
    , _phegHistoryId   :: !Text
    , _phegProjectId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phegExecutionId'
--
-- * 'phegHistoryId'
--
-- * 'phegProjectId'
projectsHistoriesExecutionsGet
    :: Text -- ^ 'phegExecutionId'
    -> Text -- ^ 'phegHistoryId'
    -> Text -- ^ 'phegProjectId'
    -> ProjectsHistoriesExecutionsGet
projectsHistoriesExecutionsGet pPhegExecutionId_ pPhegHistoryId_ pPhegProjectId_ =
    ProjectsHistoriesExecutionsGet'
    { _phegExecutionId = pPhegExecutionId_
    , _phegHistoryId = pPhegHistoryId_
    , _phegProjectId = pPhegProjectId_
    }

-- | An Execution id. Required.
phegExecutionId :: Lens' ProjectsHistoriesExecutionsGet Text
phegExecutionId
  = lens _phegExecutionId
      (\ s a -> s{_phegExecutionId = a})

-- | A History id. Required.
phegHistoryId :: Lens' ProjectsHistoriesExecutionsGet Text
phegHistoryId
  = lens _phegHistoryId
      (\ s a -> s{_phegHistoryId = a})

-- | A Project id. Required.
phegProjectId :: Lens' ProjectsHistoriesExecutionsGet Text
phegProjectId
  = lens _phegProjectId
      (\ s a -> s{_phegProjectId = a})

instance GoogleRequest ProjectsHistoriesExecutionsGet
         where
        type Rs ProjectsHistoriesExecutionsGet = Execution
        type Scopes ProjectsHistoriesExecutionsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsHistoriesExecutionsGet'{..}
          = go _phegProjectId _phegHistoryId _phegExecutionId
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsGetResource)
                      mempty
