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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Step. The returned Step will have the id set. May return any
-- of the following canonical error codes: - PERMISSION_DENIED - if the
-- user is not authorized to write to project - INVALID_ARGUMENT - if the
-- request is malformed - FAILED_PRECONDITION - if the step is too large
-- (more than 10Mib) - NOT_FOUND - if the containing Execution does not
-- exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.steps.create@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Steps.Create
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsStepsCreateResource

    -- * Creating a Request
    , projectsHistoriesExecutionsStepsCreate
    , ProjectsHistoriesExecutionsStepsCreate

    -- * Request Lenses
    , phescRequestId
    , phescExecutionId
    , phescPayload
    , phescHistoryId
    , phescProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.steps.create@ method which the
-- 'ProjectsHistoriesExecutionsStepsCreate' request conforms to.
type ProjectsHistoriesExecutionsStepsCreateResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   Capture "executionId" Text :>
                     "steps" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Step :> Post '[JSON] Step

-- | Creates a Step. The returned Step will have the id set. May return any
-- of the following canonical error codes: - PERMISSION_DENIED - if the
-- user is not authorized to write to project - INVALID_ARGUMENT - if the
-- request is malformed - FAILED_PRECONDITION - if the step is too large
-- (more than 10Mib) - NOT_FOUND - if the containing Execution does not
-- exist
--
-- /See:/ 'projectsHistoriesExecutionsStepsCreate' smart constructor.
data ProjectsHistoriesExecutionsStepsCreate = ProjectsHistoriesExecutionsStepsCreate'
    { _phescRequestId   :: !(Maybe Text)
    , _phescExecutionId :: !Text
    , _phescPayload     :: !Step
    , _phescHistoryId   :: !Text
    , _phescProjectId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsHistoriesExecutionsStepsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phescRequestId'
--
-- * 'phescExecutionId'
--
-- * 'phescPayload'
--
-- * 'phescHistoryId'
--
-- * 'phescProjectId'
projectsHistoriesExecutionsStepsCreate
    :: Text -- ^ 'phescExecutionId'
    -> Step -- ^ 'phescPayload'
    -> Text -- ^ 'phescHistoryId'
    -> Text -- ^ 'phescProjectId'
    -> ProjectsHistoriesExecutionsStepsCreate
projectsHistoriesExecutionsStepsCreate pPhescExecutionId_ pPhescPayload_ pPhescHistoryId_ pPhescProjectId_ =
    ProjectsHistoriesExecutionsStepsCreate'
    { _phescRequestId = Nothing
    , _phescExecutionId = pPhescExecutionId_
    , _phescPayload = pPhescPayload_
    , _phescHistoryId = pPhescHistoryId_
    , _phescProjectId = pPhescProjectId_
    }

-- | A unique request ID for server to detect duplicated requests. For
-- example, a UUID. Optional, but strongly recommended.
phescRequestId :: Lens' ProjectsHistoriesExecutionsStepsCreate (Maybe Text)
phescRequestId
  = lens _phescRequestId
      (\ s a -> s{_phescRequestId = a})

-- | A Execution id. Required.
phescExecutionId :: Lens' ProjectsHistoriesExecutionsStepsCreate Text
phescExecutionId
  = lens _phescExecutionId
      (\ s a -> s{_phescExecutionId = a})

-- | Multipart request metadata.
phescPayload :: Lens' ProjectsHistoriesExecutionsStepsCreate Step
phescPayload
  = lens _phescPayload (\ s a -> s{_phescPayload = a})

-- | A History id. Required.
phescHistoryId :: Lens' ProjectsHistoriesExecutionsStepsCreate Text
phescHistoryId
  = lens _phescHistoryId
      (\ s a -> s{_phescHistoryId = a})

-- | A Project id. Required.
phescProjectId :: Lens' ProjectsHistoriesExecutionsStepsCreate Text
phescProjectId
  = lens _phescProjectId
      (\ s a -> s{_phescProjectId = a})

instance GoogleRequest
         ProjectsHistoriesExecutionsStepsCreate where
        type Rs ProjectsHistoriesExecutionsStepsCreate = Step
        type Scopes ProjectsHistoriesExecutionsStepsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsHistoriesExecutionsStepsCreate'{..}
          = go _phescProjectId _phescHistoryId
              _phescExecutionId
              _phescRequestId
              (Just AltJSON)
              _phescPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsStepsCreateResource)
                      mempty
