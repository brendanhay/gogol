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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing Execution with the supplied partial entity. May
-- return any of the following canonical error codes: - PERMISSION_DENIED -
-- if the user is not authorized to write to project - INVALID_ARGUMENT -
-- if the request is malformed - FAILED_PRECONDITION - if the requested
-- state transition is illegal - NOT_FOUND - if the containing History does
-- not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.patch@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Patch
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsPatchResource

    -- * Creating a Request
    , projectsHistoriesExecutionsPatch
    , ProjectsHistoriesExecutionsPatch

    -- * Request Lenses
    , phepRequestId
    , phepExecutionId
    , phepPayload
    , phepHistoryId
    , phepProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.patch@ method which the
-- 'ProjectsHistoriesExecutionsPatch' request conforms to.
type ProjectsHistoriesExecutionsPatchResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Execution :> Patch '[JSON] Execution

-- | Updates an existing Execution with the supplied partial entity. May
-- return any of the following canonical error codes: - PERMISSION_DENIED -
-- if the user is not authorized to write to project - INVALID_ARGUMENT -
-- if the request is malformed - FAILED_PRECONDITION - if the requested
-- state transition is illegal - NOT_FOUND - if the containing History does
-- not exist
--
-- /See:/ 'projectsHistoriesExecutionsPatch' smart constructor.
data ProjectsHistoriesExecutionsPatch = ProjectsHistoriesExecutionsPatch'
    { _phepRequestId   :: !(Maybe Text)
    , _phepExecutionId :: !Text
    , _phepPayload     :: !Execution
    , _phepHistoryId   :: !Text
    , _phepProjectId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phepRequestId'
--
-- * 'phepExecutionId'
--
-- * 'phepPayload'
--
-- * 'phepHistoryId'
--
-- * 'phepProjectId'
projectsHistoriesExecutionsPatch
    :: Text -- ^ 'phepExecutionId'
    -> Execution -- ^ 'phepPayload'
    -> Text -- ^ 'phepHistoryId'
    -> Text -- ^ 'phepProjectId'
    -> ProjectsHistoriesExecutionsPatch
projectsHistoriesExecutionsPatch pPhepExecutionId_ pPhepPayload_ pPhepHistoryId_ pPhepProjectId_ =
    ProjectsHistoriesExecutionsPatch'
    { _phepRequestId = Nothing
    , _phepExecutionId = pPhepExecutionId_
    , _phepPayload = pPhepPayload_
    , _phepHistoryId = pPhepHistoryId_
    , _phepProjectId = pPhepProjectId_
    }

-- | A unique request ID for server to detect duplicated requests. For
-- example, a UUID. Optional, but strongly recommended.
phepRequestId :: Lens' ProjectsHistoriesExecutionsPatch (Maybe Text)
phepRequestId
  = lens _phepRequestId
      (\ s a -> s{_phepRequestId = a})

-- | Required.
phepExecutionId :: Lens' ProjectsHistoriesExecutionsPatch Text
phepExecutionId
  = lens _phepExecutionId
      (\ s a -> s{_phepExecutionId = a})

-- | Multipart request metadata.
phepPayload :: Lens' ProjectsHistoriesExecutionsPatch Execution
phepPayload
  = lens _phepPayload (\ s a -> s{_phepPayload = a})

-- | Required.
phepHistoryId :: Lens' ProjectsHistoriesExecutionsPatch Text
phepHistoryId
  = lens _phepHistoryId
      (\ s a -> s{_phepHistoryId = a})

-- | A Project id. Required.
phepProjectId :: Lens' ProjectsHistoriesExecutionsPatch Text
phepProjectId
  = lens _phepProjectId
      (\ s a -> s{_phepProjectId = a})

instance GoogleRequest
         ProjectsHistoriesExecutionsPatch where
        type Rs ProjectsHistoriesExecutionsPatch = Execution
        type Scopes ProjectsHistoriesExecutionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsHistoriesExecutionsPatch'{..}
          = go _phepProjectId _phepHistoryId _phepExecutionId
              _phepRequestId
              (Just AltJSON)
              _phepPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsPatchResource)
                      mempty
